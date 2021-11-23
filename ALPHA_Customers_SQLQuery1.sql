CREATE TABLE Customers(
CustomerID INT PRIMARY KEY NOT NULL,
FirstName VARCHAR(200) NOT NULL,
LastName VARCHAR(200) NOT NULL,
Gender VARCHAR(20) NOT NULL,
Address VARCHAR(200),
City VARCHAR(200) NOT NULL,
PostalCode INT,
Country VARCHAR(200) NOT NULL);

INSERT INTO Customers Values(1,'Rushikesh','Giri','Male','Ravi nagar','Amravati',444604,'INDIA');
INSERT INTO Customers Values(2,'Rutuja','Gir','Female','shiv nagar','Pune',442604,'UK');
INSERT INTO Customers Values(3,'Abhay','Kathole','Male','shastri nagar','Akola',443604,'USA');
INSERT INTO Customers Values(4,'Dikshant','Daswat','Male','JM road','Nagpur',444644,'FRANCE');
INSERT INTO Customers Values(5,'Yash','Gulaxe','Male','Kothrud','Balapur',444654,'INDIA');
INSERT INTO Customers Values(6,'Nilesh','Patil','Male','Bavdhan','Pune',444664,'CANADA');
INSERT INTO Customers Values(7,'Dinesh','Johnson','Male','Baner','Ahemadnagar',474604,'USA');
INSERT INTO Customers Values(8,'Akash','Gosavi','Male','Hadapsar','Aurangabad',448604,'ITLY');
INSERT INTO Customers Values(9,'Puja','Puri','Female','Lohgaon','Mumbai',444694,'FRANCE');
INSERT INTO Customers Values(10,'Swati','Kale','Female','Nare','kokan',444304,'UK');
INSERT INTO Customers Values(11,'Rani','Ambore','Female','Viman nagar','Akola',244604,'NEPAL');
INSERT INTO Customers Values(12,'Rakesh','Mishra','Male','Null stop','Nagpur',144604,'INDIA');
INSERT INTO Customers Values(13,'Suresh','Gandhi','Male','Deccan','Achalpur',43404,'USA');
INSERT INTO Customers Values(14,'Prasad','Samatkar','Male','Pimpri','chikhaldar',4443604,'FRANCE');
INSERT INTO Customers Values(15,'Sarvesh','Gandhi','Male','Chinchwad','buldhana',444304,'CHINA');
INSERT INTO Customers Values(16,'Shubham','Alone','Male','Wakad','Akola',444614,'BHUTAN');
INSERT INTO Customers Values(17,'saloni','Giri','Female','Shivaji nagar','Pune',144604,'INDIA');
INSERT INTO Customers Values(18,'Ajay','Devgan','Male','Sangamwadi','Asti',447604,'UK');

SELECT*FROM Customers;