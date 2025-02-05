
-- Top 5 highest-rated drivers in Lagos

use ride_sharing_analytic;

-- SELECT *
-- FROM DRIVERS
-- ORDER BY RATING ASC LIMIT 5;

-- Riders with more than 5 rides in the last 30 days in Lagos
 
-- SELECT RIDER_ID
-- FROM RIDERS
-- GROUP BY RIDER_ID
-- HAVING COUNT(*) > 5;

-- Total revenue for the past month for Lagos rides
-- SELECT SUM(AMOUNT) AS TOTAL_REVENUE 
-- FROM PAYMENTS;

-- SELECT DRIVERS.DRIVER_ID, DRIVERS.NAME, SUM(RIDES.FARE) AS TOTAL_REVENUE
-- FROM DRIVERS
-- JOIN RIDES ON DRIVERS.DRIVER_ID = RIDES.DRIVER_ID
-- GROUP BY DRIVERS.DRIVER_ID, DRIVERS.NAME
-- ORDER BY TOTAL_REVENUE
-- LIMIT 1


-- Find rides where the fare is more than 50% higher or lower than the average fare
-- SELECT RIDE_ID, FARE, (SELECT AVG(FARE) FROM RIDES) AS AVERAGE_FARE
-- FROM RIDES
-- WHERE FARE > (SELECT AVG(FARE) * 0.5 FROM RIDES)  OR FARE < (SELECT AVG(FARE) * 0.5 FROM RIDES)

-- Find riders in Lagos who rated their drivers less than 3 on average
-- SELECT RIDERS.RIDER_ID, RIDERS.NAME , AVG(RIDES.RATING)  AS AVERAGE_RATING
-- FROM RIDERS
-- JOIN RIDES ON RIDERS.RIDER_ID = RIDES.RIDER_ID
-- GROUP BY RIDERS.RIDER_ID, RIDERS.NAME
-- HAVING AVERAGE_RATING < 3;

-- Find the top 5 Lagos neighborhoods with the highest average fare
SELECT RIDERS.CITY, AVG(RIDES.FARE) AS AVERAGE_FARE
FROM RIDERS
JOIN RIDES ON RIDERS.RIDER_ID = RIDES.RIDER_ID
GROUP BY RIDERS.CITY
ORDER BY AVERAGE_FARE DESC
LIMIT 5;

-- Drivers in Lagos who have not received any rides in the last 30 days
-- SELECT DRIVER_ID, NAME
-- FROM DRIVERS
-- WHERE 

-- Rides in Lagos with the longest distance (top 5)
-- SELECT RIDE_ID, DISTANCE_KM, DRIVER_ID, RIDER_ID
-- FROM RIDES
-- ORDER BY DISTANCE_KM desc
-- LIMIT 5;


-- Find the number of rides each driver in Lagos has had, sorted by the most rides
 SELECT DRIVER_ID, TOTAL_RIDES
 FROM DRIVERS
 ORDER BY TOTAL_RIDES













