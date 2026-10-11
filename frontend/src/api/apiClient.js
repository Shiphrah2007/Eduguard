const STUDENT_API_URL = 'http://localhost:8081/api';
const RISK_API_URL = 'http://localhost:8082/api/risk';

async function fetchJson(url, options = {}) {
  try {
    const response = await fetch(url, options);
    if (!response.ok) {
      if (response.status === 404) throw new Error("Resource not found");
      throw new Error(`API Error: ${response.status}`);
    }
    return await response.json();
  } catch (error) {
    console.error("API Request Failed:", error);
    throw error;
  }
}

export const StudentService = {
  getStudents: (page = 0, size = 20) => fetchJson(`${STUDENT_API_URL}/students?page=${page}&size=${size}`),
  getStudentHistory: (id) => fetchJson(`${STUDENT_API_URL}/students/${id}/history`),
};

export const RiskService = {
  getLatestAssessment: (studentId) => fetchJson(`${RISK_API_URL}/students/${studentId}`),
  assessStudent: (studentId) => fetchJson(`${RISK_API_URL}/assess/${studentId}`, { method: 'POST' }),
  assessCohort: (studentIds = null) => {
    const options = {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
    };
    if (studentIds) {
      options.body = JSON.stringify(studentIds);
    }
    return fetchJson(`${RISK_API_URL}/assess-cohort`, options);
  }
};
