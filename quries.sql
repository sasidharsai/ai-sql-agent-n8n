SELECT COUNT(*) AS total_customers
FROM dim_customer;

SELECT SUM(sold_quantity) AS total_quantity
FROM fact_sales_monthly;

SELECT SUM(fs.sold_quantity) AS india_sales_quantity
FROM fact_sales_monthly fs
JOIN dim_customer dc
  ON fs.customer_code = dc.customer_code
WHERE dc.market = 'India';

SELECT SUM(fs.sold_quantity) AS india_sales_2020
FROM fact_sales_monthly fs
JOIN dim_customer dc
  ON fs.customer_code = dc.customer_code
WHERE dc.market = 'India'
  AND fs.date LIKE '%2020%';

SELECT dc.market, SUM(fs.sold_quantity) AS total_quantity
FROM fact_sales_monthly fs
JOIN dim_customer dc
  ON fs.customer_code = dc.customer_code
GROUP BY dc.market
ORDER BY total_quantity DESC;
