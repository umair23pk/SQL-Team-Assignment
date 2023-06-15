USE sql_store;

SELECT * FROM customers;

SELECT * FROM customers
WHERE customer_id=1
ORDER BY first_name;

##Task 1

SELECT * FROM customers;
SELECT last_name, first_name, points, points + 10
FROM customers;
SELECT last_name, first_name, points, (points * 10) + 100
FROM customers;
SELECT last_name, first_name, points, (points * 10) + 100 as Discount_factor
FROM customers;



##Task 2

SELECT * FROM products;
SELECT name, unit_price, (unit_price * 1.1) as New_Price
FROM products;



##Task 3

SELECT customer_id, first_name, last_name, birth_date FROM customers
WHERE birth_date > '1990-01-01';



##Task 4 Individual written queries;

## 1-Write a query to show  complete record of customers where their last name starts with M?
## 2- Write a query to show the customer table where the points column is descending?
## 3- Write a query to show records from order items where quantity is more then and equal to 3 and unit price is less then 9
## and show unit price in ascending order?
##4- Write a query to show the total sum of quantity in stock column?
##5- Write a query to show the records in orders table where commments has been given?


##1.
SELECT * FROM customers WHERE last_name LIKE "M%";


##2.
SELECT * FROM customers ORDER BY points DESC;


##3.
SELECT * FROM order_items
WHERE quantity >= "3" AND unit_price < "9"
ORDER BY unit_price ASC;


##4.
SELECT SUM(quantity_in_stock) FROM products;


##5.
select * from orders
where comments IS NOT NULL;