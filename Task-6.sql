-- 2015
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
	
-- 2016
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
	
-- 2017
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

-- 2018
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
	
-- Top 5 months with most revenue
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

--Year-wise revenue

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