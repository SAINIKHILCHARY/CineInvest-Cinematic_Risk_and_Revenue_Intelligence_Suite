CREATE DATABASE IF NOT EXISTS cineinvest;
USE cineinvest;
-- VIEWs
CREATE OR REPLACE VIEW vw_total_revenue AS
SELECT
    SUM(Revenue) AS Total_Revenue
FROM movies;

CREATE OR REPLACE VIEW vw_financial_summary AS
SELECT
    Financial_Result,
    COUNT(*) AS Movie_Count,
    SUM(Revenue) AS Total_Revenue,
    SUM(Profit) AS Total_Profit
FROM movies
GROUP BY Financial_Result;

CREATE OR REPLACE VIEW vw_top_production_companies AS
SELECT
    Primary_Production_Company,
    COUNT(*) AS Movie_Count,
    SUM(Revenue) AS Total_Revenue
FROM movies
GROUP BY Primary_Production_Company;

CREATE OR REPLACE VIEW vw_genre_roi AS
SELECT
    Primary_Genre,
    AVG(ROI) AS Average_ROI
FROM movies
GROUP BY Primary_Genre;

CREATE OR REPLACE VIEW vw_revenue_by_year AS
SELECT
    Release_Year,
    COUNT(*) AS Movie_Count,
    SUM(Revenue) AS Total_Revenue
FROM movies
WHERE Release_Year IS NOT NULL
  AND Release_Year <> ''
  AND Release_Year <> 'Unknown'
GROUP BY Release_Year;

-- Window Functions
SELECT
    movie_id,
    title,
    Revenue,
    ROW_NUMBER() OVER (ORDER BY Revenue DESC) AS Row_Num
FROM movies;

SELECT
    movie_id,
    title,
    Revenue,
    RANK() OVER (ORDER BY Revenue DESC) AS Revenue_Rank
FROM movies;

SELECT
    movie_id,
    title,
    Revenue,
    DENSE_RANK() OVER (ORDER BY Revenue DESC) AS Revenue_Rank
FROM movies;

SELECT
    Release_Year,
    title,
    Revenue,
    LAG(Revenue) OVER (ORDER BY Release_Year) AS Previous_Revenue
FROM movies;

SELECT
    Release_Year,
    title,
    Revenue,
    LEAD(Revenue) OVER (ORDER BY Release_Year) AS Next_Revenue
FROM movies;

SELECT
    Release_Date,
    title,
    Revenue,
    SUM(Revenue) OVER (
        ORDER BY Release_Date
    ) AS Running_Total
FROM movies;

SELECT
    Release_Year,
    title,
    Revenue,
    SUM(Revenue) OVER (
        ORDER BY Release_Year
    ) AS Yearly_Running_Total
FROM movies;

SELECT
    Release_Year,
    SUM(Revenue) AS Total_Revenue,
    RANK() OVER (
        ORDER BY SUM(Revenue) DESC
    ) AS Revenue_Rank
FROM movies
GROUP BY Release_Year;

SELECT
    title,
    Revenue,
    RANK() OVER (
        ORDER BY Revenue DESC
    ) AS Revenue_Rank
FROM movies;

SELECT
    title,
    Profit,
    DENSE_RANK() OVER (
        ORDER BY Profit DESC
    ) AS Profit_Rank
FROM movies;

-- Verify the Views
SELECT * FROM vw_total_revenue;

SELECT * FROM vw_financial_summary;

SELECT * FROM vw_top_production_companies;

SELECT * FROM vw_genre_roi;

SELECT * FROM vw_revenue_by_year;
