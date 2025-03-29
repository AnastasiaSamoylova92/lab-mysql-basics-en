
USE bank;

-- query 1
SELECT client_id
FROM `client`
WHERE district_id = 1
ORDER BY client_id ASC
LIMIT 5;

-- query 2
SELECT client_id
FROM bank.client
WHERE district_id = 72
ORDER BY client_id DESC
LIMIT 1;

-- query 3
SELECT amount
FROM bank.loan
ORDER BY amount ASC
LIMIT 3;

-- query 4
SELECT DISTINCT status
FROM bank.loan
ORDER BY status ASC;

-- query 5
SELECT loan_id
FROM bank.loan
ORDER BY payments DESC
LIMIT 1;

-- query 6 
SELECT account_id, amount
FROM bank.loan
ORDER BY account_id ASC
LIMIT 5;

-- query 7 
SELECT account_id
FROM bank.loan
WHERE duration = 60
ORDER BY amount ASC
LIMIT 5;

-- query 8
SELECT DISTINCT k_symbol
FROM bank.`order`;

-- query 9 
SELECT order_id
FROM `order`
WHERE account_id = 34;

-- query 10
SELECT DISTINCT account_id
FROM `order`
WHERE order_id BETWEEN 29540 AND 29560;

-- query 11
SELECT amount
FROM `order`
WHERE account_to = 30067122;

-- query 12
SELECT trans_id, date, type, amount
FROM trans
WHERE account_id = 793
ORDER BY date DESC
LIMIT 10;
 
-- query 13
SELECT district_id, COUNT(*) as count_clients
FROM client
WHERE district_id < 10
GROUP BY district_id
ORDER BY district_id;

-- query 14
SELECT type, COUNT(*) as count_cards
FROM card
GROUP BY type
ORDER BY count_cards DESC;

-- query 15
SELECT account_id, SUM(amount) as total_loan_amount
FROM loan
GROUP BY account_id
ORDER BY total_loan_amount DESC
LIMIT 10;

-- query 16
SELECT DATE(date), COUNT(loan_id) AS nr_loans
FROM loan
WHERE date < 930907
GROUP BY date
ORDER BY date DESC;

-- query 17
SELECT date, duration, COUNT(loan_id) AS nr_loans
FROM loan
WHERE DATE(date) BETWEEN '1997-12-01' AND '1997-12-31'
GROUP BY date, duration
ORDER by date, duration;

-- query 18
SELECT account_id, type, SUM(amount) AS total_amount_trans
FROM trans
WHERE account_id = 396
GROUP BY account_id, type
ORDER BY type;

