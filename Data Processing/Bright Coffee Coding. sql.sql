-- Databricks notebook source

--- Checking the full set 
select * 
from `retail`.`default`.`bright_coffee_shop`
limit 100;

---- Checking how many rows in the data and checking duplicates
SELECT COUNT(*) AS num_of_rows,
       COUNT(DISTINCT transaction_id) AS user_id
FROM `retail`.`default`.`bright_coffee_shop`;

---- Checking for nulls in the dataset
SELECT *
FROM `retail`.`default`.`bright_coffee_shop`
WHERE transaction_id IS NULL
   OR transaction_date IS NULL
   OR transaction_time IS NULL
   OR store_location IS NULL
   OR product_category IS NULL
   OR product_type IS NULL
   OR unit_price IS NULL
 OR transaction_qty IS NULL;

----Checking what is the start and ending date of the dataset 
SELECT MIN(transaction_date) AS earliest_date,
       MAX(transaction_date) AS latest_date
FROM `retail`.`default`.`bright_coffee_shop`;

--- Calculating Revenue
SELECT SUM(transaction_qty * try_cast(replace(unit_price, ',', '.') AS double)) AS Total_Revenue
FROM `retail`.`default`.`bright_coffee_shop`;

---Checking the store locations
SELECT DISTINCT store_location,
                store_id
FROM  `retail`.`default`.`bright_coffee_shop`;

---Checking the distinct product categories
SELECT DISTINCT product_category
FROM `retail`.`default`.`bright_coffee_shop`;

----Checking the lowest and highest prices in the unit_price column
SELECT MIN(unit_price) AS lowest_unit_price,
       MAX(unit_price) AS Highest_unit_price
FROM `retail`.`default`.`bright_coffee_shop`;

--- Checking the Total Revenue by Store location
SELECT store_location,
       ROUND(SUM(transaction_qty * try_cast(replace(unit_price, ',', '.') AS double)),2) AS Total_Revenue
FROM `retail`.`default`.`bright_coffee_shop`
GROUP BY store_location
ORDER BY Total_Revenue;

----Number of transactions
SELECT COUNT(DISTINCT transaction_id) AS num_of_transactions
FROM `retail`.`default`.`bright_coffee_shop`;

---Average number of transactions
SELECT ROUND(AVG(transaction_qty * try_cast(replace(unit_price, ',', '.') AS double)),2) AS Avg_transactions
FROM `retail`.`default`.`bright_coffee_shop`;

SELECT
    product_type,
    SUM(transaction_qty) AS total_units_sold
FROM `retail`.`default`.`bright_coffee_shop`
GROUP BY product_type
ORDER BY total_units_sold DESC;



WITH base_data AS (
  SELECT 
    transaction_id,
    transaction_date,
    transaction_time,
    store_id,
    store_location,
    product_id,
    unit_price,
    product_category,
    product_type,
    product_detail,
    transaction_qty,
    ROUND(transaction_qty * try_cast(replace(unit_price, ',', '.') AS double), 2) AS Total_Revenue
  FROM `retail`.`default`.`bright_coffee_shop`
)
SELECT 
  transaction_id,
  transaction_date,
  transaction_time,
  store_id,
  store_location,
  product_id,
  unit_price,
  product_category,
  product_type,
  product_detail,
  transaction_qty,
  Total_Revenue,
  
  --- Adding Date functions to the table
  -- Creating proper combined timestamp
  CAST(CONCAT(CAST(transaction_date AS STRING), ' ', DATE_FORMAT(transaction_time, 'HH:mm:ss')) AS TIMESTAMP) AS proper_timestamp,
  
  DAYNAME(transaction_date) AS Day_name,
  MONTHNAME(transaction_date) AS Month_name,
  WEEKDAY(transaction_date) AS Week_day,
  DATE_FORMAT(transaction_time, 'HH:mm:ss') AS transaction_time_formatted,
  HOUR(transaction_time) AS Transaction_hour,
  DAYOFMONTH(transaction_date) AS Day_of_month,
  
  CASE
    WHEN Total_Revenue >= 10 THEN 'High Sale'
    WHEN Total_Revenue >= 5 THEN 'Medium Sale'
    ELSE 'Low Sale'
  END AS sales_category,
  
  CASE
    WHEN HOUR(transaction_time) BETWEEN 0 AND 2 THEN "Wee Hours"
    WHEN HOUR(transaction_time) BETWEEN 3 AND 5 THEN "Ungodly hours"
    WHEN HOUR(transaction_time) BETWEEN 6 AND 11 THEN "Rush hour"
    WHEN HOUR(transaction_time) BETWEEN 12 AND 14 THEN "Afternoon"
    WHEN HOUR(transaction_time) BETWEEN 15 AND 17 THEN "Late Afternoon"
    WHEN HOUR(transaction_time) BETWEEN 18 AND 20 THEN "Evening"
    ELSE "Night"
  END AS transaction_time_bucket,
  
  --Day Type
  CASE
    WHEN DAYOFWEEK(transaction_date) IN (1,7) THEN "Weekend"
    ELSE "Weekday"
  END AS Day_Type
FROM base_data;