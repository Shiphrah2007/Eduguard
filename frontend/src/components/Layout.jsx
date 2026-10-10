import { NavLink, Outlet } from 'react-router-dom';
import '../App.css'; // Reusing existing styles

export default function Layout() {
  return (
    <div className="erp-container">
      {/* Sidebar Navigation */}
      <aside className="erp-sidebar">
        <div className="erp-brand">
          <h2>EduGuard ERP</h2>
          <span className="badge">v1.0</span>
        </div>
        <nav className="erp-nav">
          <NavLink 
            to="/dashboard"
            className={({ isActive }) => isActive ? 'active' : ''}
          >
            Dashboard
          </NavLink>
          <NavLink 
            to="/students"
            className={({ isActive }) => isActive ? 'active' : ''}
          >
            Student Directory
          </NavLink>
          <NavLink 
            to="/interventions"
            className={({ isActive }) => isActive ? 'active' : ''}
          >
            Risk Intervention
          </NavLink>
          <NavLink 
            to="/reports"
            className={({ isActive }) => isActive ? 'active' : ''}
          >
            Reports
          </NavLink>
        </nav>
      </aside>

      {/* Main Content Area */}
      <main className="erp-main">
        <header className="erp-header">
          <div className="search-bar">
            {/* Header search placeholder */}
          </div>
          <div className="user-profile" style={{ position: 'relative' }}>
            <div 
              style={{ display: 'flex', alignItems: 'center', gap: '12px', cursor: 'pointer' }}
              onClick={() => {
                const menu = document.getElementById('admin-menu');
                menu.style.display = menu.style.display === 'none' ? 'block' : 'none';
              }}
            >
              <div style={{ textAlign: 'right' }}>
                <div style={{ fontWeight: 'bold', color: '#2c3e50' }}>Admin</div>
                <div style={{ fontSize: '0.8rem', color: '#666' }}>admin123@gmail.com</div>
              </div>
              <div className="avatar" style={{ backgroundColor: '#1a237e' }}>A</div>
            </div>
            
            {/* Dropdown Menu */}
            <div 
              id="admin-menu"
              style={{
                display: 'none',
                position: 'absolute',
                top: '100%',
                right: 0,
                marginTop: '8px',
                backgroundColor: 'white',
                border: '1px solid #eee',
                borderRadius: '4px',
                boxShadow: '0 2px 8px rgba(0,0,0,0.1)',
                minWidth: '150px',
                zIndex: 100
              }}
            >
              <div style={{ padding: '12px', borderBottom: '1px solid #eee', cursor: 'pointer' }}
                   onMouseOver={e => e.target.style.backgroundColor = '#f5f5f5'}
                   onMouseOut={e => e.target.style.backgroundColor = 'transparent'}>
                Admin Profile
              </div>
              <div 
                style={{ padding: '12px', cursor: 'pointer', color: '#d32f2f' }}
                onMouseOver={e => e.target.style.backgroundColor = '#f5f5f5'}
                onMouseOut={e => e.target.style.backgroundColor = 'transparent'}
                onClick={() => {
                  localStorage.removeItem('isAuthenticated');
                  window.location.href = '/login';
                }}
              >
                Logout
              </div>
            </div>
          </div>
        </header>

        <div className="erp-content">
          <Outlet />
        </div>
      </main>
    </div>
  );
}
