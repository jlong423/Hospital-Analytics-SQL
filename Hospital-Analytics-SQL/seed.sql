-- ============================
--   SEED DATA FOR HOSPITAL DB
-- ============================

-- Clear existing data
TRUNCATE TABLE Prescriptions CASCADE;
TRUNCATE TABLE Medications CASCADE;
TRUNCATE TABLE Visits CASCADE;
TRUNCATE TABLE Doctors CASCADE;
TRUNCATE TABLE Patients CASCADE;

-- ============================
--  PATIENTS
-- ============================
INSERT INTO Patients (patient_id, name, age, gender) VALUES
(1, 'John Carter', 34, 'Male'),
(2, 'Emily Stone', 28, 'Female'),
(3, 'Michael Brown', 45, 'Male'),
(4, 'Sarah Johnson', 52, 'Female'),
(5, 'David Wilson', 63, 'Male'),
(6, 'Olivia Martinez', 19, 'Female'),
(7, 'James Lee', 40, 'Male'),
(8, 'Sophia Davis', 31, 'Female');

-- ============================
--  DOCTORS
-- ============================
INSERT INTO Doctors (doctor_id, name, specialty) VALUES
(1, 'Dr. Amanda Blake', 'Cardiology'),
(2, 'Dr. Robert King', 'Neurology'),
(3, 'Dr. Linda Chen', 'General Medicine'),
(4, 'Dr. Mark Thompson', 'Orthopedics'),
(5, 'Dr. Karen Patel', 'Pediatrics');

-- ============================
--   MEDICATIONS
-- ============================
INSERT INTO Medications (medication_id, name, type) VALUES
(1, 'Atorvastatin', 'Cholesterol'),
(2, 'Lisinopril', 'Blood Pressure'),
(3, 'Metformin', 'Diabetes'),
(4, 'Ibuprofen', 'Pain Relief'),
(5, 'Amoxicillin', 'Antibiotic'),
(6, 'Sertraline', 'Antidepressant');

-- ============================
--   VISITS
-- ============================
INSERT INTO Visits (visit_id, patient_id, doctor_id, visit_date, diagnosis, cost) VALUES
(1, 1, 1, '2024-01-12', 'High Cholesterol', 250.00),
(2, 2, 3, '2024-02-03', 'Flu Symptoms', 120.00),
(3, 3, 2, '2024-02-18', 'Migraine', 300.00),
(4, 4, 4, '2024-03-01', 'Knee Pain', 450.00),
(5, 5, 1, '2024-03-15', 'Heart Palpitations', 600.00),
(6, 6, 5, '2024-04-10', 'Seasonal Allergies', 90.00),
(7, 7, 3, '2024-04-22', 'Routine Checkup', 150.00),
(8, 8, 2, '2024-05-05', 'Anxiety', 200.00),
(9, 1, 3, '2024-05-20', 'Back Pain', 180.00),
(10, 2, 1, '2024-06-01', 'Chest Tightness', 500.00);

-- ============================
--   PRESCRIPTIONS
-- ============================
INSERT INTO Prescriptions (prescription_id, visit_id, medication_id, dosage) VALUES
(1, 1, 1, '10mg daily'),
(2, 2, 5, '500mg twice daily'),
(3, 3, 4, '200mg as needed'),
(4, 4, 4, '400mg twice daily'),
(5, 5, 2, '20mg daily'),
(6, 6, 5, '250mg twice daily'),
(7, 7, 4, '200mg as needed'),
(8, 8, 6, '50mg daily'),
(9, 9, 4, '200mg twice daily'),
(10, 10, 2, '10mg daily');
