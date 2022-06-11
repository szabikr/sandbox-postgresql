-- Values for each column has to be in a specific order for this to work
INSERT INTO weather VALUES ('San Francisco', 46, 50, 0.25, '1994-11-27');

INSERT INTO cities VALUES ('San Francisco', '(-194.0, 53.0)');

-- Explicitly naming the columns is a much more accepted way of doing inserts 
-- cuz it doesn't have to change if a new column is introduced in the future
INSERT INTO weather (city, temp_lo, temp_hi, prcp, date)
    VALUES ('San Francisco', 43, 57, 0.0, '1994-11-29');

-- The columns, if specified, don't have to be in the same order as they were when the table was created
INSERT INTO weather (date, city, temp_hi, temp_lo)
    VALUES ('1994-11-29', 'Hayward', 54, 37);
