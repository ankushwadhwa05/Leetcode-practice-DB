SELECT contest_id,ROUND(COUNT(user_id)/(SELECT COUNT(user_id) FROM Users)*100,2) as percentage
from Register 
group by contest_id
order by percentage desc,contest_id asc