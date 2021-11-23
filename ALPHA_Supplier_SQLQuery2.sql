use ALPHA;

CREATE TABLE Suppliers(
SupplierID VARCHAR(200) PRIMARY KEY NOT NULL,
SupplierName VARCHAR(200) NOT NULL,
Address VARCHAR(200) NOT NULL,
SupplierCountry VARCHAR(200) NOT null,
Phone INT NOT NULL);


INSERT INTO Suppliers VALUES (1,'MIKE','NYC','US',1234);
INSERT INTO Suppliers VALUES (2,'JOHN','New j','UK',5678);
INSERT INTO Suppliers VALUES (3,'ROBERT','Texas','Canada',9876);
INSERT INTO Suppliers VALUES (4,'Jule','Austin','Denmark',9874);
INSERT INTO Suppliers VALUES (5,'Matthew','SanDiago','US',7531);
INSERT INTO Suppliers VALUES (6,'Joe','tokyo','Norway',3574);
INSERT INTO Suppliers VALUES (7,'Andrew','London','France',8523);
INSERT INTO Suppliers VALUES (8,'Matt','Berlin','UK',6541);
INSERT INTO Suppliers VALUES (9,'Amy','franfurt','Sweden',4563);
INSERT INTO Suppliers VALUES (10,'Rachel','Bend','India',6325);
INSERT INTO Suppliers VALUES (11,'Monica','Sandvika','Canada',7458);
INSERT INTO Suppliers VALUES (12,'Phiboe','Sydney','India',8822);
INSERT INTO Suppliers VALUES (13,'Ross','Paris','UK',54235);
INSERT INTO Suppliers VALUES (14,'Chandler','Sanvika','Germany',1973);
INSERT INTO Suppliers VALUES (15,'Joey','Sydney','US',9874);
INSERT INTO Suppliers VALUES (16,'House','Annecy','France',75698);
INSERT INTO Suppliers VALUES (17,'Rock','Lyngby','Germany',4656);
INSERT INTO Suppliers VALUES (18,'Jordan','Pune','Canada',9851);

SELECT* FROM Suppliers;