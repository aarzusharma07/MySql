-- =========================================================
-- Question: Match Employees With Their Salaries
-- =========================================================
--
-- A company stores employee details and salary information
-- in two separate tables.
--
-- Return only employees who have a corresponding salary record.
--
-- Return:
-- employee_id
-- name
-- salary
--
-- Requirement:
-- Use INNER JOIN.
--
-- =========================================================
-- Solution  expliocit join 
-- =========================================================

--SELECT e.employee_id,
 --      e.name,
 --      s.salary
--FROM Employees e
--INNER JOIN Salaries s
--ON e.employee_id = s.employee_id;


-- =========================================================
-- Explanation
-- =========================================================
--
-- Employees and Salaries are joined using employee_id.
--
-- INNER JOIN returns only those employees whose
-- employee_id exists in both tables.
--
-- Therefore, employees without a salary record are excluded.
--
-- =========================================================
-- Key Concept
-- =========================================================
--
-- INNER JOIN = returns only matching records from both tables.
--
-- Pattern:
--
-- SELECT columns
-- FROM table1
-- INNER JOIN table2
-- ON table1.common_column = table2.common_column;


---implicit join 

SELECT e.employee_id, e.name, s.salary
FROM Employees e, Salaries s
WHERE e.employee_id = s.employee_id;
