--Select all records from the table customers
SELECT * FROM customers;

--SELECT records only from the name column in the Customers table.
SELECT firstname FROM customers;

--Show the name of the Customer whose CustomerID is 1.
SELECT customerID, firstname FROM customers LIMIT 1;
SELECT firstname FROM customers WHERE customerID = 1;

--UPDATE the record for CustomerID =1 on the Customer table so that the name is "Lerato Mabitso".
UPDATE customers
    SET firstname = 'Lerato',
    lastname = 'Mabitsa'
    WHERE customerID = 1;

--DELETE the record from the Customers table for customer 2 (CustomerID = 2).
DELETE FROM payments
    WHERE customerID = 2; /*we first delete from payments table because we have a foreign key which is customerID referenced from the customers table.*/ 
DELETE FROM customers
    WHERE customerID = 2;

--Select all unique values from the table Products.
SELECT DISTINCT * FROM products;

--Return the MAXIMUM payment made on the PAYMENTS table.
SELECT MAX(amount) FROM payments;

--Create a query that selects all customers from the "Customers" table, sorted by the "Country" column.
SELECT * FROM customers ORDER BY country;

--Create a query that selects all Products with a price BETWEEN R100 and R600.
SELECT * FROM products WHERE buyPrice BETWEEN 100 AND 600;

--Create a query that selects all fields from "Customers" where country is "Germany" AND city is "Berlin".
SELECT * FROM customers WHERE country = 'Germany' AND city = 'Berlin';

--Create a query that selects all fields from "Customers" where city is "Cape Town" OR "Durban".
SELECT * FROM customers WHERE country = 'Cape Town' OR city = 'Durban';

--Select all records from Products where the Price is GREATER than R500.
SELECT * FROM products WHERE buyPrice > 500;

--Return the sum of the Amounts on the Payments table.
SELECT SUM(amount) FROM payments;

--Count the number of shipped orders in the Orders table.
SELECT COUNT(*) FROM orders WHERE `status` = 'Shipped';

--Return the average price of all Products, in Rands and in Dollars (assume the exchange rate is R12 to the Dollar).
SELECT AVG(buyPrice) FROM products;  
R467.36 / 12 = $38.95

--Using INNER JOIN create a query that selects all Payments with Customer information.
SELECT * FROM payments INNER JOIN customers ON payments.customerID = customers.customerID;

