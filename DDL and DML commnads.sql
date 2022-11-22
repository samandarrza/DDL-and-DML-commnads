CREATE DATABASE MyStore

USE MyStore

CREATE TABLE Products (
	Id INT,
	Name NVARCHAR(30),
	Price DECIMAL(18,2),
)

ALTER TABLE Products
ADD BrandName NVARCHAR(30)

INSERT INTO Products
VALUES
(1,'Galaxy A53',749,'Samsung'),
(2,'Redmi 10C',309,'Xiaomi'),
(3,'Vivo Y21',349,'Vivo'),
(4,'Nova Y70',399,'Huawei'),
(5,'Realme C25Y',299,'Realme'),
(6,'Galaxy Z Fold',3899,'Samsung'),
(7,'Poco M5',399,'Xiaomi'),
(8,'Honor X8',529,'Honor'),
(9,'iPhone 14 Plus',2649,'Apple'),
(10,'Nokia G21',359,'Nokia'),
(11,'Nova 10SE',699,'Huawei'),
(12,'Galaxy A04',309,'Samsung'),
(13,'iPhone 11',1479,'Apple'),
(14,'Redmi Note 11',439,'Xiaomi'),
(15,'iPhone 14',2399,'Apple')

SELECT * FROM Products WHERE Price < (SELECT AVG(Price) FROM Products)

SELECT * FROM Products WHERE Price>500

SELECT * FROM Products WHERE LEN(BrandName)>5

ALTER TABLE Products
ALTER COLUMN Id INT NOT NULL

ALTER TABLE Products
ADD CHECK (LEN(BrandName)>2)

SELECT * FROM Products