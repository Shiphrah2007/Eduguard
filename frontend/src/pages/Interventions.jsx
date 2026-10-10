import { useState, useEffect } from 'react';
import { useNavigate } from 'react-router-dom';
import { fetchInterventions, fetchStudentById } from '../api';

export default function Interventions() {
  const navigate = useNavigate();
  const [filterStatus, setFilterStatus] = useState('All');
  const [interventions, setInterventions] = useState([]);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const loadData = async () => {
      try {
        const data = await fetchInterventions();
        // Decorate with student names
        for (let inv of data) {
          try {
            const stu = await fetchStudentById(inv.studentId);
            inv.studentName = stu.firstName + ' ' + stu.lastName;
            inv.studentCode = stu.studentCode;
          } catch (e) {
            inv.studentName = 'Unknown Student';
          }
        }
        setInterventions(data);
      } catch (err) {
        console.error(err);
      } finally {
        setLoading(false);
      }
    };
    loadData();
  }, []);

  const filteredCases = interventions.filter(c => 
    filterStatus === 'All' || c.status === filterStatus
  );

  const getStatusColor = (status) => {
    switch(status) {
      case 'Pending': return '#f44336';
      case 'In Progress': return '#ff9800';
      case 'Resolved': return '#4caf50';
      default: return '#666';
    }
  };

  return (
    <div>
      <h1 style={{ marginTop: 0, marginBottom: '24px', color: '#2c3e50' }}>Risk Intervention Cases</h1>
      
      <div style={{ marginBottom: '24px' }}>
        <select 
          value={filterStatus} 
          onChange={(e) => setFilterStatus(e.target.value)}
          style={{ padding: '10px', borderRadius: '4px', border: '1px solid #ccc', minWidth: '200px' }}
        >
          <option value="All">All Statuses</option>
          <option value="Pending">Pending</option>
          <option value="In Progress">In Progress</option>
          <option value="Resolved">Resolved</option>
        </select>
      </div>

      <div style={{ display: 'grid', gap: '16px' }}>
        {loading ? (
          <div style={{ padding: '40px', textAlign: 'center' }}>Loading...</div>
        ) : filteredCases.map(intervention => (
          <div key={intervention.id} style={{ 
            backgroundColor: 'white', 
            padding: '24px', 
            borderRadius: '8px', 
            boxShadow: '0 2px 4px rgba(0,0,0,0.05)',
            borderLeft: `4px solid ${getStatusColor(intervention.status)}`
          }}>
            <div style={{ display: 'flex', justifyContent: 'space-between', alignItems: 'flex-start' }}>
              <div>
                <h3 style={{ margin: '0 0 8px 0', color: '#1a237e' }}>
                  {intervention.studentName} ({intervention.studentCode || intervention.studentId})
                </h3>
                <p style={{ margin: '0 0 12px 0', color: '#444' }}>{intervention.notes}</p>
                <div style={{ display: 'flex', gap: '24px', fontSize: '0.9rem', color: '#666' }}>
                  <span><strong>Assigned Faculty ID:</strong> {intervention.facultyId}</span>
                  <span><strong>Follow-up Date:</strong> {intervention.followUpDate}</span>
                </div>
              </div>
              
              <div style={{ display: 'flex', flexDirection: 'column', alignItems: 'flex-end', gap: '12px' }}>
                <span style={{ 
                  backgroundColor: getStatusColor(intervention.status), 
                  color: 'white', 
                  padding: '4px 12px', 
                  borderRadius: '16px', 
                  fontSize: '0.85rem',
                  fontWeight: 'bold'
                }}>
                  {intervention.status}
                </span>
                
                <button 
                  onClick={() => navigate(`/students/${intervention.studentId}`)}
                  style={{
                    padding: '6px 12px',
                    backgroundColor: 'transparent',
                    border: '1px solid #1a237e',
                    color: '#1a237e',
                    borderRadius: '4px',
                    cursor: 'pointer'
                  }}
                >
                  View Profile
                </button>
              </div>
            </div>
          </div>
        ))}

        {filteredCases.length === 0 && (
          <div style={{ padding: '40px', textAlign: 'center', backgroundColor: 'white', borderRadius: '8px', color: '#666' }}>
            No intervention cases found matching the current filter.
          </div>
        )}
      </div>
    </div>
  );
}
