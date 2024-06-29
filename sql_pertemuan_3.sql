use classicmodels;

select * from orderdetails;
select * from products;

-- inner join
select * from orderdetails
inner join products
on orderdetails.productCode = products.productCode;

select o.productCode, o.quantityOrdered, p.productName
from orderdetails o
inner join products p
on p.productCode = o.productCode;

-- left join
select o.productCode, o.quantityOrdered, p.productName
from orderdetails o
left join products p
on p.productCode = o.productCode;

-- Mencari tahu customer yang belum melakukan pembayaran
select c.customerNumber, c.customerName, p.paymentDate, p.amount
from customers c
left join payments p
on c.customerNumber = p.customerNumber
where paymentDate is null;

-- right joins
select c.customerNumber, c.customerName, p.paymentDate, p.amount
from customers c
right join payments p
on c.customerNumber = p.customerNumber;

-- cross join
select * from customers
cross join payments;

-- UNION
select * from customers
union
select * from payments;


