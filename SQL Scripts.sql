--- Initially the Dataset "actual_data" was in a wide format with lots of columns - difficult to analyse
-- So, I have converted them into a long format table "agridata" with less columns and inserted the actual data values from the Actual Wide Table

-- << BELOW IS THE CODE FOR IT >> --

-- Step 1: Create the long-format table
CREATE TABLE agridata (
    dist_code INT,
    year INT,
    state_code INT,
    state_name VARCHAR(255),
    dist_name VARCHAR(255),
    crop_name VARCHAR(50),
    area_1000_ha FLOAT,
    production_1000_tons FLOAT,
    yield_kg_per_ha FLOAT
);

-- Step 2: Insert data for each crop

-- RICE
INSERT INTO agridata
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Rice',
`RICE AREA (1000 ha)`, `RICE PRODUCTION (1000 tons)`, `RICE YIELD (Kg per ha)` FROM actual_data;

-- WHEAT
INSERT INTO agridata
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Wheat',
`WHEAT AREA (1000 ha)`, `WHEAT PRODUCTION (1000 tons)`, `WHEAT YIELD (Kg per ha)` FROM actual_data;

-- MAIZE
INSERT INTO agridata
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Maize',
`MAIZE AREA (1000 ha)`, `MAIZE PRODUCTION (1000 tons)`, `MAIZE YIELD (Kg per ha)` FROM actual_data;

-- KHARIF SORGHUM
INSERT INTO agridata
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Kharif Sorghum',
`KHARIF SORGHUM AREA (1000 ha)`, `KHARIF SORGHUM PRODUCTION (1000 tons)`, `KHARIF SORGHUM YIELD (Kg per ha)` FROM actual_data;

-- RABI SORGHUM
INSERT INTO agridata
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Rabi Sorghum',
`RABI SORGHUM AREA (1000 ha)`, `RABI SORGHUM PRODUCTION (1000 tons)`, `RABI SORGHUM YIELD (Kg per ha)` FROM actual_data;

-- SORGHUM
INSERT INTO agridata
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Sorghum',
`SORGHUM AREA (1000 ha)`, `SORGHUM PRODUCTION (1000 tons)`, `SORGHUM YIELD (Kg per ha)` FROM actual_data;

-- PEARL MILLET
INSERT INTO agridata
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Pearl Millet',
`PEARL MILLET AREA (1000 ha)`, `PEARL MILLET PRODUCTION (1000 tons)`, `PEARL MILLET YIELD (Kg per ha)` FROM actual_data;

-- FINGER MILLET
INSERT INTO agridata
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Finger Millet',
`FINGER MILLET AREA (1000 ha)`, `FINGER MILLET PRODUCTION (1000 tons)`, `FINGER MILLET YIELD (Kg per ha)` FROM actual_data;

-- BARLEY
INSERT INTO agridata
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Barley',
`BARLEY AREA (1000 ha)`, `BARLEY PRODUCTION (1000 tons)`, `BARLEY YIELD (Kg per ha)` FROM actual_data;

-- CHICKPEA
INSERT INTO agridata
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Chickpea',
`CHICKPEA AREA (1000 ha)`, `CHICKPEA PRODUCTION (1000 tons)`, `CHICKPEA YIELD (Kg per ha)` FROM actual_data;

-- PIGEONPEA
INSERT INTO agridata
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Pigeonpea',
`PIGEONPEA AREA (1000 ha)`, `PIGEONPEA PRODUCTION (1000 tons)`, `PIGEONPEA YIELD (Kg per ha)` FROM actual_data;

-- MINOR PULSES
INSERT INTO agridata
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Minor Pulses',
`MINOR PULSES AREA (1000 ha)`, `MINOR PULSES PRODUCTION (1000 tons)`, `MINOR PULSES YIELD (Kg per ha)` FROM actual_data;

-- GROUNDNUT
INSERT INTO agridata
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Groundnut',
`GROUNDNUT AREA (1000 ha)`, `GROUNDNUT PRODUCTION (1000 tons)`, `GROUNDNUT YIELD (Kg per ha)` FROM actual_data;

-- SESAMUM
INSERT INTO agridata
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Sesamum',
`SESAMUM AREA (1000 ha)`, `SESAMUM PRODUCTION (1000 tons)`, `SESAMUM YIELD (Kg per ha)` FROM actual_data;

