CREATE TABLE weather (
    city        varchar(80),
    temp_lo     int,            -- low temperature
    temp_hi     int,            -- high temperature
    prcp        real,           -- chance for precipitation
    date        date
);

CREATE TABLE cities (
    name        varchar(80),
    location    point
);
