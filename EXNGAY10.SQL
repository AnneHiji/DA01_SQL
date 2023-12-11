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
LEFT JOIN texts as B
on A.email_id = B.email_id
GROUP BY B.signup_action;

--ex3: https://datalemur.com/questions/time-spent-snaps
SELECT age_bucket, ROUND(TIME_SEND/(TIME_SEND+TIME_OPEN)*100,2) AS send_perc,
ROUND(TIME_OPEN/(TIME_SEND+TIME_OPEN)*100,2) AS open_perc
FROM 
( SELECT B.age_bucket, 
SUM(CASE WHEN A.activity_type = 'OPEN' THEN TIMESPENT ELSE 0 END) AS TIME_OPEN,
SUM(CASE WHEN A.activity_type = 'SEND' THEN TIMESPENT ELSE 0 END) AS TIME_SEND
FROM activities A
LEFT JOIN age_breakdown B
ON A.user_id=B.user_id
GROUP BY B.age_bucket)

--4: https://datalemur.com/questions/supercloud-customer

