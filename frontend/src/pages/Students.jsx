import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { fetchStudents, fetchRiskProfile } from '../api';

export default function Students() {
  const navigate = useNavigate();
  const [students, setStudents] = useState([]);
  const [searchTerm, setSearchTerm] = useState('');
  const [filterRisk, setFilterRisk] = useState('All');
  const [loading, setLoading] = useState(true);
  const [page, setPage] = useState(0);
  const [totalPages, setTotalPages] = useState(1);

  useEffect(() => {
    const loadData = async () => {
      setLoading(true);
      try {
        const data = await fetchStudents({ page, size: 20, search: searchTerm });
        const fetchedStudents = data.content;
        
        for (let s of fetchedStudents) {
          try {
            const riskData = await fetchRiskProfile(s.id);
            s.riskTier = riskData.riskLevel;
          } catch (e) {
            s.riskTier = 'Low';
          }
        }
        
        setStudents(fetchedStudents);
        setTotalPages(data.totalPages);
      } catch (err) {
        console.error(err);
      } finally {
        setLoading(false);
      }
    };
    loadData();
  }, [searchTerm, page]);

  const getRiskColor = (tier) => {
    switch(tier) {
      case 'High': return '#f44336';
      case 'Medium': return '#ff9800';
      case 'Low': return '#4caf50';
      default: return '#666';
    }
  };

  const filteredStudents = students.filter(student => {
    // API does search, but we handle risk filtering locally for now 
    // since risk isn't stored purely in the DB yet in Phase 4 (it belongs to risk service)
    const matchesRisk = filterRisk === 'All' || student.riskTier === filterRisk;
    return matchesRisk;
  });

  return (
    <div>
      <h1 style={{ marginTop: 0, marginBottom: '24px', color: '#2c3e50' }}>Student Directory</h1>
      
      <div style={{ display: 'flex', gap: '16px', marginBottom: '24px' }}>
        <input 
          type="text" 
          placeholder="Search by name or registration number..." 
          value={searchTerm}
          onChange={(e) => setSearchTerm(e.target.value)}
          style={{ flex: 1, padding: '10px', borderRadius: '4px', border: '1px solid #ccc' }}
        />
        <select 
          value={filterRisk} 
          onChange={(e) => setFilterRisk(e.target.value)}
          style={{ padding: '10px', borderRadius: '4px', border: '1px solid #ccc' }}
        >
          <option value="All">All Risk Levels</option>
          <option value="High">High Risk</option>
          <option value="Medium">Medium Risk</option>
          <option value="Low">Low Risk</option>
        </select>
      </div>

      <div style={{ backgroundColor: 'white', borderRadius: '8px', boxShadow: '0 2px 4px rgba(0,0,0,0.05)', overflow: 'hidden' }}>
        <table style={{ width: '100%', borderCollapse: 'collapse', textAlign: 'left' }}>
          <thead>
            <tr style={{ backgroundColor: '#f8f9fa', borderBottom: '2px solid #eee' }}>
              <th style={{ padding: '16px' }}>Code</th>
              <th style={{ padding: '16px' }}>Student Name</th>
              <th style={{ padding: '16px' }}>Department</th>
              <th style={{ padding: '16px' }}>Semester</th>
              <th style={{ padding: '16px' }}>Risk Tier</th>
            </tr>
          </thead>
          <tbody>
            {loading ? (
              <tr><td colSpan="5" style={{ padding: '24px', textAlign: 'center' }}>Loading...</td></tr>
            ) : filteredStudents.map(student => (
              <tr 
                key={student.id} 
                onClick={() => navigate(`/students/${student.id}`)}
                style={{ borderBottom: '1px solid #eee', cursor: 'pointer', transition: 'background-color 0.2s' }}
                onMouseOver={(e) => e.currentTarget.style.backgroundColor = '#f5f5f5'}
                onMouseOut={(e) => e.currentTarget.style.backgroundColor = 'transparent'}
              >
                <td style={{ padding: '16px' }}>{student.studentCode}</td>
                <td style={{ padding: '16px', fontWeight: 'bold' }}>{student.firstName} {student.lastName}</td>
                <td style={{ padding: '16px' }}>{student.department}</td>
                <td style={{ padding: '16px' }}>{student.currentSemester}</td>
                <td style={{ padding: '16px' }}>
                  <span style={{ 
                    backgroundColor: getRiskColor(student.riskTier || 'Low'), 
                    color: 'white', 
                    padding: '4px 8px', 
                    borderRadius: '12px', 
                    fontSize: '0.8rem',
                    fontWeight: 'bold'
                  }}>
                    {student.riskTier || 'Low'}
                  </span>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
        {!loading && filteredStudents.length === 0 && (
          <div style={{ padding: '24px', textAlign: 'center', color: '#666' }}>No students found matching your criteria.</div>
        )}
      </div>
    </div>
  );
}
