select distinct city 
from station 
where city Not like 'A%' 
and city Not like 'E%' 
and city Not like 'I%' 
and city Not like 'o%' 
and city not like 'U%';
