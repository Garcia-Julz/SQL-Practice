**********************************
        CHAPTER 2 BOOK 1
**********************************


-- Write a query that returns the business name, city, state, and website for each dealership. Use an alias for the Dealerships table.

-- SELECT
-- 	d.business_name,
-- 	d.city,
-- 	d.state,
-- 	d.website
-- FROM Dealerships d


-- Write a query that returns the first name, last name, and email address of every customer. Use an alias for the Customers table.

-- SELECT 
-- 	c.first_name,
-- 	c.last_name,
-- 	c.email
-- FROM Customers c


**********************************
        CHAPTER 2 BOOK 2
**********************************

-- Get a list of sales records where the sale was a lease.

-- SELECT
-- 	purchase_date,
-- 	pickup_date,
-- 	invoice_number
-- FROM sales
-- WHERE sales_type_id = 2


-- Get a list of sales where the purchase date is within the last two years.

-- SELECT
-- 	purchase_date,
--  	pickup_date,
--  	invoice_number
-- FROM sales
-- Where purchase_date > now() - interval '2 years';

-- Get a list of sales where the deposit was above 5000 or the customer payed with American Express.

-- SELECT
-- 	deposit,
-- 	payment_method
-- FROM sales
-- WHERE deposit > 5000
-- AND payment_method = 'americanexpress'

-- Get a list of employees whose first names start with "M" or ends with "E".

-- SELECT
-- 	first_name
-- FROM employees
-- WHERE first_name LIKE 'M%' AND first_name LIKE '%e'

-- Get a list of employees whose phone numbers have the 600 area code.

-- SELECT
--  	phone,
-- 	first_name
-- FROM employees
-- WHERE phone LIKE '600%'

**********************************
        CHAPTER 2 BOOK 3
**********************************

-- Get a list of the sales that was made for each sales type.

-- SELECT
-- 	t.name
-- 	invoice_number,
-- 	purchase_date,
-- 	price
-- FROM
-- 	sales
-- INNER JOIN salestypes t
--     ON t.sales_type_id = sales.sales_type_id
-- ORDER BY t.name;

-- Get a list of sales with the VIN of the vehicle, the first name and last name of the customer, first name and last name 
-- of the employee who made the sale and the name, city and state of the dealership.

-- SELECT
-- 	v.vin,
-- 	c.first_name,
-- 	c.last_name,
-- 	e.first_name,
-- 	e.last_name,
-- 	d.business_name,
-- 	d.city,
-- 	d.state
-- FROM
-- 	sales
-- JOIN vehicles v
--     ON v.vehicle_id = sales.vehicle_id
-- JOIN employees e
-- 	ON e.employee_id = sales.employee_id
-- JOIN dealerships d
-- 	ON d.dealership_id = sales.dealership_id
-- JOIN customers c
-- 	ON c.customer_id = sales.customer_id
-- ORDER BY v.vin

-- Get a list of all the dealerships and the employees, if any, working at each one.

-- SELECT
-- 	e.first_name,
-- 	e.last_name,
-- 	d.business_name
-- FROM
-- 	dealerships d
-- LEFT JOIN employees e
-- 	ON e.dealership_id = d.dealership_id
-- ORDER BY d.business_name

-- Get a list of vehicles with the names of the body type, make, model and color.


**********************************
        CHAPTER 2 BOOK 4
**********************************


SELECT d.business_name, st.name, COUNT(s.sale_id) as number_of_sales
FROM dealerships d
JOIN sales s ON d.dealership_id = s.dealership_id
JOIN salestypes st ON s.sales_type_id = st.sales_type_id
GROUP BY d.dealership_id, st.sales_type_id
ORDER BY d.dealership_id




**********************************
        CHAPTER 8 BOOK 4
**********************************



-- Write a query that shows the purchase sales income per dealership for the current month.

-- SELECT
-- 	d.business_name,
-- 	s.sales_type_id AS num_purchases,
-- 	COUNT(s.sale_id) AS num_sales,
-- 	SUM(s.price) AS income
-- FROM sales s
-- JOIN dealerships d ON d.dealership_id = s.dealership_id
-- JOIN salestypes st ON s.sales_type_id = st.sales_type_id
-- WHERE st.sales_type_id = 1
-- GROUP BY s.sales_type_id, d.business_name
-- ORDER BY SUM(s.price) DESC;

-- Write a query that shows the purchase sales income per dealership for the current year.
