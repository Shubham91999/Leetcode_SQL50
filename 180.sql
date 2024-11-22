--Write your MySQL query statement below
SELECT distinct num as ConsecutiveNums
FROM (
    SELECT id, num,
           LAG(num, 1) OVER (ORDER BY id) AS prev_num,
           LEAD(num, 1) OVER (ORDER BY id) AS next_num
    FROM Logs
) AS consecutive
WHERE num = prev_num AND num = next_num;