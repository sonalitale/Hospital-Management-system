/*Insert data into table tbl_Department*/

select * from Departments;

INSERT INTO Departments(Department_id,Name)
values
(1,'Cardiology'),
(2,'Ophthalmology'),
(3,'Dermetology'),
(4,'Neurology'),
(5,'Orthopedics');

/*Insert data into table tbl_Doctors*/
SELECT * FROM Doctors;

INSERT INTO Doctors(Doctor_id ,Name ,Specialization ,Department_id)
values
(1,'Dr.Agrawal','Cardiologist',1),
(2,'Dr.jain','Ophthalmologist',2),
(3,'Dr.verma','Dermetologist',3),
(4,'DR.Rajput','Neurologist',4),
(5,'Dr.Gurjar','orthopedics',5);

/*Insert data into table tbl_Patients*/
SELECT * FROM patients;

INSERT INTO Patients(Patient_id ,Name ,Age ,Gender ,Contect)
VALUES
(1, 'Ravikishan', 29, 'male', 9926724874),
(2, 'Radha Bai', 45, 'Female',9926724844),
(3, 'Radheshyam', 56, 'male', 9826624874),
(4, 'Shyama', 21, 'Female',8926724824),
(5, 'Mohan', 18, 'male', 9926724866),
(6, 'Sapna', 31, 'Female',8146725844),
(7, 'Neha', 56, 'Female', 9626624872),
(8, 'shree', 8, 'Female',8926724824);

/*Insert data into table tbl_Appointments*/

SELECT * FROM Appointments;

INSERT INTO Appointments(Appointment_id ,Patient_id  ,Doctor_id ,Appointment_Date,Reason)
VALUES
(1,1,1,'2025-06-10', 'Chest Pain'),
(2,2,4,'2025-06-1', 'skin Problem'),
(3,3,2,'2025-05-31', 'Eye Probkem'),
(4,4,4,'2025-04-10', 'Brain Problem'),
(5,5,5, '2025-05-15', 'Bone Problem');

/*Insert data into table tbl_Prescriptions*/

select * from Prescriptions;

INSERT INTO Prescriptions(Prescription_id,Appointment_id ,Medicine_Name ,Dosage)
VALUES
(1,1,'Aspirin', '1 tablet daily '),
(2,2,'Ibuprofen', '1 tablet twice a day'),
(3,3,'painkiller', '1 tablet daily'),
(4,4,'paracetamole', '1 tablet for night'),
(5,5 , 'painkiller', '1 tablet daily');

/*Insert data into table tbl_Staff*/
INSERT INTO Staff(Name, Role, contact, Salary)
VALUES 
('sita Das','Nurse', 7001584251, 35000),
('Amit jain','Receptionsist', 8695584251, 25000),
('ram Das','securityguard', 8001584225, 15000);

/*Insert data into table tbl_Bills*/

INSERT INTO Bills(Patient_id, Amount , Bill_Date , Description)
VALUES 
(1, 500.00, '2025-06-28', 'consultation fee'),
(2, 750.00, '2025-06-10', 'Neurology check_up'),
(3, 500.00, '2025-06-20', 'Eye check_up '),
(4, 500.00, '2025-06-28', 'orthopedics check_up ');
