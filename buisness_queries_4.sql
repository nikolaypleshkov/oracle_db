-- Бизнес заявки част 4 --

UPDATE Accounts SET currency = 'BGN' WHERE customer_id = 101;
UPDATE Accounts SET currency = 'BGN' WHERE customer_id = 104;
UPDATE Accounts SET currency = 'BGN' WHERE customer_id = 131;
UPDATE Accounts SET currency = 'BGN' WHERE customer_id = 150;
UPDATE Accounts SET currency = 'BGN' WHERE customer_id = 151;
UPDATE Accounts SET currency = 'BGN' WHERE customer_id = 166;
UPDATE Accounts SET currency = 'BGN' WHERE customer_id = 119;
UPDATE Accounts SET currency = 'BGN' WHERE customer_id = 199;


-- 1. Да се изведат всички клиенти които имат сметки във валута. ( различна
-- от BGN )
SELECT c.customer_id,  c.first_name, c.surname, a.currency
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
WHERE a.currency != 'BGN';

-- 2. Да се изведат всички клиенти които имат сметки с нулево парично
-- салдо. Напълно празни.
SELECT c.first_name, c.surname, a.balance
FROM Customers c
JOIN Accounts a ON c.customer_id = a.customer_id
WHERE a.balance = 0;

-- Да се добави название на сметката на всеки клиент. Названието на
-- сметката му, е името на клиента последвано от думата сметка и
-- валутата на сметката. Актуализирайте всички клиенти.
ALTER TABLE Accounts ADD account_name VARCHAR(255);

UPDATE Accounts
SET account_name = (SELECT c.first_name || ' ' || c.surname || ' ' || 'сметка' || ' ' || currency FROM Customers c WHERE c.customer_id = Accounts.customer_id);

SELECT * FROM Accounts;

-- ============================ --