USE classicmodels;

-- Melihat tabel 
SELECT * FROM customers;
SELECT * FROM orderdetails;
SELECT * FROM orders;
SELECT * FROM payments;
SELECT * FROM productlines;
SELECT * FROM offices;
SELECT * FROM employees;

-- Melihat kolom customer name dari tabel customers
SELECT customerName FROM customers;

-- Melihat kolom customer name dan phone number
SELECT customerNumber, customerName, phone FROM customers;

-- Mengurutkan data customer berdasarkan credit limit dari yang terbesar
SELECT customerNumber, customerName, creditLimit
FROM customers
ORDER BY creditLimit DESC;

-- Mengurutkan data customer berdasarkan credit limit dari yang terkecil
SELECT customerNumber, customerName, creditLimit
FROM customers
ORDER BY creditLimit ASC;

-- 10 customer dengan credit limit tertinggi
SELECT customerNumber, customerName, creditLimit
FROM customers
ORDER BY creditLimit DESC
LIMIT 10;

-- Melihat negara asal customer
SELECT DISTINCT country
FROM customers;

-- Pengkondisian 
-- produk yang dipesan dengan jumlah lebih dari 50
SELECT orderNumber, productCode, quantityOrdered
FROM orderdetails
WHERE quantityOrdered >= 50
ORDER BY quantityOrdered DESC;

-- produk yang dipesan dengan jumlah kurang dari 30
SELECT orderNumber, productCode, quantityOrdered
FROM orderdetails
WHERE quantityOrdered < 30
ORDER BY quantityOrdered ASC;

-- Melihat data customer yang berasal dari Australia
SELECT customerNumber, customerName, city, country
FROM customers
WHERE country = 'Australia'; 

-- Melihat data customer yang berasal dari Jerman
SELECT customerNumber, customerName, city, country
FROM customers
WHERE country = 'Germany'; 

-- Melihat data customer yang berasal dari Frankfurt, Jerman
SELECT customerNumber, customerName, city, country
FROM customers
WHERE country = 'Germany' AND city = 'Frankfurt';

-- Melihat quantity ordered antara nili 20 dan 50
SELECT orderNumber, productCode, quantityOrdered
FROM orderdetails
WHERE quantityOrdered BETWEEN 20 AND 50
ORDER BY quantityOrdered ASC;

-- Melihat customer dari USA dengan credit limit lebih dari 100000
SELECT customerNumber, customerName, country, creditLimit
FROM customers
WHERE creditLimit > 100000 AND country = 'USA'
ORDER BY creditLimit DESC;




