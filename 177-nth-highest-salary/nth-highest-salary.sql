CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (with cte as (
      # Write your MySQL query statement below.
      SELECT *,dense_rank() over (order by salary desc ) as ti
      from Employee
      
  )
  select salary from cte 
  where ti=N
  limit 1

  );
END