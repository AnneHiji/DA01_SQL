--ex1:
select B.Continent,round(avg(A.population),0) 
from City A 
join Country B
on A.CountryCode=B.Code
where City.ID is not NULL
Group by B.Continent;
