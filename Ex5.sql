select distinct city
from station
where city like in ('%a' or '%i' or '%e' or '%o' or '%u');
