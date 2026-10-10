import { useState, useEffect } from 'react';
import { useParams, useNavigate } from 'react-router-dom';
import { LineChart, Line, XAxis, YAxis, CartesianGrid, Tooltip, ResponsiveContainer } from 'recharts';
import { fetchStudentById, fetchStudentOverallAttendance, fetchStudentHistory, fetchRiskProfile } from '../api';

export default function StudentProfile() {
  const { studentId } = useParams();
  const navigate = useNavigate();
  
  const [student, setStudent] = useState(null);
  const [attendance, setAttendance] = useState(0);
  const [history, setHistory] = useState([]);
  const [riskData, setRiskData] = useState({ riskLevel: 'Low', riskScore: 0, riskFactors: '', supportActions: '' });
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const loadData = async () => {
      setLoading(true);
      try {
        const [studentData, attData, histData, riskResponse] = await Promise.all([
          fetchStudentById(studentId),
          fetchStudentOverallAttendance(studentId),
          fetchStudentHistory(studentId),
          fetchRiskProfile(studentId).catch(() => ({ riskLevel: 'Low', riskScore: 0, riskFactors: '', supportActions: '' }))
        ]);
        setStudent(studentData);
        setAttendance(Math.round(attData));
        setHistory(histData.map(h => ({ semester: h.semester, gpa: h.gpa })));
        setRiskData(riskResponse);
      } catch (err) {
        console.error(err);
      } finally {
        setLoading(false);
      }
    };
    loadData();
  }, [studentId]);

  if (loading) return <div style={{ padding: '40px', textAlign: 'center' }}>Loading...</div>;

  if (!student) {
    return (
      <div style={{ padding: '40px', textAlign: 'center' }}>
        <h2>Student not found</h2>
        <button onClick={() => navigate('/students')} style={{ padding: '8px 16px', cursor: 'pointer' }}>Back to Directory</button>
      </div>
    );
  }

  const getRiskColor = (tier) => {
    switch(tier) {
      case 'High': return '#f44336';
      case 'Medium': return '#ff9800';
      case 'Low': return '#4caf50';
      default: return '#666';
    }
  };

  return (
    <div>
      <div style={{ display: 'flex', alignItems: 'center', marginBottom: '24px' }}>
        <button 
          onClick={() => navigate('/students')}
          style={{ marginRight: '16px', padding: '8px 16px', cursor: 'pointer', backgroundColor: '#e0e0e0', border: 'none', borderRadius: '4px' }}
        >
          &larr; Back
        </button>
        <h1 style={{ margin: 0, color: '#2c3e50' }}>{student.firstName} {student.lastName}</h1>
        <span style={{ 
          marginLeft: '16px',
          backgroundColor: getRiskColor(riskData.riskLevel), 
          color: 'white', 
          padding: '4px 12px', 
          borderRadius: '16px', 
          fontSize: '0.9rem',
          fontWeight: 'bold'
        }}>
          {riskData.riskLevel} Risk ({riskData.riskScore}%)
        </span>
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '24px', marginBottom: '24px' }}>
        <div style={{ backgroundColor: 'white', padding: '24px', borderRadius: '8px', boxShadow: '0 2px 4px rgba(0,0,0,0.05)' }}>
          <h2 style={{ marginTop: 0, fontSize: '1.2rem', borderBottom: '1px solid #eee', paddingBottom: '12px' }}>Academic Summary</h2>
          <p><strong>Code:</strong> {student.studentCode}</p>
          <p><strong>Department:</strong> {student.department}</p>
          <p><strong>Current Semester:</strong> {student.currentSemester}</p>
          <p><strong>Overall Attendance:</strong> {attendance}%</p>
        </div>

        <div style={{ backgroundColor: 'white', padding: '24px', borderRadius: '8px', boxShadow: '0 2px 4px rgba(0,0,0,0.05)' }}>
          <h2 style={{ marginTop: 0, fontSize: '1.2rem', borderBottom: '1px solid #eee', paddingBottom: '12px' }}>Explainable Risk Factors & Support</h2>
          
          <h3 style={{ fontSize: '1rem', color: '#f44336', marginTop: '16px' }}>Identified Risks</h3>
          {riskData.riskFactors && riskData.riskFactors !== 'None' ? (
            <ul style={{ paddingLeft: '20px', margin: '8px 0' }}>
              {riskData.riskFactors.split(';').map((factor, i) => <li key={i}>{factor}</li>)}
            </ul>
          ) : (
            <p style={{ color: '#666' }}>No immediate risk factors identified.</p>
          )}

          <h3 style={{ fontSize: '1rem', color: '#1a237e', marginTop: '16px' }}>Suggested Actions</h3>
          {riskData.supportActions ? (
            <ul style={{ paddingLeft: '20px', margin: '8px 0' }}>
              {riskData.supportActions.split(';').map((action, i) => <li key={i}>{action}</li>)}
            </ul>
          ) : (
            <p style={{ color: '#666' }}>Maintain current academic trajectory.</p>
          )}
        </div>
      </div>

      <div style={{ backgroundColor: 'white', padding: '24px', borderRadius: '8px', boxShadow: '0 2px 4px rgba(0,0,0,0.05)' }}>
        <h2 style={{ marginTop: 0, fontSize: '1.2rem', borderBottom: '1px solid #eee', paddingBottom: '12px' }}>Semester-wise GPA History</h2>
        <div style={{ height: '300px', marginTop: '24px' }}>
          <ResponsiveContainer width="100%" height="100%">
            <LineChart data={history}>
              <CartesianGrid strokeDasharray="3 3" />
              <XAxis dataKey="semester" label={{ value: 'Semester', position: 'insideBottomRight', offset: 0 }} />
              <YAxis domain={[0, 4]} label={{ value: 'GPA', angle: -90, position: 'insideLeft' }} />
              <Tooltip />
              <Line type="monotone" dataKey="gpa" stroke="#1a237e" strokeWidth={3} activeDot={{ r: 8 }} />
            </LineChart>
          </ResponsiveContainer>
        </div>
      </div>
    </div>
  );
}
