select advertising_channel, money_spent
from uber_advertising
where money_spent > 100,000
and year = '2019';
