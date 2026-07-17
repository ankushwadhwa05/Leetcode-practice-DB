WITH CTE AS (SELECT id,num,LAG(num,1) over(order by id) as l1,Lag(num,2) over(order by id) as l2
from Logs)
SELECT DISTINCT num as ConsecutiveNums
FROM CTE 
WHERE num=l1 and l1=l2

