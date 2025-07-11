﻿# Hospital-Management-System-SQL
This is Live project simulates a simple  Hospital Management system using SQL

# Project Description
This project is a **Hospital Management System** built using **MySQL**. It is designed to handle hospital operations like managing patients, doctors, appointments, staff, and prescriptions.

It shows how SQL can be used to design real-world database systems using joins, subqueries, and relational schema.

# Tools Used

- MySQL 
- MySQL Workbench / VS Code terminal
- SQL Queries
# Database Schema

The database includes the following main tables:

1. **Departments** – Stores hospital departments like Cardiology, Pediatrics, etc.
2. **Doctors** – Stores doctor info, linked to departments
3. **Patients** – Holds patient details like name, age, contact info
4. **Appointments** – Maps patients to doctors
5. **Prescriptions** – Details about patient medicines
6. **Staff** – Info of non-medical staff like nurses, receptionists

# Features of the Project

- Add, view, and update patient records
- Assign doctors to departments
- Schedule and manage appointments
- Track and manage staff information
- Store prescriptions given by doctors
- Use of complex SQL joins and subqueries

# Table Description

| Table Name     | Description                            |
|----------------|----------------------------------------|
| Departments    | dept_id (PK), dept_name                |
| Doctors        | doctor_id (PK), name, dept_id (FK)     |
| Patients       | patient_id (PK), name, age, gender     |
| Appointments   | app_id (PK), patient_id (FK), doctor_id (FK), date |
| Prescriptions  | pres_id (PK), app_id (FK), medicine    |
| Staff          | staff_id (PK), name, role, salary      |

# Screenshots 


![image alt](https://github.com/sonalitale/Hospital-Management-system/blob/9f127b95a9bda87004cab26531ea6287d89e5f15/ER%20Diagram.sql.png)


# Author

**Sonali Tale**  
📧 Email: talesonali03@example.com  
🔗 GitHub: [sonalitale](https://github.com/sonaliTale)

