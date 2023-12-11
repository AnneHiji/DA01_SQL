--ex1: https://www.hackerrank.com/challenges/average-population-of-each-continent/problem?isFullScreen=true


select B.Continent,round(avg(A.population),0) 
from City A 
join Country B
on A.CountryCode=B.Code
where City.ID is not NULL
Group by B.Continent;

--ex2: https://datalemur.com/questions/signup-confirmation-rate

SELECT Round(SUM(case when B.signup_action = 'Confirmed' then 1 else 0 end)/COUNT(signup_action),2)
from emails as A 
RIGHT JOIN texts as B
on A.email_id = B.email_id
GROUP BY B.signup_action;

--ex3:
