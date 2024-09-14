--join Query using inner join
--select the table to view the attributes in the in the entities
SELECT * FROM sales_rescord

SELECT * FROM product_record

SELECT customer, units_sold, product_name, price, s.product_id
FROM sales_rescord AS s 
JOIN
product_record AS p ON s.product_id=p.Product_id

--CALCULATE THE AMOUNT EARN IN EACH TRANSACTION AND ORDER
SELECT customer, units_sold, price, production_cost, (units_sold * price) AS Selling_price,
(units_sold * production_cost) AS production_price, (units_sold * price)-(units_sold * Production_cost) AS profit
FROM sales_rescord s
JOIN
Product_record p ON s.Product_id=p.Product_id



SELECT product_name, SUM((units_sold *price)) AS total_sales_per_product, 
SUM((units_sold *Production_cost)) AS Production_cost,
SUM(((units_sold *price)-(units_sold *Production_cost))) AS PROFIT
FROM sales_rescord s
JOIN product_record p ON s.Product_id=p.Product_id
GROUP BY Product_name
ORDER BY PROFIT DESC

--Calculate the profit made from each product
SELECT product_name, SUM(((units_sold *price)-(units_sold *Production_cost))) AS PROFIT 
FROM sales_rescord s
JOIN product_record p ON s.Product_id=p.Product_id
GROUP BY Product_name
ORDER BY PROFIT DESC

--LEFT JOIN
SELECT Customer, p.product_id, product_name
FROM product_record p
LEFT JOIN sales_rescord s
ON p.Product_id=s.Product_id


--Using leftjoin find the department name of each student

SELECT * FROM student_info

SELECT department_name, student_name, department_table.department_id
FROM department_table
LEFT JOIN student_info
ON  department_table.department_id=student_info.department_id
 
 --Right join
 SELECT department_name, student_name, department_table.department_id
 FROM department_table
 RIGHT JOIN student_info
 ON department_table.department_id=student_info.department_id

 --Full outer join
 SELECT department_name, student_name, department_table.department_id
 FROM department_table
 FULL OUTER JOIN student_info
 ON department_table.department_id=student_info.department_id

 SELECT department_name, student_name, department_table.department_id
 FROM department_table
 INNER JOIN student_info
 ON department_table.department_id=student_info.department_id