-- RAPESEED AND MUSTARD
INSERT INTO agridata
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Rapeseed and Mustard',
`RAPESEED AND MUSTARD AREA (1000 ha)`, `RAPESEED AND MUSTARD PRODUCTION (1000 tons)`, `RAPESEED AND MUSTARD YIELD (Kg per ha)` FROM actual_data;

-- SAFFLOWER
INSERT INTO agridata
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Safflower',
`SAFFLOWER AREA (1000 ha)`, `SAFFLOWER PRODUCTION (1000 tons)`, `SAFFLOWER YIELD (Kg per ha)` FROM actual_data;

-- CASTOR
INSERT INTO agridata
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Castor',
`CASTOR AREA (1000 ha)`, `CASTOR PRODUCTION (1000 tons)`, `CASTOR YIELD (Kg per ha)` FROM actual_data;

-- LINSEED
INSERT INTO agridata
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Linseed',
`LINSEED AREA (1000 ha)`, `LINSEED PRODUCTION (1000 tons)`, `LINSEED YIELD (Kg per ha)` FROM actual_data;

-- SUNFLOWER
INSERT INTO agridata
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Sunflower',
`SUNFLOWER AREA (1000 ha)`, `SUNFLOWER PRODUCTION (1000 tons)`, `SUNFLOWER YIELD (Kg per ha)` FROM actual_data;

-- SOYABEAN
INSERT INTO agridata
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Soyabean',
`SOYABEAN AREA (1000 ha)`, `SOYABEAN PRODUCTION (1000 tons)`, `SOYABEAN YIELD (Kg per ha)` FROM actual_data;

-- OILSEEDS
INSERT INTO agridata
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Oilseeds',
`OILSEEDS AREA (1000 ha)`, `OILSEEDS PRODUCTION (1000 tons)`, `OILSEEDS YIELD (Kg per ha)` FROM actual_data;

-- SUGARCANE
INSERT INTO agridata
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Sugarcane',
`SUGARCANE AREA (1000 ha)`, `SUGARCANE PRODUCTION (1000 tons)`, `SUGARCANE YIELD (Kg per ha)` FROM actual_data;

-- COTTON
INSERT INTO agridata
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Cotton',
`COTTON AREA (1000 ha)`, `COTTON PRODUCTION (1000 tons)`, `COTTON YIELD (Kg per ha)` FROM actual_data;



-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



-- # NEW SEGMENTED TABLES - << CREATION AND INSERTION >>

--- I have then divided my long format table "agridata"-uncleaned into segments as 5 different tables categorizing them for easy cleaaning --- 
-- and inserted the values accordingly ---

-- << BELOW IS THE CODE FOR IT >> --


--- Cereals Table (cereals_data) --->

CREATE TABLE cereals_data (
    `Dist Code` INT,
    `Year` INT,
    `State Code` INT,
    `State Name` VARCHAR(255),
    `Dist Name` VARCHAR(255),
    `Crop Name` ENUM('Rice', 'Wheat', 'Maize', 'Barley'),
    `Area (1000 ha)` FLOAT,
    `Production (1000 tons)` FLOAT,
    `Yield (Kg per ha)` FLOAT,
    PRIMARY KEY (`Dist Code`, `Year`, `Crop Name`)
);



--- Millets Table (millets_data) --->

CREATE TABLE millets_data (
    `Dist Code` INT,
    `Year` INT,
    `State Code` INT,
    `State Name` VARCHAR(255),
    `Dist Name` VARCHAR(255),
    `Crop Name` ENUM('Kharif Sorghum', 'Rabi Sorghum', 'Sorghum', 'Pearl Millet', 'Finger Millet'),
    `Area (1000 ha)` FLOAT,
    `Production (1000 tons)` FLOAT,
    `Yield (Kg per ha)` FLOAT,
    PRIMARY KEY (`Dist Code`, `Year`, `Crop Name`)
);



--- Pulses & Cash Crops Table (pulses_cashcrops_data) -->

