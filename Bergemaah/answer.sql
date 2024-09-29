CREATE TABLE Staff
(
    StaffID char(5) PRIMARY KEY CHECK(StaffID REGEXP "^SF[0-9][0-9][0-9]$"),
    StaffName varchar(255),
    StaffDOB date not null,
    StaffGender varchar(20) not null
);

INSERT INTO Staff
VALUES
("SF001", "Minarmich", "2001-01-03", "Female");

SELECT a.SpeakerName as "Speaker Name", b.SpeakerBrandName as Brand, SpeakerPrice as Price
FROM speaker as a JOIN speakerbrand as b 
ON a.SpeakerBrandID = b.SpeakerBrandID
WHERE a.SpeakerPrice BETWEEN 1000000 AND 5000000;

SELECT b.TransactionID as TransactionID, UPPER(a.CustomerName) as "Customer Name", b.TransactionDate as TransactionDate
FROM customer AS a JOIN trheader AS b 
ON a.CustomerID = b.CustomerID
WHERE
	a.CustomerName LIKE "%i%" AND
    a.CustomerGender LIKE "Male";

BEGIN;

SELECT a.SpeakerID, a.SpeakerBrandID, a.SpeakerName, a.SpeakerPrice
FROM speaker AS a JOIN trdetail AS b
ON a.SpeakerID = b.SpeakerID;

UPDATE speaker
JOIN trdetail ON speaker.SpeakerID = trdetail.SpeakerID
SET speaker.SpeakerPrice = speaker.SpeakerPrice + 1000000
WHERE trdetail.Quantity > 3;

SELECT a.SpeakerID, a.SpeakerBrandID, a.SpeakerName, a.SpeakerPrice
FROM speaker AS a JOIN trdetail AS b
ON a.SpeakerID = b.SpeakerID;


ROLLBACK;


















