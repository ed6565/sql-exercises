-- 1. Built since the year 2000
SELECT *
FROM planes
WHERE year >= 2000;
-- 2025 records

-- 2. Where the manufacturer is BOEING
SELECT *
FROM planes
WHERE manufacturer = 'BOEING';
-- 1630 records

-- 2a. What happens if you search
-- for "Boeing"?
SELECT *
FROM planes
WHERE manufacturer = 'Boeing';
-- 0 records

-- 3. Built between 1980 and 1990
SELECT *
FROM planes
WHERE year BETWEEN 1980 AND 1990;
-- 315 records

-- 4. Where the manufacturer is either
-- CESSNA, BOEING or AIRBUS
SELECT *
FROM planes
WHERE manufacturer IN('CESSNA','BOEING','AIRBUS'); 
-- 1975 records

-- 5. Where the year field is NULL
SELECT *
FROM planes
WHERE year IS NULL;
-- 70 records

-- 6. Where the speed field is not NULL
SELECT *
FROM planes
WHERE speed IS NOT NULL;
-- 23 records

-- 7. That do not seat between 50 and 200
SELECT *
FROM planes
WHERE seats NOT BETWEEN 50 AND 200; 
-- 417 records

-- 8. Where the engine field starts with
-- "Turbo"
SELECT *
FROM planes
WHERE engine LIKE 'Turbo%';
-- 3292 records

-- 9. Where the model name is in format
-- "XXX-XXX"
SELECT *
FROM planes
WHERE model LIKE '___-___';
-- 1496 records

-- 10. That were built before 1980
-- and seat 100
SELECT *
FROM planes
WHERE year < 1980 AND seats > 100;
-- 9 records


-- 11. That were built after 2000 
-- or have a Reciprocating engine
SELECT *
FROM planes
WHERE year > 2000 OR engine = 'Reciprocating'; 
-- 1806 records


-- 12. That were built between 1980 and 1990,
-- are not two-engine planes, have a non-missing
-- value for speed, and was either manufactured
-- by BOEING or CESSNA. 
SELECT *
FROM planes
WHERE year BETWEEN 1980 AND 1990
	AND engines <> 2
	AND speed IS NOT NULL
AND manufacturer IN('BOEING','CESSNA'); 
-- 1 record

-- 13. That were either built between 1980 and 1990,
-- and are not two-engine planes, and have a non-missing
-- value for speed, or were manufactured either by
-- BOEING or CESSNA
SELECT *
FROM planes
WHERE year BETWEEN 1980 AND 1990
	AND engines <> 2
	AND speed IS NOT NULL
OR manufacturer IN('BOEING','CESSNA'); 
-- 1639 records

-- 14. That were both built between 1980 and 1990,
-- and are not two-engine planes, and also have
-- non-missing values for speed or were manufactured
-- either by BOEING or CESSNA
SELECT *
FROM planes
WHERE year BETWEEN 1980 AND 1990
	AND engines <> 2
	AND (speed IS NOT NULL
OR manufacturer IN('BOEING','CESSNA')); 
-- 2 records
