my name is Ruth 
ALTER TABLE STUDENT_info
ADD CONTACT VARCHAR(20)

select * from student_info

INSERT INTO STUDENT_INFO 
VALUES(1,'shade',20,'2024-02-14',5,'08130679435'),
      (2,'tobi',23,'2024-02-14',10,'08130679435'),
	  (3,'soji',35,'2024-02-14',15,'08130679435'),
	  (4,'AWWAL',42,'2024-02-14',20,'08130679435'),
	  (5,'EMMANUEL',35,'2024-02-14',25,'08130679435')


INSERT INTO department_table
VALUES(5,'Statistics'),
		(10, 'Software Design'),
		(15, 'Database'),
		(20, 'percentage'),
		(25, 'Datatype')


	  --DROPPING DEPARTMENT TABLE
	  drop table department_table

	  ALTER TABLE department_table
	  drop constraint [UQ__departme__226ED1575555C3D6]

	  ALTER TABLE student_info
	  drop constraint [UQ__student___870C3C8B2E4F65FC]

 SELECT* FROM DEPARTMENT_TABLE
 SELECT* FROM STUDENT_INFO

 --INSERTING WITH DEFAULT REG DATE
 INSERT INTO student_info (student_id,student_name,age,department_id,contact)
 VALUES(6,'RUTH',27,25,'08175442013'),
        (7,'DEBORAH',31,15,'08176611817')

		--MULTIPLE VALUE UPDATE
		UPDATE Student_info
		set department_id=20
		Where student_id IN (4,5);

		--SINGLE VALUE UPDATE
		update student_info
		set contact='08060267586'
		where student_id=3


		--USE CASE STATEMENT TO UPDATE MULTIPLE ROWS
		UPDATE student_info
		SET contact =CASE
		WHEN student_id=1 THEN '08164216674'
		WHEN student_id=2 THEN '08023467298'
		WHEN student_id=3 THEN '07035872982'
		WHEN student_id=4 THEN '09068891720'
		WHEN student_id=5 THEN '08051578810'
		ELSE contact
		END
		WHERE student_id in (1,2,3,4,5)

		--DELETE OPERATION
		DELETE FROM student_info
		WHERE student_id=2
 
 SELECT* FROM student_info

	  