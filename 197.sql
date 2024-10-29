-- Write your MySQL query statement below
SELECT 
    w1.Id
FROM 
    Weather w1
LEFT JOIN 
    Weather w2 
ON 
    w1.recordDate = DATE_ADD(w2.recordDate, INTERVAL 1 DAY)
where w2.temperature < w1.temperature
ORDER BY 
    w1.recordDate;