CREATE TABLE pulses_cashcrops_data (
    `Dist Code` INT,
    `Year` INT,
    `State Code` INT,
    `State Name` VARCHAR(255),
    `Dist Name` VARCHAR(255),
    `Crop Name` ENUM('Chickpea', 'Pigeonpea', 'Minor Pulses', 'Sugarcane', 'Cotton'),
    `Area (1000 ha)` FLOAT,
    `Production (1000 tons)` FLOAT,
    `Yield (Kg per ha)` FLOAT,
    PRIMARY KEY (`Dist Code`, `Year`, `Crop Name`)
);



--- Oilseeds Table (oilseeds_data) --->

CREATE TABLE oilseeds_data (
    `Dist Code` INT,
    `Year` INT,
    `State Code` INT,
    `State Name` VARCHAR(255),
    `Dist Name` VARCHAR(255),
    `Crop Name` ENUM('Groundnut', 'Sesamum', 'Rapeseed and Mustard', 'Safflower', 'Castor', 'Linseed', 'Sunflower', 'Soyabean', 'Oilseeds'),
    `Area (1000 ha)` FLOAT,
    `Production (1000 tons)` FLOAT,
    `Yield (Kg per ha)` FLOAT,
    PRIMARY KEY (`Dist Code`, `Year`, `Crop Name`)
);



️--- Horticulture & Fodder Table (horticulture_fodder_data) --->

CREATE TABLE horticulture_fodder_data (
    `Dist Code` INT,
    `Year` INT,
    `State Code` INT,
    `State Name` VARCHAR(255),
    `Dist Name` VARCHAR(255),
    `Crop Name` ENUM('Fruits', 'Vegetables', 'Potatoes', 'Onions', 'Fodder'),
    `Area (1000 ha)` FLOAT,
    PRIMARY KEY (`Dist Code`, `Year`, `Crop Name`)
);

-------------------------------------------------------

--->> DATA INSERTION
-- We will INSERT data from agridata into the new tables.

--- Insert into cereals_data --->

INSERT INTO cereals_data (`Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, `Crop Name`, `Area (1000 ha)`, `Production (1000 tons)`, `Yield (Kg per ha)`)
SELECT 
    `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 
    'Rice', `RICE AREA (1000 ha)`, `RICE PRODUCTION (1000 tons)`, `RICE YIELD (Kg per ha)`
FROM agridata
UNION ALL
SELECT 
    `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 
    'Wheat', `WHEAT AREA (1000 ha)`, `WHEAT PRODUCTION (1000 tons)`, `WHEAT YIELD (Kg per ha)`
FROM agridata
UNION ALL
SELECT 
    `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 
    'Maize', `MAIZE AREA (1000 ha)`, `MAIZE PRODUCTION (1000 tons)`, `MAIZE YIELD (Kg per ha)`
FROM agridata
UNION ALL
SELECT 
    `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 
    'Barley', `BARLEY AREA (1000 ha)`, `BARLEY PRODUCTION (1000 tons)`, `BARLEY YIELD (Kg per ha)`
FROM agridata;



--- Insert into millets_data --->

INSERT INTO millets_data (`Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, `Crop Name`, `Area (1000 ha)`, `Production (1000 tons)`, `Yield (Kg per ha)`)
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Kharif Sorghum', `KHARIF SORGHUM AREA (1000 ha)`, `KHARIF SORGHUM PRODUCTION (1000 tons)`, `KHARIF SORGHUM YIELD (Kg per ha)` FROM agridata
UNION ALL
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Rabi Sorghum', `RABI SORGHUM AREA (1000 ha)`, `RABI SORGHUM PRODUCTION (1000 tons)`, `RABI SORGHUM YIELD (Kg per ha)` FROM agridata
UNION ALL
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Sorghum', `SORGHUM AREA (1000 ha)`, `SORGHUM PRODUCTION (1000 tons)`, `SORGHUM YIELD (Kg per ha)` FROM agridata
UNION ALL
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Pearl Millet', `PEARL MILLET AREA (1000 ha)`, `PEARL MILLET PRODUCTION (1000 tons)`, `PEARL MILLET YIELD (Kg per ha)` FROM agridata
UNION ALL
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Finger Millet', `FINGER MILLET AREA (1000 ha)`, `FINGER MILLET PRODUCTION (1000 tons)`, `FINGER MILLET YIELD (Kg per ha)` FROM agridata;



