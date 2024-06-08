USE classicmodels;

SELECT * FROM customers;
SELECT * FROM orderdetails;
SELECT * FROM orders;
SELECT * FROM payments;

-- SUM (Menjumlahkan)
SELECT SUM(creditLimit) AS sumOfCreditLimit
FROM customers;

-- Average (Rata-rata)
SELECT AVG(creditLimit) AS avgOfCreditLimit
FROM customers;

-- Max (Nilai paling besar)
SELECT MAX(creditLimit) AS maxOfCreditLimit
FROM customers;

-- Min (Nilai paling kecil)
SELECT MIN(creditLimit) AS minOfCreditLimit
FROM customers;

-- Count (Menghitung jumlah data)
SELECT COUNT(customerName) AS countOfCustomers
FROM customers;

-- Menghitung jumlah negara asal customer
SELECT COUNT(DISTINCT country) AS jumlah_negara_customer
FROM customers;

-- Menghitung jumlah customer berdasarkan negara asalnya
SELECT country, COUNT(customerName) AS customer_amount
FROM customers
GROUP BY country
ORDER BY customer_amount DESC;

-- Menghitung jumlah pesanan setiap nomor pemesanan
SELECT orderNumber, COUNT(orderNumber) AS amount_of_orders
FROM orderdetails
GROUP BY orderNumber
ORDER BY amount_of_orders DESC;

-- Menghitung rata-rata pembayaran setiap tahun
SELECT YEAR(paymentDate) AS Year, AVG(amount) AS avg_amount
FROM payments
GROUP BY year;

-- Menghitung rata-rata pembayaran setiap bulan
SELECT YEAR(paymentDate) AS Year,MONTH(paymentDate) AS Month, AVG(amount) AS avg_amount
FROM payments 
GROUP BY Month
ORDER BY Year DESC;

-- Melihat Tahun dan Bulan dengan jumlah pesanan lebih dari 50
SELECT YEAR(orderDate) as order_year, MONTH(orderDate) as order_month
FROM orders
GROUP BY order_month
HAVING COUNT(orderNumber) > 50;





