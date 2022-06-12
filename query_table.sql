-- This type of SELECT is not great for production
SELECT * FROM weather;

SELECT city, temp_lo, temp_hi, prcp, date FROM weather;

-- the AS key word specifies the name of the newly created column
SELECT city, (temp_lo + temp_hi) / 2 AS temp_avg, date FROM weather;

-- Query the weather in San Francisco on rainy days
SELECT * FROM weather
    WHERE city = 'San Francisco' AND prcp > 0.0;

-- Return values in sorted order
SELECT * FROM weather
    ORDER BY city;

-- Ordering by multiple columns
SELECT * FROM weather
    ORDER BY city, temp_lo;

-- Removes all duplicates from the result
SELECT DISTINCT city
    FROM weather;

SELECT DISTINCT city
    FROM weather
    ORDER BY city;