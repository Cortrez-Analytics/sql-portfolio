PRAGMA table_info(airline_delay);

SELECT *
FROM airline_delay;

SELECT airport,
SUM(arr_del15) AS total_delays
FROM airline_delay
GROUP BY airport
ORDER BY total_delays DESC;

SELECT airport,
SUM(arr_del15) * 1.0 / SUM(arr_flights) AS delay_rate
FROM airline_delay
GROUP BY airport
ORDER BY delay_rate DESC;

SELECT carrier_name,
SUM(arr_del15) * 1.0 / SUM(arr_flights) AS delay_rate
FROM airline_delay
GROUP BY carrier_name
ORDER BY delay_rate DESC;

SELECT 
SUM(carrier_ct) AS carrier_delays,
SUM(weather_ct) AS weather_delays,
SUM(nas_ct) AS nas_delays,
SUM(security_ct) AS security_delays,
SUM(late_aircraft_ct) AS late_aircraft_delays
FROM airline_delay;

SELECT *
FROM airline_delay;


SELECT year,
SUM(arr_del15) AS total_delays,
SUM(arr_flights) AS total_flights,
ROUND(SUM(arr_del15) * 1.0 / SUM(arr_flights), 3) AS delay_rate
FROM airline_delay
GROUP BY year
ORDER BY year;

SELECT *
FROM airline_delay;
