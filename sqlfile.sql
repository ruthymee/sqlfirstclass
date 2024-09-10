CREATE TABLE student(
student_id INT PRIMARY KEY,
student_name VARCHAR(30) NOT NULL,
age INT CHECK(age >=18),
reg_date DATE DEFAULT GETDATE(),
department_id INT );

CREATE TABLE department_table(
      department_id INT PRIMARY KEY,
	  department_name VARCHAR(20) UNIQUE
	  );
--Initiating foreign key constraint to department_id student tables

ALTER TABLE student_info
ADD CONSTRAINT department_key FOREIGN KEY (department_id) REFERENCES department_table(department_id)

--Add columns to student_info
ALTER TABLE student_info
ADD CONTACT VARCHAR(30) UNIQUE


DROP TABLE student

CREATE TABLE student_info(
student_id INT PRIHAR(30) NOT NULL,
age INT CHECK(age >=18),
reg_date DATE DEFAULT GEMARY KEY,
student_name VARCTDATE(),
department_id INT );