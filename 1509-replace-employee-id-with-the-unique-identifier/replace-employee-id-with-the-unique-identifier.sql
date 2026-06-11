# Write your MySQL query statement below
SELECT u.unique_id as unique_id,e.name
from Employees e
Left outer join EmployeeUNI u on u.id=e.id