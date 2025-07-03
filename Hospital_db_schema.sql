/*Createing new database with the name hosp_mngmt_system*/

CREATE DATABASE Hospital_management_system; 
use Hospital_management_system;

/*Createing new table with the name tbl_Departments consisting of department_id & department_name*/

CREATE TABLE Departments(
Department_id INT auto_increment PRIMARY KEY,
Name varchar(100));

/*Createing new table with the name tbl_Doctors consisting of doctor_id , doctor_name , Specialization & Department_id*/

CREATE TABLE Doctors(
Doctor_id INT auto_increment PRIMARY KEY,
Name varchar(100),
Specialization VARCHAR(100),
Department_id INT ,
FOREIGN KEY (Department_id)
REFERENCES Departments(Department_id)
);

/*Createing new table with the name tbl_Patients consisting of Patient_id , Patient_name , Patient_Age , Patient_Gender & contect*/

CREATE TABLE Patients(
Patient_id INT auto_increment PRIMARY KEY,
Name VARCHAR(100),
Age int,
Gender VARCHAR(50),
Contect VARCHAR(100)
);

/*Createing new table with the name tbl_Appointments consisting of Appointment_id , patient_id , Doctor_id , Appointment_Date , reason ,*/

CREATE TABLE Appointments(
Appointment_id INT auto_increment PRIMARY KEY,
Patient_id INT ,
Doctor_id INT,
Appointment_Date DATE,
Reason varchar(500),
constraint foreign key  (Patient_id)
REFERENCES Patients(Patient_id),
constraint FOREIGN KEY (Doctor_id)
REFERENCES Doctors(Doctor_id)
);

/*Createing new table with the name tbl_Prescriptions consisting of Prescription_id , Appointment_id ,Medicine_Name , Dosage*/

CREATE TABLE Prescriptions(
Prescription_id INT auto_increment PRIMARY KEY,
Appointment_id INT ,
Medicine_Name VARCHAR(500),
Dosage VARCHAR(50),
constraint FOREIGN KEY (Appointment_id)
REFERENCES Appointments(Appointment_id));

 /*Createing new table with the name tbl_Staff consisting of Staff_id , Staff_name , staff_role , contect & salary*/
 
 CREATE TABLE Staff(
Staff_id INT auto_increment PRIMARY KEY,
Name varchar(200),
Role VARCHAR(100),
contact int,
Salary decimal(10,2)
);
 
  /*Createing new table with the name tbl_Bills consisting of Bill_ID , Patient_id , Amount , Bill_Date & Descrription*/
 
 CREATE TABLE Bills(
Bill_ID INT auto_increment PRIMARY KEY,
Patient_id INT ,
Amount decimal(10,2),
Bill_Date Date,
Descrription TEXT,
constraint foreign key  (Patient_id)
REFERENCES Patients(Patient_id)
);