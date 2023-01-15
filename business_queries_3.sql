
-- Бизнес заявки част 3 --

ALTER TABLE Employees ADD status VARCHAR(255);
UPDATE Employees SET status = 'fired' WHERE employee_id = 23;
UPDATE Employees SET status = 'maternity_leave' WHERE employee_id = 45;
UPDATE Employees SET status = 'leave' WHERE employee_id = 35;
UPDATE Employees SET status = 'sick' WHERE employee_id = 15;
UPDATE Employees SET status = 'fired' WHERE employee_id = 78;
UPDATE Employees SET status = 'fired' WHERE employee_id = 79;


-- 1. Да се реализира листинг показващ всички служители които са били
-- уволнени от компанията
SELECT employee_id, first_name, surname, status FROM Employees WHERE status = 'fired';

-- 2. Да се реализира листинг на всички служители които са в майчинство
-- в момента.
SELECT employee_id, first_name, surname, status FROM Employees WHERE status = 'maternity_leave';


-- 3. Да се реализира листинг на всички служители които са в отпуска
-- / болничен в момента
SELECT employee_id, first_name, surname, status FROM Employees WHERE status IN ('leave', 'sick');

-- 4. Намерете всички служители които нямат ръководител
SELECT e.first_name, e.surname
FROM Employees e
LEFT JOIN Supervisors s ON e.employee_id = s.employee_id
WHERE s.supervisor_id IS NULL;

-- 5. Намерете всички старши служители които получават заплата по висока
-- от 5000 лв. Подредете ги в обратен азбучен ред, като се има предвид
-- тяхното първо име.
SELECT e.first_name, e.surname, e.salary
FROM Employees e
WHERE e.years_of_service >= 5 AND e.salary > 5000
ORDER BY e.first_name DESC;

-- 6. Намерете петимата най-високоплатени служители във всеки отдел.
-- Групирайте ги по отдели.
SELECT e.department, e.first_name, e.surname, e.salary
FROM Employees e
WHERE e.salary = (SELECT MAX(salary) FROM Employees WHERE department = e.department)
ORDER BY e.department, e.salary DESC;

-- 7. Намерете отдела или отделите, в които / които служителите
-- сумарно получават най-ниска заплата.
SELECT d.department_title, AVG(e.salary) AS avg_salary
FROM Departments d
JOIN Employees e ON d.department_id = e.department
GROUP BY d.department_title
HAVING AVG(e.salary) = (SELECT MIN(AVG(e.salary)) FROM Employees e GROUP BY e.department)
ORDER BY avg_salary ASC;

-- 8.Намерете средната заплата във всеки отдел, групирайте по средна
-- заплата и отдел
SELECT d.department_title, AVG(e.salary) AS avg_salary
FROM Departments d
JOIN Employees e ON d.department_id = e.department
GROUP BY d.department_title
ORDER BY avg_salary DESC;

-- ============================ --
