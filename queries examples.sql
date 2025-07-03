SELECT a.appointment_id, p.name AS patient_name, d.name AS doctor_name, a.appointment_date
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id;


SELECT p.name, SUM(b.amount) AS total_bill
FROM Billing b
JOIN Patients p ON b.patient_id = p.patient_id
GROUP BY p.name;

SELECT name 
FROM Patients 
WHERE patient_id IN (
    SELECT patient_id 
    FROM Bills
    WHERE amount < 1000
);
SELECT d.name AS doctor_name, a.appointment_date
FROM Doctors d
LEFT JOIN Appointments a ON d.doctor_id = a.doctor_id;

SELECT a.appointment_id, p.name AS patient_name, d.name AS doctor_name, pr.medicine_name
FROM Appointments a
JOIN Patients p ON a.patient_id = p.patient_id
JOIN Doctors d ON a.doctor_id = d.doctor_id
JOIN Prescriptions pr ON a.appointment_id = pr.appointment_id
WHERE a.appointment_id IN (
    SELECT appointment_id 
    FROM Prescriptions 
    WHERE medicine_name = 'Paracetamol'
);
