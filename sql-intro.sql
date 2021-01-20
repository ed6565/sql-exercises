SELECT *
FROM houseprices;

SELECT saleprice/lotarea AS price_per_unit
FROM houseprices;

SELECT CONCAT('This house was built in ', yearbuilt, '.')
FROM houseprices