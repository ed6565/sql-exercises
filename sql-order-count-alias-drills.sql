-- 1. All records, sorted
-- oldest to newest
SELECT *
FROM planes
ORDER BY year;

-- 2. All records, sorted by manufacturer
-- Z to A
SELECT *
FROM planes
ORDER BY manufacturer DESC;

-- 3. All records, sorted oldest to newest
-- then manufacturer A-Z, then model A-Z.
SELECT *
FROM planes
ORDER BY year, manufacturer, model;

-- 4. All records, sorted low to high
-- by engines, then high to low by seats. 
SELECT *
FROM planes
ORDER BY engines, seats DESC;

-- 5. All records of planes built
-- before 2000, sorted A-Z by engine.
SELECT *
FROM planes
WHERE year < 2000
ORDER BY engine; 

-- 6. Top 10 records sorted
-- high to low by seats
SELECT *
FROM planes
ORDER BY seats DESC
LIMIT 10; 

-- 7. Top 10 records of planes
-- built before 1990, sorted
-- high to low by seats
SELECT *
FROM planes 
WHERE year < 1990
ORDER BY seats DESC
LIMIT 10; 

-- 8. Count number of all records,
-- number of speed records, and number of
-- year records
SELECT COUNT(*) AS count_total, 
	COUNT(speed) AS count_speed, 
	COUNT(year) AS count_year
FROM planes; 

-- 9. Count number of speed records
-- where year is before 1980
SELECT COUNT(speed) AS count_speed
FROM planes
WHERE year < 1980; 

-- 10. List distinct record values
-- for engine. 
SELECT DISTINCT	engine
FROM planes; 

-- 11. List distinct record values
-- for year/manufacturer/model,
-- sorted by manufacturer from A-Z, oldest to newest,
-- then model from A-Z 
SELECT DISTINCT year, manufacturer, model
FROM planes
ORDER BY manufacturer, year, model; 