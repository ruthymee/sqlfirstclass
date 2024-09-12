--select first 10 rows of all attributes
SELECT TOP(10) * FROM Superstore


--fetching specified column
SELECT Ship_mode, customer_name
FROM Superstore

--USING ALIASE AND CALCULATE THE UNIT PRICE OF EACH QUANTITY
SELECT product_name, customer_name as name_, (sales/Quantity) as unit_price
FROM Superstore


--USING WHERE CLAUSE
SELECT ship_mode, customer_name, product_name, city, quantity
FROM SUPERSTORE
WHERE Quantity >4;


SELECT ship_mode, customer_name, product_name, city, quantity
FROM SUPERSTORE
WHERE Quantity BETWEEN 2 AND 4;


SELECT ship_mode, customer_name, product_name, city, quantity
FROM SUPERSTORE
WHERE Quantity >=2 AND Quantity < 5


--USING WHERE CLAUSE AND LIKE OPERATOR
--start word like

SELECT ship_mode, customer_name, product_name, city, quantity
FROM SUPERSTORE
WHERE City LIKE 'A%' and Quantity < 4

--End word like
SELECT ship_mode, customer_name, product_name, city, quantity
FROM SUPERSTORE
WHERE City LIKE '%on'

--middle like
SELECT ship_mode, customer_name, product_name, city,sales, quantity
FROM SUPERSTORE
WHERE City LIKE '%_m_%'

--using IN operator find the transaction of Ken  Black, JOEL Eaton, Ryan Crowe
SELECT ship_mode, customer_name, product_name, city,sales, quantity
FROM SUPERSTORE
WHERE Customer_Name IN ('Ken Black', 'Joel Eaton', 'Ryan Crowe')

--ORDER CLAUSE IN ASC
SELECT ship_mode, customer_name, product_name, city,sales, quantity
FROM SUPERSTORE
WHERE Customer_name IN  ('Ken Black', 'Joel Eaton', 'Ryan Crowe')
ORDER BY QUANTITY ASC



--ORDER CLAUSE IN DESC
SELECT ship_mode, customer_name, product_name, city,sales, quantity
FROM SUPERSTORE
WHERE Customer_name IN  ('Ken Black', 'Joel Eaton', 'Ryan Crowe')
ORDER BY QUANTITY DESC


--GROUP BY  CLAUSE
SELECT city FROM  Superstore
Group by city

SELECT city, count(*)as customer_count FROM  Superstore
Group by city
HAVING count (*)>100;

SELECT city, SUM(Sales)AS Total_sales, MAX(Quantity) AS Max_quantity,Count(*) As 'number of transaction'
FROM Superstore
Group by city
ORDER BY Total_sales DESC




	  