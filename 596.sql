-- Write your MySQL query statement below

select class from
    (select class, count(class) as cnt
    from Courses
    group by class) as s
where s.cnt >= 5 

-- SELECT class
-- FROM Courses
-- GROUP BY class
-- HAVING COUNT(student) >= 5;