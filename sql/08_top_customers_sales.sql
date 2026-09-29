-- 08_top_customers_sales.sql
-- Identify the top 10 customers based on total sales

SELECT
    Customer_ID,
    Customer_Name,
    COUNT(*) AS total_transaksi,
    SUM(Sales) AS total_sales,
    SUM(Profit) AS total_profit
FROM retail_sales_cleaned
GROUP BY Customer_ID, Customer_Name
ORDER BY total_sales DESC
LIMIT 10;
