1). USE nama_database;
===================
2) SELECT th.transaction_id, s.staff_id, s.staff_name, s.staff_dob
FROM transaction_header th JOIN ms_staff s ON th.staff_id = s.staff_id
WHERE YEAR(s.staff_dob) < 2000;
===================
3) -- query 1
SELECT DISTINCT c.customer_id, MONTHNAME(c.customer_dob) AS birth_month
FROM ms_customer c JOIN transaction_header th ON c.customer_id = th.customer_id

UNION

-- query 2
SELECT DISTINCT c.customer_id, MONTHNAME(c.customer_dob) AS birth_month
FROM ms_customer c
WHERE MONTHNAME(c.customer_dob) IN ("February", "March", "April");

===================
4) 
-- query 1
SELECT DISTINCT LOWER(s.staff_name) AS name, s.staff_phone AS phone_number
FROM transaction_header th JOIN ms_staff s ON th.staff_id = s.staff_id
WHERE DATE_FORMAT(th.transaction_date, "%j") > 100

UNION

-- query 2
SELECT DISTINCT c.customer_name AS name, c.customer_phone AS phone_number
FROM transaction_header th JOIN ms_customer c 
WHERE 
	RIGHT(c.customer_id, 1) % 2 = 0;
===================
5) ALTER TABLE ms_car
DROP COLUMN car_capacity;
===================
6) UPDATE transaction_header th JOIN transaction_detail td ON th.transaction_id = td.transaction_id JOIN ms_car mc ON td.car_id = mc.car_id
SET mc.car_rent_price = mc.car_rent_price + 50000
WHERE YEAR(transaction_date) = 2022 AND car_name LIKE '%Sport%';
===================
7)
SELECT date_format(th.transaction_date, "%M-%d-%Y") as transaction_date, c.car_id, c.car_name
FROM transaction_header th 
	JOIN transaction_detail td ON th.transaction_id = td.transaction_id
    JOIN ms_car c ON td.car_id = c.car_id
WHERE
	td.duration > 1
    AND weekofyear(th.transaction_date) < 5;
===================
8) 
SELECT th.transaction_id, MONTHNAME(th.transaction_date), s.staff_name
FROM transaction_header th 
	JOIN ms_staff s ON th.staff_id = s.staff_id
	JOIN transaction_detail td ON th.transaction_id = td.transaction_id 
ORDER BY s.staff_name DESC;
===================
9)
CREATE VIEW extra_payment_for_weekend_view AS
SELECT ms.staff_id as staff_id, concat
("Rp ", td.duration * 10000) as extra_payment


FROM ms_staff ms 
	JOIN transaction_header th ON ms.staff_id = th.staff_id
    JOIN transaction_detail td ON th.transaction_id = td.transaction_id
WHERE
	dayname(th.transaction_date) LIKE "Sunday";
===================
10)
create view extra_driver_promo_view as 
SELECT th.transaction_id, concat(c.car_name, " extra driver") as rented
FROM ms_car c 
	JOIN transaction_detail td ON c.car_id = td.car_id
    JOIN transaction_header th ON th.transaction_id = td.transaction_id
WHERE
	td.duration * c.car_rent_price > 2000000
    AND MONTHNAME(th.transaction_date) LIKE "September"
    AND SUBSTRING(th.transaction_date, 1, 4) like "2022";