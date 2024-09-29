1)
========
2)
SELECT b.BreadID, b.BreadName, bt.BreadTypeName, b.BreadPrice
FROM msbread b JOIN msbreadtype bt ON b.BreadTypeID = bt.BreadTypeID
WHERE b.BreadName REGEXP "^R"
========
3)
SELECT UPPER(c.CustomerName), c.CustomerGender, c.CustomerDOB
FROM mscustomer c 
WHERE c.CustomerName LIKE "%a%"

UNION

SELECT UPPER(s.StaffName), s.StaffGender, s.StaffDOB
FROM msstaff s
WHERE s.StaffName LIKE "%a%"
========
4) BELOM KELAAR
SELECT c.CustomerName, YEAR(c.CustomerDOB) AS "Year of Birth"
FROM mscustomer c 
	JOIN salesheader sh ON c.CustomerID = sh.CustomerID
    JOIN salesdetail sd ON sd.SalesID = sh.SalesID
WHERE
	sd.Quantity < 15
========
5)
BEGIN;

ALTER TABLE mscustomer
ADD CustomerPhone VARCHAR(25);

ROLLBACK;
========
6) BELOM KELAAR
BEGIN;

SELECT breadprice
FROM msbread;

UPDATE msbread b 
	JOIN salesheader sh ON sh.SalesID = sd.SalesID
    JOIN salesdetail sd ON sd.BreadID = b.BreadID
    JOIN msstaff s ON s.StaffID = sh.StaffID
SET b.BreadPrice = b.BreadPrice + 10000
WHERE sh.SalesDate > 2019
	 AND SUBSTRING(s.StaffName, 1, LENGTH(LOCATE(" " IN s.StaffName))) = "David";
     
SELECT breadprice
FROM msbread;

ROLLBACK;


========
7)
SELECT b.BreadID, b.BreadName, b.BreadPrice, sd.Quantity, sh.SalesDate
FROM msbread b 
	JOIN salesdetail sd ON b.BreadID = sd.BreadID
    JOIN salesheader sh ON sd.SalesID = sh.SalesID
    JOIN mscustomer c ON c.CustomerID = sh.CustomerID
WHERE 
   c.CustomerID = "CU004"
   AND YEAR(sh.SalesDate);
========
8)
SELECT b.BreadID, b.BreadName, bt.BreadTypeName, b.BreadPrice
FROM msbread b JOIN msbreadtype bt ON bt.BreadTypeID = b.BreadTypeID
WHERE LENGTH(b.BreadName) > 10 
ORDER BY b.BreadPrice DESC;
========
9)
CREATE VIEW ViewStaffAt2020 AS
SELECT s.StaffID, CONCAT("Mr./Mrs.", s.StaffName)
FROM msstaff s JOIN salesheader sh ON sh.StaffID = s.StaffID
WHERE YEAR(sh.SalesDate) = 2020;
========
10)
CREATE VIEW BreadSalesMarch AS
SELECT b.BreadID, b.BreadName, b.BreadPrice, CONCAT(bt.BreadTypeName, " Type") AS BreadType
FROM msbread b 
	JOIN msbreadtype bt ON b.BreadTypeID = bt.BreadTypeID
    JOIN salesdetail sd ON sd.BreadID = b.BreadID
    JOIN salesheader sh ON sh.SalesID = sd.SalesID
WHERE
	MONTH(sh.SalesDate) = 3
    AND b.BreadPrice BETWEEN 20000 AND 50000;
========