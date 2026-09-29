-- 06_monthly_sales_lag.sql
-- Compare monthly sales with the previous month

WITH monthly_sales AS (
    SELECT
        DATE_FORMAT(Order_Date, '%Y-%m') AS month,
        SUM(Sales) AS total_sales
    FROM retail_sales_cleaned
    GROUP BY DATE_FORMAT(Order_Date, '%Y-%m')
)

SELECT
    month,
    total_sales,
    LAG(total_sales) OVER (ORDER BY month) AS previous_month_sales,
    total_sales - LAG(total_sales) OVER (ORDER BY month) AS sales_change
FROM monthly_sales
ORDER BY month;
