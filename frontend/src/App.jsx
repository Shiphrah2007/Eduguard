import { BrowserRouter, Routes, Route, Navigate, Outlet } from 'react-router-dom';
import Landing from './pages/Landing';
import Login from './pages/Login';
import Dashboard from './pages/Dashboard';
import Students from './pages/Students';
import StudentProfile from './pages/StudentProfile';
import Interventions from './pages/Interventions';
import Reports from './pages/Reports';
import PerformanceView from './pages/PerformanceView';
import Layout from './components/Layout';
import './App.css';

function ProtectedRoute() {
  const isAuthenticated = localStorage.getItem('isAuthenticated') === 'true';
  return isAuthenticated ? <Outlet /> : <Navigate to="/login" replace />;
}

function App() {
  return (
    <BrowserRouter>
      <Routes>
        <Route path="/" element={<Landing />} />
        <Route path="/login" element={<Login />} />
        
        <Route element={<ProtectedRoute />}>
          <Route element={<Layout />}>
            <Route path="/dashboard" element={<Dashboard />} />
            <Route path="/students" element={<Students />} />
            <Route path="/students/:studentId" element={<StudentProfile />} />
            <Route path="/interventions" element={<Interventions />} />
            <Route path="/reports" element={<Reports />} />
            <Route path="/reports/performance/:studentId" element={<PerformanceView />} />
          </Route>
        </Route>
        
        <Route path="*" element={<Navigate to="/" replace />} />
      </Routes>
    </BrowserRouter>
  );
}

export default App;
