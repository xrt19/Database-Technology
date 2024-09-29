CREATE TABLE MsStaffPayroll
(
    PayrollID char(10) PRIMARY KEY,
    StaffID char(10) not null,
    PayrollGivenDate date not null,
    PayrollStatus char(10) not null,
    FOREIGN KEY (StaffID) REFERENCES msstaff(StaffID)
);

INSERT INTO MsStaffPayroll
VALUES("PR001", "ST001", "2021-12-01", "Paid");

SELECT StaffID, StaffName, StaffGender, StaffDOB, StaffSalary
FROM msstaff
WHERE StaffName LIKE "J%";

SELECT a.CustomerID, upper(a.CustomerName), c.TransactionID
FROM mscustomer as a 
JOIN transactionheader as b 
ON a.CustomerID = b.CustomerID
JOIN transactiondetail as c 
ON b.TransactionID = c.TransactionID
WHERE
c.TeaID IN ("TA002", "TA003") AND
c.Quantity > 1;

SENGAJA PAKE BEGIN DAN ROLLBACK, MAIN AMAN

BEGIN;

SELECT * FROM transactionheader;

DELETE mscustomer
FROM mscustomer
JOIN transactionheader
ON mscustomer.CustomerID = transactionheader.CustomerID
WHERE year (transactionheader.TransactionDate) = 2021;




SELECT * FROM transactionheader;

ROLLBACK;




