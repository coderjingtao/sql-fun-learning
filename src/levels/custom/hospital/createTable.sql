CREATE TABLE if not exists hospital_appointments (
    appointment_id INT PRIMARY KEY,
    patient_id INT,
    patient_name VARCHAR(50),
    patient_age INT,
    patient_gender CHAR(1),
    department VARCHAR(30),
    doctor_name VARCHAR(50),
    appointment_date DATE,
    appointment_time VARCHAR(20),
    registration_fee DECIMAL(5,2),
    is_emergency INT,
    visit_type VARCHAR(20)
);

INSERT INTO hospital_appointments (appointment_id, patient_id, patient_name, patient_age, patient_gender, department, doctor_name, appointment_date, appointment_time, registration_fee, is_emergency, visit_type) VALUES
-- Internal Medicine
(1, 1001, 'John Smith', 45, 'M', 'Internal Medicine', 'Dr. Williams', '2024-01-02', 'Morning', 30.00, 0, 'First Visit'),
(2, 1002, 'Mary Johnson', 38, 'F', 'Internal Medicine', 'Dr. Brown', '2024-01-02', 'Afternoon', 30.00, 1, 'First Visit'),
(3, 1003, 'Robert Davis', 52, 'M', 'Internal Medicine', 'Dr. Williams', '2024-01-03', 'Morning', 30.00, 0, 'Follow-up'),
(4, 1004, 'Jennifer Wilson', 41, 'F', 'Internal Medicine', 'Dr. Miller', '2024-01-03', 'Morning', 30.00, 0, 'First Visit'),
(5, 1005, 'Michael Moore', 35, 'M', 'Internal Medicine', 'Dr. Brown', '2024-01-04', 'Afternoon', 30.00, 1, 'First Visit'),
(6, 1006, 'Sarah Taylor', 48, 'F', 'Internal Medicine', 'Dr. Williams', '2024-01-04', 'Morning', 30.00, 0, 'Follow-up'),
(7, 1007, 'David Anderson', 43, 'M', 'Internal Medicine', 'Dr. Miller', '2024-01-05', 'Morning', 30.00, 0, 'First Visit'),
(8, 1008, 'Lisa Thomas', 39, 'F', 'Internal Medicine', 'Dr. Brown', '2024-01-05', 'Afternoon', 30.00, 0, 'First Visit'),

-- Surgery
(11, 1011, 'James Jackson', 28, 'M', 'Surgery', 'Dr. White', '2024-01-02', 'Morning', 50.00, 1, 'First Visit'),
(12, 1012, 'Emily Harris', 33, 'F', 'Surgery', 'Dr. Martin', '2024-01-02', 'Afternoon', 50.00, 0, 'First Visit'),
(13, 1013, 'Daniel Thompson', 45, 'M', 'Surgery', 'Dr. White', '2024-01-03', 'Morning', 50.00, 1, 'First Visit'),
(14, 1014, 'Amanda Garcia', 29, 'F', 'Surgery', 'Dr. Robinson', '2024-01-03', 'Afternoon', 50.00, 0, 'Follow-up'),
(15, 1015, 'Christopher Lee', 38, 'M', 'Surgery', 'Dr. Martin', '2024-01-04', 'Morning', 50.00, 0, 'First Visit'),
(16, 1016, 'Michelle Clark', 42, 'F', 'Surgery', 'Dr. White', '2024-01-04', 'Morning', 50.00, 1, 'First Visit'),

-- Pediatrics
(21, 1021, 'Tommy Brown', 8, 'M', 'Pediatrics', 'Dr. Adams', '2024-01-02', 'Morning', 25.00, 0, 'First Visit'),
(22, 1022, 'Sophie Wilson', 5, 'F', 'Pediatrics', 'Dr. Adams', '2024-01-02', 'Afternoon', 25.00, 1, 'First Visit'),
(23, 1023, 'Jack Miller', 12, 'M', 'Pediatrics', 'Dr. Nelson', '2024-01-03', 'Morning', 25.00, 0, 'Follow-up'),
(24, 1024, 'Emma Davis', 6, 'F', 'Pediatrics', 'Dr. Adams', '2024-01-03', 'Afternoon', 25.00, 0, 'First Visit'),
(25, 1025, 'Oliver Taylor', 10, 'M', 'Pediatrics', 'Dr. Nelson', '2024-01-04', 'Morning', 25.00, 1, 'First Visit'),
(26, 1026, 'Mia Anderson', 7, 'F', 'Pediatrics', 'Dr. Adams', '2024-01-04', 'Afternoon', 25.00, 0, 'First Visit'),
(27, 1027, 'Lucas Thomas', 9, 'M', 'Pediatrics', 'Dr. Nelson', '2024-01-05', 'Morning', 25.00, 0, 'Follow-up'),

-- Obstetrics
(31, 1031, 'Rachel Green', 28, 'F', 'Obstetrics', 'Dr. Hall', '2024-01-02', 'Morning', 40.00, 0, 'First Visit'),
(32, 1032, 'Monica Geller', 32, 'F', 'Obstetrics', 'Dr. Hall', '2024-01-02', 'Afternoon', 40.00, 1, 'First Visit'),
(33, 1033, 'Phoebe Buffay', 25, 'F', 'Obstetrics', 'Dr. Young', '2024-01-03', 'Morning', 40.00, 0, 'Follow-up'),
(34, 1034, 'Joey Tribbiani', 35, 'F', 'Obstetrics', 'Dr. Hall', '2024-01-03', 'Morning', 40.00, 0, 'First Visit'),
(35, 1035, 'Ross Geller', 29, 'F', 'Obstetrics', 'Dr. Young', '2024-01-04', 'Afternoon', 40.00, 0, 'First Visit'),

-- Orthopedics
(41, 1041, 'William King', 65, 'M', 'Orthopedics', 'Dr. Wright', '2024-01-02', 'Morning', 45.00, 0, 'First Visit'),
(42, 1042, 'Elizabeth Scott', 58, 'F', 'Orthopedics', 'Dr. Wright', '2024-01-02', 'Afternoon', 45.00, 1, 'First Visit'),
(43, 1043, 'Charles Hill', 62, 'M', 'Orthopedics', 'Dr. Turner', '2024-01-03', 'Morning', 45.00, 0, 'Follow-up'),
(44, 1044, 'Margaret Adams', 59, 'F', 'Orthopedics', 'Dr. Wright', '2024-01-03', 'Morning', 45.00, 0, 'First Visit'),

-- Ophthalmology
(51, 1051, 'Alex Turner', 22, 'M', 'Ophthalmology', 'Dr. Phillips', '2024-01-02', 'Morning', 35.00, 0, 'First Visit'),
(52, 1052, 'Emma Stone', 20, 'F', 'Ophthalmology', 'Dr. Phillips', '2024-01-02', 'Afternoon', 35.00, 0, 'First Visit'),
(53, 1053, 'Ryan Gosling', 24, 'M', 'Ophthalmology', 'Dr. Phillips', '2024-01-03', 'Morning', 35.00, 0, 'Follow-up');
