# Data-Analyst-Internship-at-ElevateLabs-Task-6

Dataset from kaggle: [sales_data.csv](https://www.kaggle.com/datasets/imranlukman/amazon-online-sales-dataset)   
Data cleaning and preprocessing: [Data-Analyst-Internship-at-ElevateLabs-Task-1](https://github.com/SdIshtiyaqAhmed/Data-Analyst-Internship-at-ElevateLabs-Task-1)   
Cleaned Dataset: [cleaned_sales_data.csv](https://github.com/SdIshtiyaqAhmed/Data-Analyst-Internship-at-ElevateLabs-Task-3/blob/main/cleaned_sales_data.csv)

Now we use the cleaned_sales_data.csv to perform sales trends analysis using aggregation. Here is a brief overview of the process:

- Using the DB Browser for SQLite, create a new database.
- Import the cleaned_sales_data.csv into the database as a table.
- Perform SQL queries on the table.
- Observe and note the output.
- Save the queries in a SQL file.

## SQL Queries and Outputs for Sales Trends Analysis using Aggregations

### Monthly Revenue and Order Volume in 2015

<b> Query: </b> 

SELECT
    strftime('%Y', order_date) AS order_year,
    strftime('%m', order_date) AS order_month,
    SUM(sales) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS monthly_order_volume
FROM
    cleaned_sales_data
WHERE
	order_date BETWEEN "2015-01-01" AND "2015-12-31"
GROUP BY
    order_year, order_month
ORDER BY
    order_year, order_month;

<b> Output: </b> 

![image](https://github.com/user-attachments/assets/932753f8-9c25-493a-94d8-0dfdb5f0dca5)

### Monthly Revenue and Order Volume in 2016

<b> Query: </b> 

SELECT
    strftime('%Y', order_date) AS order_year,
    strftime('%m', order_date) AS order_month,
    SUM(sales) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS monthly_order_volume
FROM
    cleaned_sales_data
WHERE
	order_date BETWEEN "2016-01-01" AND "2016-12-31"
GROUP BY
    order_year, order_month
ORDER BY
    order_year, order_month;

<b> Output: </b> 

![image](https://github.com/user-attachments/assets/1f69e2cc-f28b-48bb-9247-a9ca470dfa87)

### Monthly Revenue and Order Volume in 2017

<b> Query: </b> 

SELECT
    strftime('%Y', order_date) AS order_year,
    strftime('%m', order_date) AS order_month,
    SUM(sales) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS monthly_order_volume
FROM
    cleaned_sales_data
WHERE
	order_date BETWEEN "2017-01-01" AND "2017-12-31"
GROUP BY
    order_year, order_month
ORDER BY
    order_year, order_month;

<b> Output: </b> 

![image](https://github.com/user-attachments/assets/09ea6604-6c45-4fe9-b381-18dbdfb9651b)

### Monthly Revenue and Order Volume in 2018

<b> Query: </b> 

SELECT
    strftime('%Y', order_date) AS order_year,
    strftime('%m', order_date) AS order_month,
    SUM(sales) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS monthly_order_volume
FROM
    cleaned_sales_data
WHERE
	order_date BETWEEN "2018-01-01" AND "2018-12-31"
GROUP BY
    order_year, order_month
ORDER BY
    order_year, order_month;

<b> Output: </b> 

![image](https://github.com/user-attachments/assets/78253bfb-b6d6-4e2e-990c-9c5b2524cf0a)

### Top 5 months with most revenue

<b> Query: </b> 

SELECT
    strftime('%Y', order_date) AS order_year,
    strftime('%m', order_date) AS order_month,
    SUM(sales) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS monthly_order_volume
FROM
    cleaned_sales_data
GROUP BY
    order_year, order_month
ORDER BY
    monthly_revenue DESC
LIMIT 5;

<b> Output: </b> 

![image](https://github.com/user-attachments/assets/479cdad0-b7d4-4bf5-826a-cfe7de455e5d)

### Year-wise revenue (2015 - 2018)

<b> Query: </b> 

SELECT
    strftime('%Y', order_date) AS order_year,
    SUM(sales) AS yearly_revenue,
    COUNT(DISTINCT order_id) AS yearly_order_volume
FROM
    cleaned_sales_data
GROUP BY
    order_year
ORDER BY
    yearly_revenue DESC;

<b> Output: </b> 

![image](https://github.com/user-attachments/assets/02f3d68b-827c-439f-9d30-dc996b307586)
