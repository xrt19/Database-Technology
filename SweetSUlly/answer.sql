2)
SELECT y.YogurtName, yf.YogurtFlavorName
FROM msyogurt y JOIN msyogurtflavor yf ON y.YogurtFlavorID = yf.YogurtFlavorID
WHERE yf.YogurtFlavorName LIKE "%Chocolate%";
=======
3)
SELECT LOWER(customername) as Name, customergender
FROM mscustomer
WHERE customergender IN ("Female")

UNION

SELECT LOWER(staffname) as Name, staffgender
FROM msstaff
WHERE staffgender IN ("Female");
=======
4)
SELECT c.CustomerID as ID, UPPER (c.CustomerName) as Name, DATE_FORMAT(th.TransactionDate, "%M %d %Y") AS "Transaction Date"
FROM mscustomer c JOIN transactionheader th ON c.CustomerID = th.CustomerID
WHERE
	YEAR(th.TransactionDate) = 2021
    AND c.CustomerGender = "Male"
    
UNION
    
SELECT s.StaffID as ID, UPPER (s.StaffName) as Name, DATE_FORMAT(th.TransactionDate, "%M %d %Y") AS "Transaction Date"
FROM msstaff s JOIN transactionheader th ON s.StaffID = th.StaffID
WHERE
	YEAR(th.TransactionDate) = 2021
    AND s.StaffGender = "Male";
=======
5)
BEGIN;

ALTER TABLE mscustomer
ADD CustomerPhoneNumber VARCHAR(13);

ROLLBACK;    
=======
6)
BEGIN;

SELECT staffsalary
FROM msstaff;

UPDATE msstaff s 
	JOIN transactionheader th ON s.StaffID = th.StaffID
    JOIN transactiondetail td ON th.TransactionID = td.TransactionID
    JOIN msyogurt y ON y.YogurtID = td.YogurtID
SET s.staffsalary = s.staffsalary + 1000000
WHERE 
	DAYNAME(th.TransactionDate) = "Friday"
    AND y.YogurtName REGEXP "^L|^T";

SELECT staffsalary
FROM msstaff;

ROLLBACK;
=======
7)
SELECT SUBSTRING(c.CustomerID, LENGTH(c.CustomerID)-1, 2) AS `Customer Number`, y.YogurtName, th.TransactionDate
FROM mscustomer c 
    JOIN transactionheader th ON c.CustomerID = th.CustomerID
    JOIN transactiondetail td ON th.TransactionID = td.TransactionID
    JOIN msyogurt y ON td.YogurtID = y.YogurtID
WHERE td.Quantity > 1 AND c.CustomerAddress REGEXP 'Lane$|Street'
=======
8) 
SELECT s.StaffName, DAYNAME(th.TransactionDate) "Day Name"
FROM msstaff s JOIN transactionheader th ON s.StaffID = th.StaffID
ORDER BY th.TransactionDate ASC;
=======
9)
CREATE VIEW  YogurtTransaction AS 
SELECT DISTINCT REPLACE("YG", "Yogurt", y.YogurtID) AS "New Yogurt ID", y.YogurtName, y.YogurtPrice
FROM msyogurt y JOIN transactiondetail td ON td.YogurtID = y.YogurtID
=======
10)  
SELECT RIGHT(c.CustomerID, 3) as "CustomerID Number", REVERSE(s.StaffID), DAYOFYEAR(th.TransactionDate) 
FROM mscustomer c 
	JOIN transactionheader th ON c.CustomerID = th.CustomerID
    JOIN msstaff s ON s.StaffID = th.StaffID;








