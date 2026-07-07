/*CREATE DATABASE PayrollDataBase;
USE PayrollDataBase;
SHOW TABLES;
CREATE TABLE EmployeesInfo(
emp_id INT PRIMARY KEY AUTO_INCREMENT, 
emp_code CHAR(6) NOT NULL,
Name VARCHAR (50) NOT NULL,
Gender ENUM("Male", "Female"),
Department ENUM("Sales", "Development", "Research", "Logistics", "Marketing", "Purchase","Support" ) NOT NULL,
City VARCHAR(20) NOT NULL DEFAULT "Nashik",
Exprience CHAR(2)NOT NULL,
BasicSalary DECIMAL(10,2) NOT NULL,
HRA DECIMAL(10,2) NOT NULL,
DA DECIMAL(10,2) NOT NULL,
Incentive FLOAT DEFAULT 0,
TaxPercent DECIMAL(5,2) DEFAULT 10.00,
Description TEXT,
DateOfBirth DATE NOT NULL,
HireDate DATE NOT NULL,
SignInTime TIME,
Expertise SET("Excel", "SQL", "Power BI", "Python", "Tableau", "R", "C++"),
Activestatus BOOLEAN DEFAULT TRUE,
CreatedOn TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO EmployeesInfo
(emp_code, Name, Gender, Department, City, Exprience, BasicSalary, HRA, DA, Incentive, TaxPercent, Description, DateOfBirth, HireDate, SignInTime, Expertise, ActiveStatus)
VALUES

('EMP001','Aarav Sharma','Male','Development','Nashik','02',35000.00,7000.00,3500.00,1500,10.00,'Junior Developer','2001-05-14','2024-01-15','09:05:00','SQL,Python',TRUE),

('EMP002','Priya Patil','Female','Sales','Pune','04',42000.00,8400.00,4200.00,2500,10.00,'Sales Executive','1998-08-10','2022-06-20','09:15:00','Excel,Power BI',TRUE),

('EMP003','Rohan Deshmukh','Male','Research','Mumbai','06',55000.00,11000.00,5500.00,3000,12.00,'Research Analyst','1996-11-18','2020-02-10','08:55:00','Excel,SQL,Python',TRUE),

('EMP004','Sneha Joshi','Female','Marketing','Nashik','03',40000.00,8000.00,4000.00,2000,10.00,'Marketing Executive','1999-02-22','2023-03-01','09:10:00','Excel,Tableau',TRUE),

('EMP005','Aditya Kulkarni','Male','Support','Aurangabad','05',47000.00,9400.00,4700.00,1800,10.00,'Technical Support','1997-07-09','2021-07-12','09:00:00','Excel,SQL',TRUE),

('EMP006','Neha Pawar','Female','Development','Nagpur','07',65000.00,13000.00,6500.00,4500,12.00,'Senior Developer','1994-04-16','2019-01-08','08:45:00','SQL,Python,C++',TRUE),

('EMP007','Karan Mehta','Male','Purchase','Nashik','08',60000.00,12000.00,6000.00,3500,10.00,'Purchase Officer','1993-10-05','2018-09-18','09:20:00','Excel',TRUE),

('EMP008','Pooja Singh','Female','Logistics','Pune','04',43000.00,8600.00,4300.00,1600,10.00,'Logistics Coordinator','1998-12-30','2022-05-10','09:00:00','Excel,Power BI',TRUE),

('EMP009','Rahul Verma','Male','Development','Mumbai','09',72000.00,14400.00,7200.00,6000,15.00,'Software Engineer','1992-03-12','2017-04-05','08:50:00','SQL,Python,C++',TRUE),

('EMP010','Anjali Gupta','Female','Sales','Delhi','05',48000.00,9600.00,4800.00,3200,10.00,'Sales Manager','1996-09-21','2021-11-15','09:05:00','Excel,Power BI,Tableau',TRUE),

('EMP011','Vikas Patil','Male','Research','Nashik','10',80000.00,16000.00,8000.00,7000,15.00,'Research Lead','1991-01-18','2016-06-13','08:40:00','Excel,SQL,Python,R',TRUE),

('EMP012','Meera Shah','Female','Marketing','Surat','03',39000.00,7800.00,3900.00,1500,10.00,'Content Marketer','2000-06-14','2023-08-21','09:10:00','Excel,Tableau',TRUE),

('EMP013','Sahil More','Male','Support','Nashik','02',34000.00,6800.00,3400.00,1000,10.00,'Support Executive','2001-11-01','2024-02-05','09:25:00','Excel',TRUE),

('EMP014','Kavita Jadhav','Female','Development','Pune','06',61000.00,12200.00,6100.00,4200,12.00,'Backend Developer','1995-08-27','2020-09-15','08:55:00','SQL,Python',FALSE),

('EMP015','Nikhil Shinde','Male','Purchase','Mumbai','05',50000.00,10000.00,5000.00,2500,10.00,'Purchase Executive','1997-02-11','2021-10-10','09:00:00','Excel,SQL',TRUE),

('EMP016','Riya Kapoor','Female','Development','Nashik','01',30000.00,6000.00,3000.00,800,10.00,'Trainee Developer','2002-05-09','2025-01-20','09:30:00','Python',TRUE),

('EMP017','Harsh Yadav','Male','Logistics','Indore','04',45000.00,9000.00,4500.00,1700,10.00,'Warehouse Executive','1998-04-25','2022-04-11','09:05:00','Excel',TRUE),

('EMP018','Komal Patil','Female','Research','Nashik','07',67000.00,13400.00,6700.00,4800,12.00,'Data Analyst','1994-12-19','2019-06-17','08:45:00','Excel,SQL,Power BI,Python',FALSE),

('EMP019','Yash Chavan','Male','Marketing','Pune','03',41000.00,8200.00,4100.00,1800,10.00,'SEO Executive','1999-07-13','2023-02-06','09:10:00','Excel,Power BI',FALSE),

('EMP020','Sakshi Naik','Female','Sales','Nagpur','06',56000.00,11200.00,5600.00,3500,10.00,'Sales Officer','1995-09-08','2020-11-23','08:55:00','Excel,SQL',TRUE),

('EMP021','Mohit Jain','Male','Support','Delhi','05',49000.00,9800.00,4900.00,2200,10.00,'Customer Support','1997-10-15','2021-09-01','09:00:00','Excel,SQL',TRUE),

('EMP022','Isha Kulkarni','Female','Development','Nashik','08',70000.00,14000.00,7000.00,5000,15.00,'Full Stack Developer','1993-03-20','2018-03-19','08:40:00','SQL,Python,C++',TRUE),

('EMP023','Akash Patil','Male','Purchase','Pune','04',46000.00,9200.00,4600.00,1800,10.00,'Inventory Officer','1998-01-30','2022-08-01','09:20:00','Excel',TRUE),

('EMP024','Pallavi More','Female','Marketing','Mumbai','05',51000.00,10200.00,5100.00,2600,10.00,'Marketing Manager','1996-06-18','2021-04-14','09:00:00','Excel,Power BI,Tableau',TRUE),

('EMP025','Abhishek Kale','Male','Development','Nashik','09',76000.00,15200.00,7600.00,6500,15.00,'Senior Software Engineer','1992-08-29','2017-01-09','08:35:00','SQL,Python,C++,Power BI',TRUE),

('EMP026','Tanvi Desai','Female','Research','Pune','02',36000.00,7200.00,3600.00,1200,10.00,'Research Assistant','2001-01-17','2024-03-11','09:15:00','Excel,R',TRUE),

('EMP027','Deepak Mishra','Male','Sales','Lucknow','07',62000.00,12400.00,6200.00,4500,12.00,'Regional Sales Executive','1994-11-23','2019-12-02','08:50:00','Excel,Power BI',TRUE),

('EMP028','Shruti Patil','Female','Support','Nashik','03',40000.00,8000.00,4000.00,1500,10.00,'Help Desk Executive','1999-05-05','2023-06-12','09:10:00','Excel,SQL',TRUE),

('EMP029','Amit Bhosale','Male','Logistics','Aurangabad','06',58000.00,11600.00,5800.00,3000,10.00,'Logistics Manager','1995-02-07','2020-07-27','08:55:00','Excel,SQL,Power BI',TRUE),

('EMP030','Simran Kaur','Female','Development','Chandigarh','05',54000.00,10800.00,5400.00,2800,10.00,'Application Developer','1997-12-11','2021-02-18','09:00:00','SQL,Python,Tableau',TRUE);

SELECT * FROM EmployeesInfo;
SELECT Name FROM EmployeesInfo
ORDER BY Name ASC ;*/
SELECT * FROM EmployeesInfo;