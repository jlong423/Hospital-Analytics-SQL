-- ============================
--   HOSPITAL ANALYTICS SCHEMA
-- ============================

-- Drop tables if they exist (for resetting)
DROP TABLE IF EXISTS Patients;
DROP TABLE IF EXISTS Doctors;
DROP TABLE IF EXISTS Visits;
DROP TABLE IF EXISTS Medications;
DROP TABLE IF EXISTS Prescriptions;




-- ============================
--   PATIENTS
-- ============================
CREATE TABLE Patients (
    patient_id      INT PRIMARY KEY,
    name            VARCHAR(100) NOT NULL,
    age             INT CHECK (age >= 0),
    gender          VARCHAR(10) CHECK (gender IN ('Male', 'Female', 'Other')),
    created_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ============================
--   DOCTORS
-- ============================
CREATE TABLE Doctors (
    doctor_id       INT PRIMARY KEY,
    name            VARCHAR(100) NOT NULL,
    specialty       VARCHAR(50) NOT NULL,
    created_at      TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- ============================
--   VISITS
-- ============================
CREATE TABLE Visits (
    visit_id        INT PRIMARY KEY,
    patient_id      INT NOT NULL,
    doctor_id       INT NOT NULL,
    visit_date      DATE NOT NULL,
    diagnosis       VARCHAR(255),
    cost            DECIMAL(10,2) CHECK (cost >= 0),

    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id),
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id)
);

-- ============================
--   MEDICATIONS
-- ============================
CREATE TABLE Medications (
    medication_id   INT PRIMARY KEY,
    name            VARCHAR(100) NOT NULL,
    type            VARCHAR(50) NOT NULL
);

-- ============================
    PRESCRIPTIONS
-- ============================
CREATE TABLE Prescriptions (
    prescription_id INT PRIMARY KEY,
    visit_id        INT NOT NULL,
    medication_id   INT NOT NULL,
    dosage          VARCHAR(50) NOT NULL,

    FOREIGN KEY (visit_id) REFERENCES Visits(visit_id),
    FOREIGN KEY (medication_id) REFERENCES Medications(medication_id)
);

-- ============================
INDEXES (for performance)
-- ============================

-- Speed up patient visit lookups
CREATE INDEX idx_visits_patient ON Visits(patient_id);

-- Speed up doctor analytics
CREATE INDEX idx_visits_doctor ON Visits(doctor_id);

-- Speed up medication usage queries
CREATE INDEX idx_prescriptions_med ON Prescriptions(medication_id);

-- Speed up diagnosis analytics
CREATE INDEX idx_visits_diagnosis ON Visits(diagnosis);
