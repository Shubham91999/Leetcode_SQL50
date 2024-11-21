# Write your MySQL query statement below
-- select salary as SecondHighestSalary
-- from Employee 
-- where salary not in (
--     select max(salary) from employee
-- )
-- order by salary desc 
-- limit 1

-- SELECT 
--     (SELECT salary 
--      FROM Employee 
--      WHERE salary NOT IN (SELECT MAX(salary) FROM Employee) 
--      ORDER BY salary DESC 
--      LIMIT 1) AS SecondHighestSalary;

# Write your MySQL query statement below
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary < (SELECT MAX(salary) FROM Employee);
