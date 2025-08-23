create schema practicequeriesjoins;

-- Customers Table
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    Country VARCHAR(50)
);

INSERT INTO Customers (CustomerID, CustomerName, Country) VALUES
(1, 'Alice', 'USA'),
(2, 'Bob', 'UK'),
(3, 'Charlie', 'India'),
(4, 'David', 'USA'),
(5, 'Eva', 'Canada');

-- Orders Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    Product VARCHAR(50),
    Amount DECIMAL(10,2),
    OrderDate DATE,
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

INSERT INTO Orders (OrderID, CustomerID, Product, Amount, OrderDate) VALUES
(101, 1, 'Laptop', 1200.00, '2023-01-15'),
(102, 1, 'Mouse', 25.00, '2023-02-10'),
(103, 2, 'Keyboard', 45.00, '2023-02-18'),
(104, 3, 'Monitor', 200.00, '2023-03-05'),
(105, 4, 'Tablet', 350.00, '2023-03-20'),
(106, 2, 'Headphones', 80.00, '2023-04-12');
