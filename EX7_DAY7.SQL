SELECT DISTINCT
activity_date AS day,
user_id AS active_users
FROM Activity
WHERE activity_date BETWEEN '2019-06-27' AND '2019-07-27';

