--CLASS COLLABORATION EXERCISE----


--I'VE ADDED ANOTHER TABLE CALLED shipping Take a Look and Explore–


--ANSWER THE QUESTIONS THAT FOLLOW USING THE WALMART SCHEMA---
select * from walmart.shipping
select * from walmart.orders
select * from walmart.products
select * from walmart.customers


--sketch a new entity relationship diagram for all 4 tables in the walmart schema and paste the picture here—




--How many unique shipping services are there? —
select distinct shipping_service from walmart.shipping s 




--Is it clear how many days it takes to ship via First Class? if yes how many days? —


--How many orders have '2014' in their order_id—
select count(distinct customer_id) from walmart.customers c






--how many unique customers are there?---




--get total sales by order_date
ELECT order_date, SUM(sales) AS total_sales
FROM walmart.orders
GROUP BY order_date
ORDER BY 2;






--which product is the most expensive–


SELECT product_name, sales, quantity, sales / quantity as price FROM products, orders ORDER BY price DESC LIMIT 1;


select max(sales/quantity)as Product_price from walmart.orders


--how many orders were placed with total sales between 50 and 100–
select count(distinct order_id) as number_of_orders from orders where sales between 50 and 100;


--get total sales by segment—
select sum(sales)from walmart.orders o
group by segment;




--get total quantity by ship_mode–
select ship_mode, sum(quantity) as Total_quantity_shiped from orders o group by ship_mode




--write a query to get order_id, product_id, ship_mode, ship_service–


select product_id,s.order_id, o.ship_mode, shipping_service from walmart.orders o
join walmart.shipping s on o.order_id = s.order_id




------GET the unique order_id, customer_id, customer_name, product_ids and sum of quantities they ordered–
select distinct order_id, o.customer_id, customer_name, product_id, sum(quantity)as total_quantity_ordered from walmart.orders o
join walmart.customers c on o.customer_id = c.customer_id
group by order_id, o.customer_id, customer_name, product_id






---GET all shipping information, along with the unique order_id, customer_id, customer_name, product_name and sum of sales —
select distinct s.shipping_id, s.ship_date, s.ship_mode, delivery_date, shipping_service, o.order_id, o.customer_id, customer_name, product_name, sum(sales)as total_sales from walmart.orders o
join walmart.products p on o.product_id = p.product_id
join walmart.customers c on o.customer_id = c.customer_id
join walmart.shipping s on o.order_id = s.order_id
group by o.order_id, o.customer_id, customer_name, product_name, s.shipping_id, s.ship_date, s.ship_mode, delivery_date, shipping_service











SECOND SET OF SQL EXERCISES

--use the schools schema to answer the questions below---
--LIST ALL THE UNIQUE PROGRAMS IN THE SCHOOL–






--GET COUNT OF STUDENTS BY NATIONALITY—


SELECT Nationality, COUNT(*) AS StudentCount
FROM Students
GROUP BY Nationality;
W


--GET COUNT OF STUDENTS BY RACE AND GENDER—






---WHICH STUDENTS EXCELLED IN MATHS—


---WHICH RACE HAD THE HIGHEST AVERAGE ENGLISH GRADE—




--GET A REPORT OF STUDENT NAME, RACE, NATIONALITY, PROGRAM AND THEIR LANGUAGE GRADES–


--GET AVERAGE GRADES FOR ALL PROGRAMS FOR MATHS AND SCIENCE—




--GET	 AVERAGE AGE BY GENDER–


--GET AVERAGE ENGLISH GRADE BY RACE–


--GET A REPORT ON STUDENTS PROGRAMS AND AVERAGE MATHS GRADE–


–-CAN YOU TELL WHO IS THE BEST STUDENT?--





