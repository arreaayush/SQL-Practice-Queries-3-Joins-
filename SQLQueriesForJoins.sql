-- 1. Get all orders along with the customer’s name.

select c.CustomerName, o.OrderID, o.Product, o.Amount, o.OrderDate
from customers c
inner join orders o 
on c.CustomerId = o.CustomerID;


-- 2. Show all customers and their orders. Include customers who have not placed any order.

select c.CustomerName, o.OrderID, o.Product, o.Amount, o.OrderDate
from customers c
left join orders o 
on c.CustomerId = o.CustomerID;


-- 3. Show all orders and their customers. Include orders even if the customer is missing.

select c.CustomerName, o.OrderID, o.Product, o.Amount, o.OrderDate
from customers c
right join orders o 
on c.CustomerID = o.CustomerID;


-- 4. Show all customers and all orders, even if they don’t match.

select c.CustomerID, c.CustomerName, o.OrderID, o.Product, o.Amount, o.OrderDate
from customers c
left join orders o 
on c.CustomerID = o.CustomerID
union
select c.CustomerID, c.CustomerName, o.OrderID, o.Product, o.Amount, o.OrderDate
from customers c
right join orders o 
on c.CustomerID = o.CustomerID;


-- 5. Get the list of customers who did not place any orders.

Select c.CustomerName
from customers c
left join orders o
on c.CustomerID = o.CustomerID
where o.OrderID IS NULL;


-- 6. Show customers from USA and the products they ordered.

Select c.CustomerName, c.Country, o.Product
from customers c
inner join orders o
on c.CustomerID = o.CustomerID
where c.Country = 'USA';


-- 7. Show each customer’s total order amount.

Select c.CustomerName, sum(o.Amount) as Total_Order_Amt
from customers c
left join orders o
on c.CustomerID = o.CustomerID
group by c.CustomerID;


-- 8. Find the most expensive product ordered along with the customer’s name.

Select c.CustomerName, o.Product, o.Amount
from customers c
right join orders o
on c.CustomerID = o.CustomerID
order by o.Amount desc
limit 1;


-- 9. List all customers who ordered more than one product.

Select c.CustomerID, c.CustomerName, count(o.OrderID) as OrderID_COUNT
from customers c
right join orders o
on c.CustomerID = o.CustomerID
group by c.CustomerID
having OrderID_COUNT > 1;


-- 10. Show orders placed in February 2023 along with the customer details.

Select c.CustomerID, c.CustomerName, c.Country, o.OrderDate
from customers c
right join orders o
on c.CustomerID = o.CustomerID
where o.OrderDate between '2023-02-01' AND '2023-02-28';



Select c.CustomerID, c.CustomerName, c.Country, o.OrderDate
from customers c
right join orders o
on c.CustomerID = o.CustomerID
where Month(o.OrderDate) = '02' AND Year(o.OrderDate) = '2023';
