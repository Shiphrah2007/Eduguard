// Synthetic demonstration data for EduGuard Phase 2.
// Note: These records and risk scores are purely mock data for UI testing 
// and do NOT represent validated real-world dropout probabilities or real students.

export const MOCK_STUDENTS = [
  {
    id: 'STU001',
    name: 'Emma Thompson',
    registrationNumber: 'REG2023001',
    department: 'Computer Science',
    semester: 4,
    attendance: 92,
    gpa: 3.8,
    riskTier: 'Low',
    history: [
      { semester: 1, gpa: 3.7 },
      { semester: 2, gpa: 3.9 },
      { semester: 3, gpa: 3.8 },
    ],
    assessments: [
      { subject: 'Data Structures', score: 95 },
      { subject: 'Algorithms', score: 88 },
    ],
    riskFactors: [],
    supportActions: []
  },
  {
    id: 'STU002',
    name: 'James Rodriguez',
    registrationNumber: 'REG2023045',
    department: 'Mechanical Engineering',
    semester: 4,
    attendance: 68,
    gpa: 2.1,
    riskTier: 'High',
    history: [
      { semester: 1, gpa: 3.0 },
      { semester: 2, gpa: 2.6 },
      { semester: 3, gpa: 2.3 },
    ],
    assessments: [
      { subject: 'Thermodynamics', score: 55 },
      { subject: 'Fluid Mechanics', score: 60 },
    ],
    riskFactors: ['Attendance below 70%', 'Declining GPA trend over 3 semesters'],
    supportActions: ['Schedule immediate academic counseling', 'Peer tutoring recommendation']
  },
  {
    id: 'STU003',
    name: 'Sarah Chen',
    registrationNumber: 'REG2023089',
    department: 'Business Administration',
    semester: 2,
    attendance: 85,
    gpa: 2.8,
    riskTier: 'Medium',
    history: [
      { semester: 1, gpa: 2.9 },
    ],
    assessments: [
      { subject: 'Accounting', score: 72 },
      { subject: 'Marketing', score: 78 },
    ],
    riskFactors: ['Borderline GPA', 'Recent drop in attendance'],
    supportActions: ['Send check-in email', 'Suggest study group joining']
  },
  {
    id: 'STU004',
    name: 'Michael Chang',
    registrationNumber: 'REG2023102',
    department: 'Computer Science',
    semester: 4,
    attendance: 95,
    gpa: 3.9,
    riskTier: 'Low',
    history: [
      { semester: 1, gpa: 3.8 },
      { semester: 2, gpa: 3.8 },
      { semester: 3, gpa: 3.9 },
    ],
    assessments: [],
    riskFactors: [],
    supportActions: []
  },
  {
    id: 'STU005',
    name: 'Emily Davis',
    registrationNumber: 'REG2023155',
    department: 'Mechanical Engineering',
    semester: 3,
    attendance: 75,
    gpa: 2.5,
    riskTier: 'Medium',
    history: [
      { semester: 1, gpa: 2.8 },
      { semester: 2, gpa: 2.6 },
    ],
    assessments: [],
    riskFactors: ['Declining GPA'],
    supportActions: ['Academic advising']
  }
];

export const MOCK_INTERVENTIONS = [
  {
    id: 'INT-001',
    studentId: 'STU002',
    studentName: 'James Rodriguez',
    status: 'Pending',
    assignedFaculty: 'Prof. Davis',
    followUpDate: '2026-10-15',
    description: 'High risk alert triggered due to attendance drop.'
  },
  {
    id: 'INT-002',
    studentId: 'STU003',
    studentName: 'Sarah Chen',
    status: 'In Progress',
    assignedFaculty: 'Dr. Miller',
    followUpDate: '2026-10-12',
    description: 'Medium risk: requires academic check-in.'
  },
  {
    id: 'INT-003',
    studentId: 'STU005',
    studentName: 'Emily Davis',
    status: 'Resolved',
    assignedFaculty: 'Prof. Davis',
    followUpDate: '2026-09-30',
    description: 'Initial meeting completed. Student agreed to tutoring.'
  }
];
