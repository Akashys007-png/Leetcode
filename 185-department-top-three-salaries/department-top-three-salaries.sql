-- -- # Write your MySQL query statement below
-- select D.name as Department, E.name as Employee , E.salary as Salary
-- from Department D
-- join Employee E
-- on D.id = E.departmentId
-- where E.salary IN
-- (
--     select distinct salary
--     from employee e2
--     where e2.departmentID = e.departmentID
--     order by e2.salary desc
-- );
WITH RankedSalaries AS (
  SELECT 
    E.id,
    E.name AS Employee,
    E.salary,
    E.departmentId,
    D.name AS Department,
    DENSE_RANK() OVER (
      PARTITION BY E.departmentId
      ORDER BY E.salary DESC
    ) AS salary_rank
  FROM Employee E
  JOIN Department D ON E.departmentId = D.id
)
SELECT 
  Department, 
  Employee, 
  salary AS Salary
FROM RankedSalaries
WHERE salary_rank <= 3;