--- Insert into pulses_cashcrops_data --->

INSERT INTO pulses_cashcrops_data (`Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, `Crop Name`, `Area (1000 ha)`, `Production (1000 tons)`, `Yield (Kg per ha)`)
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Chickpea', `CHICKPEA AREA (1000 ha)`, `CHICKPEA PRODUCTION (1000 tons)`, `CHICKPEA YIELD (Kg per ha)` FROM agridata
UNION ALL
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Pigeonpea', `PIGEONPEA AREA (1000 ha)`, `PIGEONPEA PRODUCTION (1000 tons)`, `PIGEONPEA YIELD (Kg per ha)` FROM agridata
UNION ALL
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Minor Pulses', `MINOR PULSES AREA (1000 ha)`, `MINOR PULSES PRODUCTION (1000 tons)`, `MINOR PULSES YIELD (Kg per ha)` FROM agridata
UNION ALL
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Sugarcane', `SUGARCANE AREA (1000 ha)`, `SUGARCANE PRODUCTION (1000 tons)`, `SUGARCANE YIELD (Kg per ha)` FROM agridata
UNION ALL
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Cotton', `COTTON AREA (1000 ha)`, `COTTON PRODUCTION (1000 tons)`, `COTTON YIELD (Kg per ha)` FROM agridata;



--- Insert into oilseeds_data --->

INSERT INTO oilseeds_data (`Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, `Crop Name`, `Area (1000 ha)`, `Production (1000 tons)`, `Yield (Kg per ha)`)
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Groundnut', `GROUNDNUT AREA (1000 ha)`, `GROUNDNUT PRODUCTION (1000 tons)`, `GROUNDNUT YIELD (Kg per ha)` FROM agridata
UNION ALL
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Sesamum', `SESAMUM AREA (1000 ha)`, `SESAMUM PRODUCTION (1000 tons)`, `SESAMUM YIELD (Kg per ha)` FROM agridata
UNION ALL
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Rapeseed and Mustard', `RAPESEED AND MUSTARD AREA (1000 ha)`, `RAPESEED AND MUSTARD PRODUCTION (1000 tons)`, `RAPESEED AND MUSTARD YIELD (Kg per ha)` FROM agridata
UNION ALL
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Safflower', `SAFFLOWER AREA (1000 ha)`, `SAFFLOWER PRODUCTION (1000 tons)`, `SAFFLOWER YIELD (Kg per ha)` FROM agridata
UNION ALL
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Castor', `CASTOR AREA (1000 ha)`, `CASTOR PRODUCTION (1000 tons)`, `CASTOR YIELD (Kg per ha)` FROM agridata
UNION ALL
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Linseed', `LINSEED AREA (1000 ha)`, `LINSEED PRODUCTION (1000 tons)`, `LINSEED YIELD (Kg per ha)` FROM agridata
UNION ALL
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Sunflower', `SUNFLOWER AREA (1000 ha)`, `SUNFLOWER PRODUCTION (1000 tons)`, `SUNFLOWER YIELD (Kg per ha)` FROM agridata
UNION ALL
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Soyabean', `SOYABEAN AREA (1000 ha)`, `SOYABEAN PRODUCTION (1000 tons)`, `SOYABEAN YIELD (Kg per ha)` FROM agridata
UNION ALL
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Oilseeds', `OILSEEDS AREA (1000 ha)`, `OILSEEDS PRODUCTION (1000 tons)`, `OILSEEDS YIELD (Kg per ha)` FROM agridata;



--- Insert into horticulture_fodder_data --->

