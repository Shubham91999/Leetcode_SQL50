
# Write your MySQL query statement below
-- SELECT
--   d.Name AS 'Department'
--   ,e.Name AS 'Employee'
--   ,e.Salary
-- FROM Employee e
-- JOIN Department d
--   ON e.DepartmentId = d.Id
-- WHERE
--   (SELECT COUNT(DISTINCT e2.Salary)
--   FROM
--     Employee e2
--   WHERE
--     e2.Salary > e.Salary
--       AND e.DepartmentId = e2.DepartmentId
--       ) < 3;

-- MS SQL: window function version
WITH department_ranking AS (
SELECT
  e.Name AS Employee
  ,d.Name AS Department
  ,e.Salary
  ,DENSE_RANK() OVER (PARTITION BY DepartmentId ORDER BY Salary DESC) AS rnk
FROM Employee AS e
JOIN Department AS d
ON e.DepartmentId = d.Id
)
SELECT
  Department
  ,Employee
  ,Salary
FROM department_ranking
WHERE rnk <= 3
ORDER BY Department ASC, Salary DESC;