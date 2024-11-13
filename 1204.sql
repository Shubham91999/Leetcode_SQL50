-- Write your MySQL query statement below
-- WITH Boarding AS (
--     SELECT person_name, weight,
--            SUM(weight) OVER (ORDER BY turn) AS total_weight
--     FROM Queue
-- )
-- SELECT person_name
-- FROM Boarding
-- WHERE total_weight <= 1000
-- ORDER BY total_weight DESC
-- LIMIT 1;

select a.person_name
from Queue a join Queue b
on a.turn >= b.turn
group by a.turn
having sum(b.weight) <= 1000
order by a.turn desc
limit 1