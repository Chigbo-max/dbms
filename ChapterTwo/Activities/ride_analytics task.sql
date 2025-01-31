
-- Top 5 highest-rated drivers in Lagos

use ride_sharing_analytic;

SELECT *
FROM DRIVERS
ORDER BY RATING ASC LIMIT 5;

-- Riders with more than 5 rides in the last 30 days in Lagos
 
SELECT RIDER_ID
FROM RIDERS
GROUP BY RIDER_ID
HAVING COUNT(*) > 5;

-- Total revenue for the past month for Lagos rides
SELECT SUM(AMOUNT) AS TOTAL_REVENUE 
FROM PAYMENTS








