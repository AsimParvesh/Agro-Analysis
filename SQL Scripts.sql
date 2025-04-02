--Below are Queries Used for few Analysis in the Product.

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
