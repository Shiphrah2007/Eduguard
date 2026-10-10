// API Client for EduGuard

const BASE_URL = 'http://localhost:8081/api';
const RISK_URL = 'http://localhost:8082/api';

export const fetchStudents = async (params = {}) => {
  const query = new URLSearchParams(params).toString();
  const res = await fetch(`${BASE_URL}/students?${query}`);
  if (!res.ok) throw new Error('Failed to fetch students');
  return res.json();
};

export const fetchStudentById = async (id) => {
  const res = await fetch(`${BASE_URL}/students/${id}`);
  if (!res.ok) throw new Error('Failed to fetch student');
  return res.json();
};

export const fetchStudentAttendance = async (id) => {
  const res = await fetch(`${BASE_URL}/students/${id}/attendance`);
  if (!res.ok) throw new Error('Failed to fetch attendance');
  return res.json();
};

export const fetchStudentOverallAttendance = async (id) => {
  const res = await fetch(`${BASE_URL}/students/${id}/attendance/overall`);
  if (!res.ok) throw new Error('Failed to fetch overall attendance');
  return res.json();
};

export const fetchStudentAssessments = async (id) => {
  const res = await fetch(`${BASE_URL}/students/${id}/assessments`);
  if (!res.ok) throw new Error('Failed to fetch assessments');
  return res.json();
};

export const fetchStudentHistory = async (id) => {
  const res = await fetch(`${BASE_URL}/students/${id}/history`);
  if (!res.ok) throw new Error('Failed to fetch history');
  return res.json();
};

export const fetchRiskProfile = async (id) => {
  const res = await fetch(`${RISK_URL}/students/${id}/risk`);
  if (!res.ok) return { riskLevel: 'Low', notes: 'No risk data available.' };
  return res.json();
};

export const fetchInterventions = async () => {
  const res = await fetch(`${RISK_URL}/interventions`);
  if (!res.ok) throw new Error('Failed to fetch interventions');
  return res.json();
};

export const fetchStudentInterventions = async (id) => {
  const res = await fetch(`${RISK_URL}/students/${id}/interventions`);
  if (!res.ok) throw new Error('Failed to fetch student interventions');
  return res.json();
};
