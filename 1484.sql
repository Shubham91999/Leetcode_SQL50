# Write your MySQL query statement below
select sell_date, count(distinct product) as num_sold,
GROUP_CONCAT(DISTINCT product) as products
from activities a1
group by sell_date
