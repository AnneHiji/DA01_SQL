select index, yearly_salary
from lyft_drivers
where yearly_salary <= 30,000
or yearly_salary >= 70,000;
