use ALPHA;

-- Select all field and records from a table
SELECT* FROM Customers;


--Select distinct fields from a table
SELECT DISTINCT City FROM Customers;


--Counting number of customer in a table 
SELECT COUNT(*) FROM Customers;


--Seleting specific fiels to disply where records are from INDIA using where clause  
SELECT FirstName, LastName, City 
FROM Customers
WHERE Country='India';


--Seleting specific fiels to disply where records are from USA using where clause  
SELECT * FROM Customers
WHERE Country='USA';


--Selecting record with unique value from a table
SELECT * FROM Customers 
WHERE CustomerID=2;


--Using less than operator
SELECT * FROM Customers 
WHERE CustomerID<13;


--Using greater than operator
SELECT * FROM Customers 
WHERE CustomerID>12;


--Using less than and equal operator
SELECT * FROM Customers 
WHERE CustomerID<=10;


--Using greater than and equal operator
SELECT * FROM Customers 
WHERE CustomerID>=10;


--Using Not equal operator
SELECT * FROM Customers 
WHERE CustomerID<>10;


--Using BETWEEN operator
SELECT * FROM Customers 
WHERE CustomerID BETWEEN 5 AND 10;


--Using LIKE operator where record starts with u
SELECT * FROM Customers 
WHERE Country LIKE 'u%';


--Using LIKE operator where record ends with a
SELECT * FROM Customers 
WHERE Country LIKE '%a';


--Using LIKE operator where record has n inbetween
SELECT * FROM Customers 
WHERE Country LIKE '%n%';


--Using LIKE operator where record has n in second position
SELECT * FROM Customers 
WHERE Country LIKE '_n%';



--Using LIKE operator where record starts with i and had atleast three char 
SELECT * FROM Customers 
WHERE Country LIKE 'i__%';


--Using LIKE operator where record which starts with i and ends with a
SELECT * FROM Customers 
WHERE Country LIKE 'i%a';


--Using NOT LIKE operator where record has n inbetween
SELECT * FROM Customers 
WHERE Country NOT LIKE 'i%';


--Using AND operator 
SELECT CustomerID, FirstName,LastName FROM Customers
WHERE Country='USA' AND Gender='Male'; 


--Using OR operator
SELECT CustomerID,FirstName,LastName,Gender FROM Customers
WHERE Country='USA' OR Gender='Female'; 


--Using NOT operator
SELECT CustomerID,FirstName,LastName,Gender FROM Customers
WHERE NOT Gender='Male' ; 


--Combining AND and OR
SELECT CustomerID,FirstName,LastName,Gender,Country FROM Customers
WHERE Gender='Male' AND (Country='India' OR Country='UK'); 


--Using ORDER BY ASC
SELECT* FROM Customers
ORDER BY FirstName ASC;


--Using ORDER BY DESC
SELECT* FROM Customers
ORDER BY FirstName DESC;


--INESRT INTO Statement to add a record in a table
INSERT INTO Customers 
Values(19,'ABC', 'XYZ','Female','Shijavi nagar','Pune',4444444,'India');
SELECT * FROM Customers;


--indentify NULL Values
SELECT *FROM Customers
WHERE Country IS NULL;


--UPDATE statement
UPDATE Customers
SET FirstName='Rush',LastName='ABC'
WHERE CustomerID=19;
SELECT *FROM Customers;


--DELETE statement
DELETE FROM Customers 
WHERE FirstName='Rush';


-- Using TOP opereation 
SELECT TOP 5 FirstName
FROM Customers
WHERE Gender='Male';


SELECT TOP 6 *
FROM Customers
WHERE Gender='Male';


--Using MIN()
SELECT MIN(CustomerID) AS Customer_number
FROM Customers
WHERE Country='USA';


--Using MAX()
SELECT MAX(CustomerID) AS Customer_number
FROM Customers
WHERE Country='USA';


-- Calculating Average of column
SELECT AVG(PostalCode)
FROM Customers
WHERE country='India';


-- Calculating SUM of a column
SELECT SUM(PostalCode)
FROM Customers
WHERE country='India';


--Using INNER JOIN
SELECT *FROM Customers;
SELECT*FROM Suppliers;

SELECT FirstName,LastName,City,SupplierName,Country
FROM Customers
INNER JOIN Suppliers
ON Customers.CustomerID=Suppliers.CustomerID;


--Using Right Join
SELECT FirstName,LastName,SupplierName,Country
FROM Customers
RIGHT JOIN Suppliers
ON Customers.CustomerID=Suppliers.CustomerID;

--Using Full Outer Join
SELECT FirstName,LastName,City,SupplierName,Country
FROM Customers
FULL OUTER JOIN Suppliers
ON Customers.CustomerID=Suppliers.CustomerID;

--Using UNION 
SELECT Country FROM Customers
UNION
SELECT SupplierCountry FROM Suppliers;

--Using GROUP BY
SELECT COUNT(CustomerID ),Country 
FROM Customers  
GROUP BY Country;


--Using EXIST
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT Country  FROM Customers WHERE Customers.CustomerID = Suppliers.CustomerID AND  CustomerID< 10);


--Using Store Procedure (execute in new query window)
USE ALPHA;
CREATE PROCEDURE spGetCustomerDetails
AS
BEGIN
SELECT FirstName,LastName,Country FROM Customers
END

EXECUTE spGetCustomerDetails

--Using Store Procedure with variables(Execute in new query window)
CREATE PROCEDURE GetCustomeGenderAndCountry 
@Gender varchar(20),
@Country varchar(20)
AS
BEGIN
  SELECT CustomerID,FirstName,LastName FROM Customers WHERE Gender=@Gender 
  AND Country=@Country
END

EXECUTE GetCustomeGenderAndCountry 'Male','India'


--Using store procedure with output parameter 
CREATE PROCEDURE spGetCust
@Gender varchar(20),
@CustomerCount int OUTPUT
AS
BEGIN
  SELECT @CustomerCount= COUNT(CustomerID) from Customers where Gender=@Gender
END

DECLARE @TOTALCustomer int
Execute spGetCust @CustomerCount= @TOTALCustomer out ,@Gender='Male'
print @TOTALCustomer


--using triggers







 




















