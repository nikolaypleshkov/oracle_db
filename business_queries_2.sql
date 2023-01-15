
-- Бизнес заявки част 2 --

-- Да се реализира таблица за съхранение на данните за движението
-- на служителите между отдели.

CREATE TABLE EmployeeTraffic (
  movement_id INT PRIMARY KEY,
  employee_id INT,
  department_id INT,
  start_date DATE,
  end_date DATE,
  FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
  FOREIGN KEY (department_id) REFERENCES Departments(department_id)
);

-- 1. Да се реализират примерни insert-a в тази таблица
INSERT INTO EmployeeTraffic (movement_id, employee_id, department_id, start_date, end_date)
VALUES (1001, 2, 205, '2020-01-01', '2022-09-01');
INSERT INTO EmployeeTraffic (movement_id, employee_id, department_id, start_date, end_date)
VALUES (1002, 3, 203, '2020-01-01', '2022-09-01');
INSERT INTO EmployeeTraffic (movement_id, employee_id, department_id, start_date, end_date)
VALUES (1005, 4, 205, '2020-01-01', '2022-09-01');
INSERT INTO EmployeeTraffic (movement_id, employee_id, department_id, start_date, end_date)
VALUES (1004, 5, 201, '2020-01-01', '2022-09-01');
INSERT INTO EmployeeTraffic (movement_id, employee_id, department_id, start_date, end_date)
VALUES (1006, 5, 203, '2020-01-01', '2022-02-01');
INSERT INTO EmployeeTraffic (movement_id, employee_id, department_id, start_date, end_date)
VALUES (1007, 12, 201, '2022-12-01', '2023-01-01');


-- 2. Да се реализира листинг на служителите, които са работили в повече
-- от един отдел в рамките на последните два месеца
SELECT e.first_name, e.surname, m.department_id
FROM Employees e
JOIN EmployeeTraffic m ON e.employee_id = m.employee_id
WHERE m.end_date > SYSDATE - INTERVAL '2' MONTH;

-- 3. Да се реализира листинг на служителите които са работили само в
-- един отдел откакто са част от структурата на компанията.
SELECT e.first_name, e.surname, m.department_id
FROM Employees e
JOIN EmployeeTraffic m ON e.employee_id = m.employee_id
GROUP BY e.employee_id, e.first_name, e.surname, m.department_id
HAVING COUNT(*) = 1;

-- ============================ --