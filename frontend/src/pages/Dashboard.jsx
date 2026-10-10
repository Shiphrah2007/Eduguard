import { useState, useEffect } from 'react';
import { PieChart, Pie, Cell, Tooltip, ResponsiveContainer } from 'recharts';
import { fetchStudents, fetchInterventions, fetchRiskProfile } from '../api';

export default function Dashboard() {
  const [totalStudents, setTotalStudents] = useState(0);
  const [riskDistribution, setRiskDistribution] = useState([]);
  const [loading, setLoading] = useState(true);
  const [pendingInterventions, setPendingInterventions] = useState(0);

  useEffect(() => {
    const loadData = async () => {
      try {
        const [studentsData, interventionsData] = await Promise.all([
          fetchStudents({ page: 0, size: 1000 }),
          fetchInterventions().catch(() => []) // fallback if risk service fails
        ]);
        
        const students = studentsData.content;
        setTotalStudents(students.length);
        
        setPendingInterventions(interventionsData.filter(i => i.status === 'Pending').length);
        
        // Let's just fetch risk levels for all students manually (inefficient but works for 20 students)
        let highRisk = 0, mediumRisk = 0, lowRisk = 0;
        
        for (let s of students) {
          const riskData = await fetchRiskProfile(s.id);
          s.riskTier = riskData.riskLevel;
          if (s.riskTier === 'High') highRisk++;
          else if (s.riskTier === 'Medium') mediumRisk++;
          else lowRisk++;
        }

        setRiskDistribution([
          { name: 'Low Risk', value: lowRisk, color: '#4caf50' },
          { name: 'Medium Risk', value: mediumRisk, color: '#ff9800' },
          { name: 'High Risk', value: highRisk, color: '#f44336' }
        ].filter(r => r.value > 0));
      } catch (err) {
        console.error(err);
      } finally {
        setLoading(false);
      }
    };
    loadData();
  }, []);


  if (loading) return <div className="dashboard-view"><p>Loading...</p></div>;

  const highRisk = riskDistribution.find(r => r.name === 'High Risk')?.value || 0;
  const mediumRisk = riskDistribution.find(r => r.name === 'Medium Risk')?.value || 0;

  return (
    <div className="dashboard-view">
      <h1>Dashboard Overview</h1>
      <p style={{ color: '#666', marginBottom: '24px', fontStyle: 'italic', fontSize: '0.9rem' }}>
        * Note: Data displayed is synthetic demonstration data.
      </p>
      <div className="stats-grid">
        <div className="stat-card">
          <h3>Total Enrolled</h3>
          <p className="stat-value">{totalStudents.toLocaleString()}</p>
        </div>
        <div className="stat-card" style={{ borderLeftColor: '#f44336' }}>
          <h3>High Risk Students</h3>
          <p className="stat-value" style={{ color: '#f44336' }}>{highRisk}</p>
        </div>
        <div className="stat-card" style={{ borderLeftColor: '#ff9800' }}>
          <h3>Medium Risk Students</h3>
          <p className="stat-value" style={{ color: '#ff9800' }}>{mediumRisk}</p>
        </div>
        <div className="stat-card">
          <h3>Pending Interventions</h3>
          <p className="stat-value">{pendingInterventions}</p>
        </div>
      </div>

      <div style={{ display: 'grid', gridTemplateColumns: '1fr 1fr', gap: '24px' }}>
        <div className="recent-activity">
          <h2>Risk Distribution</h2>
          <div style={{ height: '300px' }}>
            <ResponsiveContainer width="100%" height="100%">
              <PieChart>
                <Pie
                  data={riskDistribution}
                  cx="50%"
                  cy="50%"
                  outerRadius={100}
                  dataKey="value"
                  label
                >
                  {riskDistribution.map((entry, index) => (
                    <Cell key={`cell-${index}`} fill={entry.color} />
                  ))}
                </Pie>
                <Tooltip />
              </PieChart>
            </ResponsiveContainer>
          </div>
        </div>

        <div className="recent-activity">
          <h2>Recent Alerts</h2>
          <ul className="activity-list">
            <li><strong>Warning:</strong> High risk flag for James Rodriguez (Attendance: 68%)</li>
            <li><strong>Action Required:</strong> {pendingInterventions} interventions pending review</li>
            <li><strong>System:</strong> Midterm grades imported successfully</li>
          </ul>
        </div>
      </div>
    </div>
  );
}
