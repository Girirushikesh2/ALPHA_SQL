use ALPHA;

SELECT* FROM Customers;


SELECT DISTINCT City FROM Customers;


SELECT COUNT(*) FROM Customers;


SELECT FirstName, LastName, City 
FROM Customers
WHERE Country='India';


SELECT * FROM Customers
Where Country='USA';


SELECT * FROM Customers 
Where CustomerID=2;


SELECT * FROM Customers 
Where CustomerID<13;


SELECT * FROM Customers 
Where CustomerID>12;


SELECT * FROM Customers 
Where CustomerID<=10;