INSERT INTO horticulture_fodder_data (`Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, `Crop Name`, `Area (1000 ha)`)
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Fruits', `FRUITS AREA (1000 ha)` FROM agridata
UNION ALL
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Vegetables', `VEGETABLES AREA (1000 ha)` FROM agridata
UNION ALL
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Potatoes', `POTATOES AREA (1000 ha)` FROM agridata
UNION ALL
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Onions', `ONION AREA (1000 ha)` FROM agridata
UNION ALL
SELECT `Dist Code`, `Year`, `State Code`, `State Name`, `Dist Name`, 'Fodder', `FODDER AREA (1000 ha)` FROM agridata;


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--->> DATA CLEANING

-- SQL cleaning scripts for each table based on our strategy:
-- Step 1: Remove rows where values are NULL or -1
-- Step 2: Replace 0 values with the district-level average


---> Cleaning cereal_data Table --->

DELETE FROM cereal_data 
WHERE `Area (1000 ha)` IS NULL OR `Production (1000 tons)` IS NULL OR `Yield (Kg per ha)` IS NULL
   OR `Area (1000 ha)` = -1 OR `Production (1000 tons)` = -1 OR `Yield (Kg per ha)` = -1;

UPDATE cereal_data c
JOIN (
    SELECT `State Code`, `Dist Code`, `Year`, `Crop Name`, 
           AVG(NULLIF(`Area (1000 ha)`, 0)) AS avg_area,
           AVG(NULLIF(`Production (1000 tons)`, 0)) AS avg_production,
           AVG(NULLIF(`Yield (Kg per ha)`, 0)) AS avg_yield
    FROM cereal_data
    GROUP BY `State Code`, `Dist Code`, `Year`, `Crop Name`
) AS avg_data
ON c.`State Code` = avg_data.`State Code` 
AND c.`Dist Code` = avg_data.`Dist Code`
AND c.`Year` = avg_data.`Year`
AND c.`Crop Name` = avg_data.`Crop Name`
SET c.`Area (1000 ha)` = COALESCE(NULLIF(c.`Area (1000 ha)`, 0), avg_data.avg_area),
    c.`Production (1000 tons)` = COALESCE(NULLIF(c.`Production (1000 tons)`, 0), avg_data.avg_production),
    c.`Yield (Kg per ha)` = COALESCE(NULLIF(c.`Yield (Kg per ha)`, 0), avg_data.avg_yield);


---> Cleaning millets_data Table --->

DELETE FROM millets_data 
WHERE `Area (1000 ha)` IS NULL OR `Production (1000 tons)` IS NULL OR `Yield (Kg per ha)` IS NULL
   OR `Area (1000 ha)` = -1 OR `Production (1000 tons)` = -1 OR `Yield (Kg per ha)` = -1;

UPDATE millets_data m
JOIN (
    SELECT `State Code`, `Dist Code`, `Year`, `Crop Name`, 
           AVG(NULLIF(`Area (1000 ha)`, 0)) AS avg_area,
           AVG(NULLIF(`Production (1000 tons)`, 0)) AS avg_production,
           AVG(NULLIF(`Yield (Kg per ha)`, 0)) AS avg_yield
    FROM millets_data
    GROUP BY `State Code`, `Dist Code`, `Year`, `Crop Name`
) AS avg_data
ON m.`State Code` = avg_data.`State Code` 
AND m.`Dist Code` = avg_data.`Dist Code`
AND m.`Year` = avg_data.`Year`
AND m.`Crop Name` = avg_data.`Crop Name`
SET m.`Area (1000 ha)` = COALESCE(NULLIF(m.`Area (1000 ha)`, 0), avg_data.avg_area),
    m.`Production (1000 tons)` = COALESCE(NULLIF(m.`Production (1000 tons)`, 0), avg_data.avg_production),
    m.`Yield (Kg per ha)` = COALESCE(NULLIF(m.`Yield (Kg per ha)`, 0), avg_data.avg_yield);


---> Cleaning pulses_cashcrops_data Table --->

DELETE FROM pulses_cashcrops_data 
WHERE `Area (1000 ha)` IS NULL OR `Production (1000 tons)` IS NULL OR `Yield (Kg per ha)` IS NULL
   OR `Area (1000 ha)` = -1 OR `Production (1000 tons)` = -1 OR `Yield (Kg per ha)` = -1;

UPDATE pulses_cashcrops_data p
JOIN (
    SELECT `State Code`, `Dist Code`, `Year`, `Crop Name`, 
           AVG(NULLIF(`Area (1000 ha)`, 0)) AS avg_area,
           AVG(NULLIF(`Production (1000 tons)`, 0)) AS avg_production,
           AVG(NULLIF(`Yield (Kg per ha)`, 0)) AS avg_yield
    FROM pulses_cashcrops_data
    GROUP BY `State Code`, `Dist Code`, `Year`, `Crop Name`
) AS avg_data
ON p.`State Code` = avg_data.`State Code` 
AND p.`Dist Code` = avg_data.`Dist Code`
AND p.`Year` = avg_data.`Year`
AND p.`Crop Name` = avg_data.`Crop Name`
SET p.`Area (1000 ha)` = COALESCE(NULLIF(p.`Area (1000 ha)`, 0), avg_data.avg_area),
    p.`Production (1000 tons)` = COALESCE(NULLIF(p.`Production (1000 tons)`, 0), avg_data.avg_production),
    p.`Yield (Kg per ha)` = COALESCE(NULLIF(p.`Yield (Kg per ha)`, 0), avg_data.avg_yield);


---> Cleaning oilseeds_data Table --->

DELETE FROM oilseeds_data 
WHERE `Area (1000 ha)` IS NULL OR `Production (1000 tons)` IS NULL OR `Yield (Kg per ha)` IS NULL
   OR `Area (1000 ha)` = -1 OR `Production (1000 tons)` = -1 OR `Yield (Kg per ha)` = -1;

UPDATE oilseeds_data o
JOIN (
    SELECT `State Code`, `Dist Code`, `Year`, `Crop Name`, 
           AVG(NULLIF(`Area (1000 ha)`, 0)) AS avg_area,
           AVG(NULLIF(`Production (1000 tons)`, 0)) AS avg_production,
           AVG(NULLIF(`Yield (Kg per ha)`, 0)) AS avg_yield
    FROM oilseeds_data
    GROUP BY `State Code`, `Dist Code`, `Year`, `Crop Name`
) AS avg_data
ON o.`State Code` = avg_data.`State Code` 
AND o.`Dist Code` = avg_data.`Dist Code`
AND o.`Year` = avg_data.`Year`
AND o.`Crop Name` = avg_data.`Crop Name`
SET o.`Area (1000 ha)` = COALESCE(NULLIF(o.`Area (1000 ha)`, 0), avg_data.avg_area),
    o.`Production (1000 tons)` = COALESCE(NULLIF(o.`Production (1000 tons)`, 0), avg_data.avg_production),
    o.`Yield (Kg per ha)` = COALESCE(NULLIF(o.`Yield (Kg per ha)`, 0), avg_data.avg_yield);


---> Cleaning horticulture_data Table --->

DELETE FROM horticulture_data 
WHERE `Area (1000 ha)` IS NULL OR `Production (1000 tons)` IS NULL
   OR `Area (1000 ha)` = -1 OR `Production (1000 tons)` = -1;

UPDATE horticulture_data h
JOIN (
    SELECT `State Code`, `Dist Code`, `Year`, `Crop Name`, 
           AVG(NULLIF(`Area (1000 ha)`, 0)) AS avg_area,
           AVG(NULLIF(`Production (1000 tons)`, 0)) AS avg_production
    FROM horticulture_data
    GROUP BY `State Code`, `Dist Code`, `Year`, `Crop Name`
) AS avg_data
ON h.`State Code` = avg_data.`State Code` 
AND h.`Dist Code` = avg_data.`Dist Code`
AND h.`Year` = avg_data.`Year`
AND h.`Crop Name` = avg_data.`Crop Name`
SET h.`Area (1000 ha)` = COALESCE(NULLIF(h.`Area (1000 ha)`, 0), avg_data.avg_area),
    h.`Production (1000 tons)` = COALESCE(NULLIF(h.`Production (1000 tons)`, 0), avg_data.avg_production);


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--# COMBINE CLEANED SEGMENTED DATA INTO ONE
---> Combining tables (cereals_data, millets_data, oilseeds_data, pulses_cashcrops_data, horticulture_fodder_data) into one new table named "whole_data"


-- Create the whole_data Table
-- Since all the tables have a common structure, we will create whole_data with the necessary columns.

CREATE TABLE agri.whole_data AS
SELECT * FROM agri.cereals_data
WHERE 1 = 0;  -- This ensures only the structure is copied, not the data.

--Standardize Crop Name Column (Convert ENUM to VARCHAR)
ALTER TABLE agri.cereals_data MODIFY COLUMN `Crop Name` VARCHAR(255);
ALTER TABLE agri.millets_data MODIFY COLUMN `Crop Name` VARCHAR(255);
ALTER TABLE agri.oilseeds_data MODIFY COLUMN `Crop Name` VARCHAR(255);
ALTER TABLE agri.pulses_cashcrops_data MODIFY COLUMN `Crop Name` VARCHAR(255);
ALTER TABLE agri.horticulture_fodder_data MODIFY COLUMN `Crop Name` VARCHAR(255);


-- Insert Data from All Tables
-- Now, we insert data from all five tables into whole_data:

INSERT INTO agri.whole_data
SELECT * FROM agri.cereals_data;

INSERT INTO agri.whole_data
SELECT * FROM agri.millets_data;

INSERT INTO agri.whole_data
SELECT * FROM agri.oilseeds_data;

INSERT INTO agri.whole_data
SELECT * FROM agri.pulses_cashcrops_data;

INSERT INTO agri.whole_data
SELECT * FROM agri.horticulture_fodder_data;


-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



--- >>>Below are Queries Used for few Analysis in the Product.

--Year-wise Trend of Rice & Wheat Production Across States (Top 3)
WITH RankedCrops AS (
    SELECT 
        `Year`,
        `State Name`,
        `Crop Name`,
        SUM(`Production (1000 tons)`) AS total_production,
        RANK() OVER (PARTITION BY `Year`, `Crop Name` ORDER BY SUM(`Production (1000 tons)`) DESC) AS ranking
    FROM agri.whole_data
    WHERE `Crop Name` IN ('Rice', 'Wheat')
    GROUP BY `Year`, `State Name`, `Crop Name`
)
SELECT * FROM RankedCrops WHERE ranking <= 3;


--Top 5 Districts by Wheat Yield Increase Over the Last 5 Years
WITH CropYieldChange AS (
    SELECT 
        `Dist Name`,
        `State Name`,
        `Year`,
        `Crop Name`,
        `Yield (Kg per ha)`,
        LAG(`Yield (Kg per ha)`, 5) OVER (PARTITION BY `Dist Name`, `State Name`, `Crop Name` ORDER BY `Year`) AS prev_yield
    FROM agri.whole_data
    WHERE `Crop Name` = 'Wheat'
)
SELECT 
    `Dist Name`, 
    `State Name`, 
    `Year`, 
    `Crop Name`, 
    (`Yield (Kg per ha)` - prev_yield) AS yield_increase
FROM CropYieldChange
WHERE prev_yield IS NOT NULL
ORDER BY yield_increase DESC
LIMIT 5;


--States with the Highest Growth in Oilseed Production (5-Year Growth Rate)
WITH OilseedGrowth AS (
    SELECT 
        `State Name`,
        `Year`,
        `Crop Name`,
        SUM(`Production (1000 tons)`) AS total_production,
        LAG(SUM(`Production (1000 tons)`), 5) OVER (PARTITION BY `State Name`, `Crop Name` ORDER BY `Year`) AS prev_production
    FROM agri.whole_data
    WHERE `Crop Name` IN ('Groundnut', 'Soybean', 'Mustard', 'Sunflower', 'Sesame')
    GROUP BY `State Name`, `Year`, `Crop Name`
)
SELECT 
    `State Name`, 
    `Crop Name`, 
    ((total_production - prev_production) / prev_production) * 100 AS growth_rate
FROM OilseedGrowth
WHERE prev_production IS NOT NULL
ORDER BY growth_rate DESC
LIMIT 5;


--District-wise Correlation Between Area and Production for Major Crops (Rice, Wheat, Maize)
WITH Stats AS (
    SELECT 
        `Crop Name`, 
        `Dist Name`, 
        `State Name`, 
        COUNT(*) AS n,
        SUM(`Area (1000 ha)`) AS sum_x,
        SUM(`Production (1000 tons)`) AS sum_y,
        SUM(`Area (1000 ha)` * `Production (1000 tons)`) AS sum_xy,
        SUM(`Area (1000 ha)` * `Area (1000 ha)`) AS sum_x2,
        SUM(`Production (1000 tons)` * `Production (1000 tons)`) AS sum_y2
    FROM agri.whole_data
    WHERE `Crop Name` IN ('Rice', 'Wheat', 'Maize')
    GROUP BY `Crop Name`, `Dist Name`, `State Name`
)
SELECT 
    `Crop Name`, 
    `Dist Name`, 
    `State Name`,
    ( (n * sum_xy) - (sum_x * sum_y) ) / 
    (SQRT( (n * sum_x2 - sum_x * sum_x) * (n * sum_y2 - sum_y * sum_y) )) AS correlation_value
FROM Stats
HAVING correlation_value IS NOT NULL
ORDER BY correlation_value DESC;


--Yearly Production Growth of Cotton in Top 5 Cotton Producing States
WITH CottonProduction AS (
    SELECT 
        `Year`, 
        `State Name`, 
        SUM(`Production (1000 tons)`) AS total_production
    FROM agri.whole_data
    WHERE `Crop Name` = 'Cotton'
    GROUP BY `Year`, `State Name`
), 
RankedCotton AS (
    SELECT 
        `Year`, 
        `State Name`, 
        total_production,
        RANK() OVER (PARTITION BY `Year` ORDER BY total_production DESC) AS `rank_value`
    FROM CottonProduction
)
SELECT 
    c1.`Year`,
    c1.`State Name`,
    c1.total_production AS current_year_production,
    c2.total_production AS prev_year_production,
    ((c1.total_production - c2.total_production) / c2.total_production) * 100 AS growth_percentage
FROM RankedCotton c1
LEFT JOIN RankedCotton c2 
    ON c1.`State Name` = c2.`State Name` 
    AND c1.`Year` = c2.`Year` + 1
WHERE c1.`rank_value` <= 5
ORDER BY c1.`Year` DESC, c1.total_production DESC;



--Districts with the Highest Groundnut Production in latest year available
SELECT 
    `Year`, 
    `Dist Name`, 
    `State Name`, 
    `Production (1000 tons)`
FROM agri.whole_data
WHERE `Crop Name` = 'Groundnut'
ORDER BY `Year` DESC, `Production (1000 tons)` DESC
LIMIT 10;


--Annual Average Maize Yield Across All States
SELECT 
    `Year`, 
    `State Name`, 
    `Crop Name`,
    AVG(`Yield (Kg per ha)`) AS avg_yield
FROM agri.whole_data
WHERE `Crop Name` = 'Maize'
GROUP BY `Year`, `State Name`, `Crop Name`
ORDER BY `Year`, avg_yield DESC;


--Total Area Cultivated for Oilseeds in Each State
SELECT 
    `State Name`, 
    `Crop Name`,
    SUM(`Area (1000 ha)`) AS total_area
FROM agri.whole_data
WHERE `Crop Name` IN ('Groundnut', 'Soybean', 'Mustard', 'Sunflower', 'Sesame')
GROUP BY `State Name`, `Crop Name`
ORDER BY total_area DESC;


--Districts with the Highest Rice Yield
SELECT 
    `Dist Name`, 
    `State Name`, 
    `Crop Name`,
    MAX(`Yield (Kg per ha)`) AS max_yield
FROM agri.whole_data
WHERE `Crop Name` = 'Rice'
GROUP BY `Dist Name`, `State Name`, `Crop Name`
ORDER BY max_yield DESC
LIMIT 5;


--Compare the Production of Wheat and Rice for the Top 5 States Over 10 Years
WITH WheatRiceProduction AS (
    SELECT 
        `State Name`, 
        `Year`, 
        `Crop Name`, 
        SUM(`Production (1000 tons)`) AS total_production
    FROM agri.whole_data
    WHERE `Crop Name` IN ('Rice', 'Wheat')
    GROUP BY `State Name`, `Year`, `Crop Name`
)
SELECT 
    `State Name`, 
    `Year`, 
    `Crop Name`, 
    total_production
FROM WheatRiceProduction
WHERE `State Name` IN (
    SELECT `State Name` 
    FROM (SELECT `State Name`, SUM(`Production (1000 tons)`) AS total_wheat_rice_prod 
          FROM agri.whole_data 
          WHERE `Crop Name` IN ('Rice', 'Wheat') 
          GROUP BY `State Name` 
          ORDER BY total_wheat_rice_prod DESC 
          LIMIT 5) AS TopStates
)
ORDER BY `State Name`, `Year`, `Crop Name`;
