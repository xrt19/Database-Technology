1)
create table MsCustomer
(
  CustomerID char(5) primary key check(CustomerID regexp "^CU[0-9][0-9][0-9]$"),
  CustomerName varchar(50) not null,
  CustomerGender varchar(10) not null,
  CustomerAddress varchar(50) not null,
  CustomerEmail varchar(50) not null,
  CustomerDOB date not null
)

2)
create table MsBrand
(
  BrandID char(5) primary key check(BrandID regexp "^BR[0-9][0-9][0-9]$"),
  BrandName varchar(50) not null
)

3)
create table MsBrand
(
  BrandID char(5) primary key check(BrandID regexp "^BR[0-9][0-9][0-9]$"),
  Brandname varchar(50) not null
)

4)
select * from MsEmployee

5) 
update MsProduct
set ProductPrice = ProductPrice - 2
where ProductPrice > 10

6) 
-- TransactionID: TR001; ProductID: PR014; Quantity: 27;
-- - TransactionID: TR001; ProductID: PR010; Quantity: 2;
-- - TransactionID: TR005; ProductID: PR005; Quantity: 26;
-- - TransactionID: TR005; ProductID: PR002; Quantity: 21;
insert into TransactionDetail
values 
("TR001", "PR014", 27),
("TR001", "PR010", 2),
("TR005", "PR005", 26),
("TR005", "PR002", 21)

7) 
DELETE FROM TransactionHeader
WHERE TransactionID 
IN ('TR001', 'TR003', 'TR005')

8)
ALTER TABLE MsCustomer
ADD CustomerPhone VARCHAR(50) not null;

alter table MsCustomer
ADD CONSTRAINT check_phonenumber CHECK (CustomerPhone REGEXP '^[0-9]+$');

9)
select
  CustomerName,
  right(CustomerAddress, position(" " in reverse(CustomerAddress)) - 1) as AddressType
from mscustomer
where
  Customergender like "Female"

10) 
DROP TABLE MsBrand

11) 
select 
  replace(TransactionID, "TR", "Transaction ") as "Transaction Number",
  CustomerID,
  TransactionDate
from transactionheader
where subdate(TransactionDate, interval -1 year) <= "2023-01-31"
order by TransactionID asc

12) 
select
  concat("Mr.", CustomerName) as CustomerName,
  CustomerGender,
  CustomerAddress
from mscustomer
where
CustomerGender like "Male"

13)
select * from MsCustomer
where CustomerName LIKE "%Dirk Titterell%"

14)
select * from MsCategory
where CategoryName LIKE "%a%" or  CategoryName like "%A%"

15)
select
  ProductName,
  concat("Price: $", round(ProductPrice / 2, 2), " just for today!") as Price
from msproduct
where ProductName like "%Cheese"

16)
create table MsEmployee
(
  EmployeeID char(5) primary key check(EmployeeID regexp '^EM[0-9][0-9][0-9]$'),
  EmployeeName varchar(50) not null,
  EmployeeGender varchar(10) not null,
  EmployeeAddress varchar(50) not null
)

17) 
create view customer_firstname_view as
select CustomerID, left(CustomerName, position(" " in CustomerName)) as FirstName
from mscustomer;

18)
CREATE VIEW employee_2022_view AS
SELECT me.EmployeeID, me.EmployeeName, COUNT(th.TransactionDate) AS TransactionCount
FROM msemployee AS me
JOIN transactionheader AS th ON me.EmployeeID = th.EmployeeID
WHERE YEAR(th.TransactionDate) = 2022
GROUP BY me.EmployeeID, me.EmployeeName;

19) 
SELECT mc.CustomerName, mc.CustomerEmail, mc.CustomerDOB, th.TransactionID, th.TransactionDate
FROM mscustomer AS mc
LEFT JOIN transactionheader AS th ON mc.CustomerID = th.CustomerID
WHERE 
  mc.CustomerName LIKE '%m%' AND
  MONTH(mc.CustomerDOB) BETWEEN 1 AND 8;

20)
SELECT REPLACE(th.TransactionID, "TR", "Wild-") AS TransactionCode, p.ProductName AS ProductName, UPPER(c.CustomerName) AS CustomerName, td.Quantity AS Quantity
FROM transactionheader th 
	JOIN transactiondetail td ON th.TransactionID = td.TransactionID
    JOIN msproduct p ON p.ProductID = td.ProductID
    JOIN mscustomer c ON c.CustomerID = th.CustomerID
WHERE
	p.ProductName LIKE "%Wild%"
    AND LENGTH(c.CustomerName) - LENGTH(REPLACE(c.CustomerName, " ", "")) = 1
    AND td.Quantity > 12

UNION

SELECT REPLACE(th.TransactionID, "TR", "Organic-") AS TransactionCode, p.ProductName AS ProductName, UPPER(c.CustomerName) AS CustomerName, td.Quantity AS Quantity
FROM transactionheader th 
	JOIN transactiondetail td ON th.TransactionID = td.TransactionID
    JOIN msproduct p ON p.ProductID = td.ProductID
    JOIN mscustomer c ON c.CustomerID = th.CustomerID
WHERE
	p.ProductName LIKE "%Organic%"
    AND LENGTH(c.CustomerName) - LENGTH(REPLACE(c.CustomerName, " ", "")) = 1
    AND td.Quantity < 12;

