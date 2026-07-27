-- Create Database
CREATE DATABASE IF NOT EXISTS cineinvest;
USE cineinvest;

-- Create Table
CREATE TABLE movies (
    movie_id INT PRIMARY KEY,
    title VARCHAR(255),
    Budget BIGINT,
    Revenue BIGINT,
    Popularity FLOAT,
    Genres TEXT,
    Primary_Genre VARCHAR(100),
    Genre_Count INT,
    Director VARCHAR(255),
    Production_Companies TEXT,
    Primary_Production_Company VARCHAR(255),
    Production_Company_Count INT,
    Release_Date DATE,
    Cast_Count INT,
    Lead_Actor VARCHAR(255),
    Second_Lead_Actor VARCHAR(255),
    Third_Lead_Actor VARCHAR(255),
    Male_Cast_Count INT,
    Female_Cast_Count INT,
    Unknown_Cast_Gender_Count INT,
    Cast_Gender_Ratio FLOAT,
    Crew_Count INT,
    Producer_Count INT,
    Writer_Count INT,
    Male_Crew_Count INT,
    Female_Crew_Count INT,
    Unknown_Crew_Gender_Count INT,
    Unique_Department_Count INT,
    Top_Crew_Department VARCHAR(255),
    Cast_Crew_Ratio FLOAT,
    Total_People_Involved INT,
    Profit BIGINT,
    ROI FLOAT,
    Revenue_Budget_Ratio FLOAT,
    Budget_Category VARCHAR(50),
    Financial_Result VARCHAR(50),
    Budget_Efficiency VARCHAR(50),
    Popularity_Category VARCHAR(50),
    Profitability_Category VARCHAR(50),
    Popularity_Profitability_Segment VARCHAR(100),
    Release_Year INT,
    Release_Month INT,
    Release_Month_Name VARCHAR(20),
    Release_Quarter VARCHAR(10),
    Release_Season VARCHAR(20),
    Has_Budget_Data BOOLEAN,
    Has_Revenue_Data BOOLEAN,
    Has_Financial_Data BOOLEAN,
    Has_Genre_Data BOOLEAN,
    Has_Company_Data BOOLEAN,
    Has_Release_Data BOOLEAN
);

-- Check whether LOCAL INFILE is enabled
SHOW GLOBAL VARIABLES LIKE 'local_infile';

-- Enable it (requires admin privileges)
SET GLOBAL local_infile = 1;

-- Import CSV
LOAD DATA LOCAL INFILE 'C:/Users/91934/OneDrive/Desktop/DA/ZDIP/data/cleaned/project_dataset_cleaned.csv'
INTO TABLE movies
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS
(
    movie_id,
    title,
    Budget,
    Revenue,
    Popularity,
    Genres,
    Primary_Genre,
    Genre_Count,
    Director,
    Production_Companies,
    Primary_Production_Company,
    Production_Company_Count,
    @Release_Date,
    Cast_Count,
    Lead_Actor,
    Second_Lead_Actor,
    Third_Lead_Actor,
    Male_Cast_Count,
    Female_Cast_Count,
    Unknown_Cast_Gender_Count,
    Cast_Gender_Ratio,
    Crew_Count,
    Producer_Count,
    Writer_Count,
    Male_Crew_Count,
    Female_Crew_Count,
    Unknown_Crew_Gender_Count,
    Unique_Department_Count,
    Top_Crew_Department,
    Cast_Crew_Ratio,
    Total_People_Involved,
    Profit,
    ROI,
    Revenue_Budget_Ratio,
    Budget_Category,
    Financial_Result,
    Budget_Efficiency,
    Popularity_Category,
    Profitability_Category,
    Popularity_Profitability_Segment,
    Release_Year,
    Release_Month,
    Release_Month_Name,
    Release_Quarter,
    Release_Season,
    Has_Budget_Data,
    Has_Revenue_Data,
    Has_Financial_Data,
    Has_Genre_Data,
    Has_Company_Data,
    Has_Release_Data
)
SET Release_Date = STR_TO_DATE(@Release_Date, '%d-%m-%Y');

DESCRIBE movies;
SHOW COLUMNS FROM movies;



SHOW KEYS FROM movies;

-- Check for NULL movie_id values
SELECT COUNT(*) AS null_movie_ids
FROM movies
WHERE movie_id IS NULL;

-- Check for duplicate movie_id values
SELECT movie_id, COUNT(*)
FROM movies
GROUP BY movie_id
HAVING COUNT(*) > 1;

SELECT
    SUM(Budget IS NULL) AS Budget_Nulls,
    SUM(Revenue IS NULL) AS Revenue_Nulls,
    SUM(Production_Companies IS NULL) AS Production_Companies_Nulls,
    SUM(Primary_Production_Company IS NULL) AS Primary_Production_Company_Nulls,
    SUM(Cast_Gender_Ratio IS NULL) AS Cast_Gender_Ratio_Nulls,
    SUM(Release_Date IS NULL) AS Release_Date_Nulls
FROM movies;

SELECT COUNT(*) AS null_movie_ids
FROM movies
WHERE movie_id IS NULL;

SELECT COUNT(*) AS total_rows
FROM movies;

UPDATE movies
SET
    title = TRIM(title),
    Director = TRIM(Director),
    Production_Companies = TRIM(Production_Companies),
    Primary_Production_Company = TRIM(Primary_Production_Company),
    Top_Crew_Department = TRIM(Top_Crew_Department);
    
SET SQL_SAFE_UPDATES = 0;

UPDATE movies
SET
    title = TRIM(title),
    Director = TRIM(Director),
    Production_Companies = TRIM(Production_Companies),
    Primary_Production_Company = TRIM(Primary_Production_Company),
    Top_Crew_Department = TRIM(Top_Crew_Department);
    
DESCRIBE movies;

SELECT COUNT(*) AS total_rows
FROM movies;

SELECT COUNT(*) AS total_columns
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'cineinvest'
AND TABLE_NAME = 'movies';

SELECT COUNT(*) AS null_movie_ids
FROM movies
WHERE movie_id IS NULL;

SELECT movie_id, COUNT(*) AS occurrences
FROM movies
GROUP BY movie_id
HAVING COUNT(*) > 1;

