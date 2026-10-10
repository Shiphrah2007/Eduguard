import { useNavigate } from 'react-router-dom';

export default function Landing() {
  const navigate = useNavigate();

  return (
    <div style={{
      display: 'flex', 
      flexDirection: 'column', 
      alignItems: 'center', 
      justifyContent: 'center', 
      height: '100vh',
      backgroundColor: '#f4f6f8',
      fontFamily: 'sans-serif'
    }}>
      <h1 style={{ color: '#1a237e', marginBottom: '8px' }}>Welcome to EduGuard</h1>
      <p style={{ color: '#666', marginBottom: '48px' }}>Select your institution type to continue</p>
      
      <div style={{ display: 'flex', gap: '24px' }}>
        <div 
          onClick={() => navigate('/login')}
          style={{
            backgroundColor: 'white',
            padding: '40px',
            borderRadius: '12px',
            boxShadow: '0 4px 6px rgba(0,0,0,0.1)',
            cursor: 'pointer',
            textAlign: 'center',
            width: '240px',
            border: '2px solid transparent',
            transition: 'border-color 0.2s'
          }}
          onMouseOver={(e) => e.currentTarget.style.borderColor = '#1a237e'}
          onMouseOut={(e) => e.currentTarget.style.borderColor = 'transparent'}
        >
          <h2 style={{ color: '#1a237e', marginTop: 0 }}>College / University</h2>
          <p style={{ color: '#666', fontSize: '0.9rem', marginBottom: 0 }}>
            Higher education ERP portal
          </p>
        </div>

        <div 
          onClick={() => alert('School portal is Coming Soon!')}
          style={{
            backgroundColor: 'white',
            padding: '40px',
            borderRadius: '12px',
            boxShadow: '0 4px 6px rgba(0,0,0,0.1)',
            cursor: 'pointer',
            textAlign: 'center',
            width: '240px',
            opacity: 0.8
          }}
        >
          <h2 style={{ color: '#666', marginTop: 0 }}>K-12 School</h2>
          <p style={{ color: '#999', fontSize: '0.9rem', marginBottom: 0 }}>
            Coming Soon
          </p>
        </div>
      </div>
    </div>
  );
}
