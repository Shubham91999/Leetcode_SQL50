-- Write your MySQL query statement below
select max(s.num) as num
from
    (SELECT num
    FROM MyNumbers
    GROUP BY num
    HAVING COUNT(num) = 1) as s
    ;

