-- SQL Retail Sales Analysis -P1
CREATE DATABASE sql_project_p2;

-- Create TABLE
DROP TABLE IF EXISTS retail_sales;
CREATE TABLE retail_sales
	(
			transactions_id	INT PRIMARY KEY,
			sale_date DATE,
			sale_time TIME,
			customer_id INT,
			gender VARCHAR(15),
			age	INT,
			category VARCHAR(25),	
			quantiy	INT,
			price_per_unit FLOAT,
			cogs FLOAT,
			total_sale FLOAT
	);

SELECT * FROM retail_sales
LIMIT 10;

-- count entries
SELECT COUNT(*) FROM retail_sales;

-- find null values in specific attributes
SELECT * FROM retail_sales WHERE transactions_id IS NULL;
SELECT * FROM retail_sales WHERE sale_date IS NULL;
SELECT * FROM retail_sales WHERE sale_time IS NULL;

DELETE FROM retail_sales 
WHERE 
	transactions_id IS NULL
	OR 
	sale_date IS NULL
	OR
	sale_time IS NULL
	OR
	customer_id IS NULL
	OR 
	gender IS NULL
	OR
	age IS NULL
	OR
	category IS NULL	
	OR
	quantiy	IS NULL
	OR 		
	price_per_unit IS NULL
	OR 
	cogs IS NULL
	OR 
	total_sale IS NULL;

-- data exploration

-- how many sales we have?
SELECT COUNT(*) AS total_sale FROM retail_sales;
-- freq of similar number of sales
SELECT total_sale, COUNT(total_sale) FROM retail_sales GROUP BY total_sale;

-- how many customers we have?
SELECT COUNT(customer_id) AS total_sale FROM retail_sales; 
-- how many unique customers we have?
SELECT COUNT(DISTINCT customer_id) AS total_sale FROM retail_sales;

-- how many categories 
SELECT COUNT(DISTINCT category) AS categories FROM retail_sales;

-- Data Analysis & Business Key Problems & Answers

-- My Analysis & Findings
-- Q.1 Write a SQL query to retrieve all columns for sales made on '2022-11-05
-- Q.2 Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 10 in the month of Nov-2022
-- Q.3 Write a SQL query to calculate the total sales (total_sale) for each category.
-- Q.4 Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
-- Q.5 Write a SQL query to find all transactions where the total_sale is greater than 1000.
-- Q.6 Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
-- Q.7 Write a SQL query to calculate the average sale for each month. Find out best selling month in each year
-- Q.8 Write a SQL query to find the top 5 customers based on the highest total sales 
-- Q.9 Write a SQL query to find the number of unique customers who purchased items from each category.
-- Q.10 Write a SQL query to create each shift and number of orders (Example Morning <=12, Afternoon Between 12 & 17, Evening >17)
