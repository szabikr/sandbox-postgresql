-- Inner Joins: Only rows that match the JOIN criteria will show up in our result

-- Observer that both the name and city appear in the result
SELECT * FROM weather JOIN cities ON city = name;

-- Being clear on what columns to return
SELECT city, temp_lo, temp_hi, prcp, date, location
    FROM weather JOIN cities ON city = name;

-- Specifying from which table each column are
SELECT weather.city, weather.temp_lo, weather.temp_hi, weather.prcp, weather.date,
       cities.location
    FROM weather JOIN cities ON weather.city = cities.name;

-- While this query works perfectly fine we mix responsibilities because now the
-- WHERE clause have to deal with merging the tables together as well as 
-- evaluate any other condition
--
-- Should be avoided
SELECT * 
    FROM weather, cities
    WHERE city = name;


-- Outer Joins:

-- All rows from left table (weather) will be in the result at least once
-- Whereas the table on the right (cities) will have only those rows that match some rows of the right table
-- And if there's no match on the right table (cities) then the columns for the right table will be empty (null)
SELECT * 
    FROM weather LEFT OUTER JOIN cities ON weather.city = cities.name;

-- All rows from the right table (cities) will be in the result at least once
-- Whereare the table on the left (weather) will have only those rows that match some rows of the left table
-- And if there's no match on the right table (weather) then the columns for the left table will be empty (null)
SELECT *
    FROM weather RIGHT OUTER JOIN cities ON weather.city = cities.name;

-- All rows from both tables will be present in the result as many times as there are matches
-- If either of the tables don't have matches empty (null) columns will be returned
SELECT * 
    FROM weather FULL OUTER JOIN cities ON weather.city = cities.name;


-- Self Joins:

-- Relabeling weather table instances to w1 and w2
SELECT w1.city, w1.temp_lo AS low, w1.temp_hi AS high,
       w2.city, w2.temp_lo AS low, w2.temp_hi AS high
    FROM weather w1 JOIN weather w2
        ON w1.temp_lo < w2.temp_lo AND w1.temp_hi > w2.temp_hi;

-- Relabeling works in other scenarios as well
-- This is a frequent style of abbreviation
SELECT * 
    FROM weather w JOIN cities c ON w.city = c.name;
