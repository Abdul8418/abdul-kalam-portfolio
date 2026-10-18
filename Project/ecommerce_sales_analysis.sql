CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Product VARCHAR(50),
    Category VARCHAR(30),
    Quantity INT,
    Price DECIMAL(10,2),
    OrderDate DATE
);

INSERT INTO Orders VALUES
(1, 'Aman', 'Laptop', 'Electronics', 1, 45000, '2026-01-05'),
(2, 'Priya', 'Mouse', 'Accessories', 2, 500, '2026-01-06'),
(3, 'Rahul', 'Phone', 'Electronics', 1, 20000, '2026-01-07'),
(4, 'Neha', 'Keyboard', 'Accessories', 1, 1200, '2026-01-08'),
(5, 'Aman', 'Headphones', 'Accessories', 2, 1500, '2026-01-10'),
(6, 'Priya', 'Laptop', 'Electronics', 1, 45000, '2026-01-12'),
(7, 'Rahul', 'Mouse', 'Accessories', 3, 500, '2026-01-15'),
(8, 'Neha', 'Phone', 'Electronics', 1, 20000, '2026-01-18');

SELECT * FROM Orders;

--  calculate  Total Sales
select
 sum(Quantity*Price) as total_sales 
 from orders;


--  Category-wise SalesAnakysis
select
     category,
     sum(quantity * price) as Total_sales
from orders
group by Category
order by total_sales desc;


-- Top Customer By Sales
select
     customerName,
     sum(quantity*price) as total_spent
from orders
group by customerName
order by total_spent desc;


-- Monthly Sales Analysis
select
      date_format(orderDate,'%Y-%m')as sales_month,
      sum(quantity*price) as Total_Sales
from orders
group by date_format(orderDate,'%Y-%m')
order by sales_month;  


-- Top Salling Product
select
      Product,
      sum(Quantity)as Total_Quantity_sold,
      sum(Quantity * price) as Total_Sales
from orders
group by product
order by Total_Quantity_sold desc;   

