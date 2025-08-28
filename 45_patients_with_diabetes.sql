-- ============================================================
-- Problem: Patients With Type I Diabetes
-- ============================================================

-- Table Structure
DROP TABLE IF EXISTS Patients;
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY,
    patient_name VARCHAR(50),
    conditions VARCHAR(255)
);

-- Sample Data (optional)
INSERT INTO Patients VALUES
(1, 'Alice', 'DIAB100 MYOP'),
(2, 'Bob', 'ACNE DIAB100'),
(3, 'Charlie', 'COLD'),
(4, 'David', 'DIAB101'),
(5, 'Eva', 'HEART DIAB199');

-- Solution Query
SELECT patient_id,
       patient_name,
       conditions
FROM Patients
WHERE conditions LIKE 'DIAB1%'
   OR conditions LIKE '% DIAB1%';
