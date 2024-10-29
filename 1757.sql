-- Write your MySQL query statement below
select product_id from products
where upper(low_fats) = 'Y' AND upper(recyclable) = 'Y'