SELECT *
FROM tech_employment_2000_2025;

SELECT year,
SUM(new_hires) AS total_hires
FROM tech_employment_2000_2025
GROUP BY year
ORDER BY year;

SELECT year,
SUM(new_hires) AS total_hires
FROM tech_employment_2000_2025
GROUP BY year
ORDER BY year;

SELECT company,
AVG(hiring_rate_pct) AS avg_hiring_rate
FROM tech_employment_2000_2025
GROUP BY company
ORDER BY avg_hiring_rate DESC;

SELECT year,
SUM(layoffs) AS total_layoffs,
AVG(unemployment_rate_us_pct) AS avg_unemployment
FROM tech_employment_2000_2025
GROUP BY year
ORDER BY year;

SELECT company,
AVG(revenue_billions_usd) AS avg_revenue,
AVG(new_hires) AS avg_hiring
FROM tech_employment_2000_2025
GROUP BY company
