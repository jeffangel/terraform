CREATE TABLE Patients(
	PatientId INT PRIMARY KEY,
	DNI VARCHAR(50),
	Clave VARCHAR(50),
	FechaMuestra Date,
	Actividad DECIMAL,
);

INSERT INTO Customers VALUES(1,'Gianluca Lapadula','glapadula@aforo255.com');
INSERT INTO Customers VALUES(2,'Leonel Messi','lmessi@aforo255.com');
INSERT INTO Customers VALUES(3,'Paolo Guerrero','pguerrero@aforo255.com');
INSERT INTO Customers VALUES(4,'Andrea Pirlo','apirlo@aforo255.com');
INSERT INTO Customers VALUES(5,'Renato Tapia','rtapia@aforo255.com');

select * from Customers;
GO

CREATE TABLE Orders(
	OrderId VARCHAR(10) PRIMARY KEY, 
	StateOrder INT,
	IsMail INT,
	CustomerId INT
);


INSERT INTO Orders VALUES('OR-0000001',0,0,1);
INSERT INTO Orders VALUES('OR-0000002',1,0,1);
INSERT INTO Orders VALUES('OR-0000003',0,0,2);
INSERT INTO Orders VALUES('OR-0000004',0,0,1);
INSERT INTO Orders VALUES('OR-0000005',0,0,2);
INSERT INTO Orders VALUES('OR-0000006',0,0,1);
INSERT INTO Orders VALUES('OR-0000007',0,0,3);
INSERT INTO Orders VALUES('OR-0000008',0,0,4);
INSERT INTO Orders VALUES('OR-0000009',0,0,5);
INSERT INTO Orders VALUES('OR-0000010',0,0,2);


SELECT * FROM Orders;
GO

ALTER TABLE Orders
ADD FOREIGN KEY (CustomerId) REFERENCES Customers(CustomerId);
GO