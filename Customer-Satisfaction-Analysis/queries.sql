SELECT *
From Airline_customer_satisfaction;

SELECT
"Type of Travel"
"satisfaction",
count(*) AS total
From Airline_customer_satisfaction
Group By "Type of Travel", satisfaction;

Select *
From Airline_customer_satisfaction
Limit 1;

SELECT
"Type of Travel",
"satisfaction",
Count(*) AS total
From Airline_customer_satisfaction
Group By "Type of Travel", "satisfaction";

SELECT 
"Satisfaction",
ROUND(AVG("Inflight wifi service"), 2) AS wifi,
ROUND(AVG("On-board service"), 2) AS service,
ROUND(AVG("Cleanliness"), 2) AS cleanliness,
ROUND(AVG("Seat comfort"), 2) AS comfort,
ROUND(AVG("Inflight entertainment"), 2) AS entertainment
FROM airline_customer_satisfaction
GROUP BY "Satisfaction";

SELECT 
"Class",
COUNT(*) AS total_customers,
ROUND(AVG("Cleanliness"),2) AS cleanliness,
ROUND(AVG("On-board service"),2) AS service,
ROUND(AVG("Seat comfort"),2) AS comfort
FROM airline_customer_satisfaction
GROUP BY "Class"
ORDER BY total_customers DESC;

SELECT 
"Satisfaction",
ROUND(AVG("Departure Delay in Minutes"),2) AS avg_dep_delay,
ROUND(AVG("Arrival Delay in Minutes"),2) AS avg_arr_delay
FROM airline_customer_satisfaction
GROUP BY "Satisfaction";

