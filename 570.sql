# Write your MySQL query statement below
SELECT emp.Name
FROM Employee emp
JOIN (
	SELECT ManagerId 
	FROM Employee
	GROUP BY ManagerId
	HAVING COUNT(ManagerId) >= 5
) e2
ON emp.Id = e2.ManagerId;