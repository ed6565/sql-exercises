--selects all fields (columns) in the airports table--

SELECT *
FROM airports;

--selects just faa, name, lat, and lon--

SELECT faa, name, lat, lon
FROM airports;

--does the same as before, but changes the name of lat and lon--

SELECT faa, name, lat AS latitude, lon AS longitude
FROM airports;

--now rounds lat and lon to two decimal places--

SELECT faa, name, ROUND(lat, 2) AS latitude, ROUND(lon, 2) AS longitude
FROM airports;

--converts F to C--
SELECT ROUND((temp - 32) * 5/9, 2) AS temp_celsius
FROM weather; 

--says how many people a plane can seat--
SELECT CONCAT('This plane seats ', seats, ' people') AS plane_seats
FROM planes;

--includes model and seats--

SELECT CONCAT('The ', year, ' ', INITCAP(manufacturer), ' ', model, ' seats', seats, ' people') AS model_seats
FROM planes;
