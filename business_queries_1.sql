-- Бизнес заявки част 1 --
ALTER TABLE Employees ADD salary INT;
UPDATE Employees SET salary = dbms_random.value(1000, 9500) WHERE employee_id BETWEEN 1 AND 99;

ALTER TABLE Employees ADD years_of_service INT;
UPDATE Employees SET years_of_service = dbms_random.value(1, 10) WHERE employee_id BETWEEN 1 AND 99;


-- 1. Да се създаде листинг на имената на всички отдели в банката
SELECT department_title FROM Departments;

-- 2. Да се създаде листинга на месечните възнаграждения на всички
-- служители, в листинга е необходимо да присъстват двете имена
-- на служителя и неговата заплата
SELECT first_name, surname, salary FROM Employees;

-- 3. Да се създаде листинг на всички служители в банката в листинга
-- трябва да присъстват двете имена на служителите и новогенерирани
-- имейли, които да се състоят от конкатенирани първото и второ име
-- на служителя разделени с точка. Имената на служителите трябва да
-- бъдат с малки букви в имейла. Домейна на компанията е
-- bankoftomarow.bg
SELECT e.first_name, e.surname, LOWER(e.first_name || '.' || e.surname || '@bankoftomarow.bg') AS new_email
FROM Employees e;

-- 4. Намерете всички служители които банката дефинира като старши
-- служители. Старши служители са всички които работят в компанията
-- от 5 години.
SELECT * FROM Employees WHERE years_of_service >= 5;

-- 5. Намерете всички служители, чиито имена (първо / второ или
-- допълнително съдържат буквата l)
SELECT * FROM Employees WHERE first_name LIKE '%l%' OR surname LIKE '%l%' OR additional_name LIKE '%l%';
-- ============================ --
