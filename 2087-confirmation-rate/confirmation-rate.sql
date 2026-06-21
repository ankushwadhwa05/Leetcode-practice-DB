# Write your MySQL query statement below
SELECT s.user_id,IFNULL((ROUND((SUM(CASE WHEN c.action='confirmed' THEN 1 ELSE 0 END))/(COUNT(c.user_id)),2)),0)as confirmation_rate
from Confirmations c
RIGHT OUTER JOIN Signups s on s.user_id=c.user_id
GROUP BY s.user_id