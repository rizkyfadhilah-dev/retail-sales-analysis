-- 07_monthly_sales_growth.sql
-- Calculate monthly sales change and growth percentage

WITH monthly_sales AS (
    SELECT
        DATE_FORMAT(Order_Date, '%Y-%m') AS month,
        SUM(Sales) AS total_sales
    FROM retail_sales_cleaned
    GROUP BY DATE_FORMAT(Order_Date, '%Y-%m')
),
sales_comparison AS (
    SELECT
        month,
        total_sales,
        LAG(total_sales) OVER (ORDER BY month) AS previous_month_sales
    FROM monthly_sales
)

SELECT
    month,
    total_sales,
    previous_month_sales,
    total_sales - previous_month_sales AS sales_change,
    ROUND(
        ((total_sales - previous_month_sales) / previous_month_sales) * 100,
        2
    ) AS sales_change_percent
FROM sales_comparison
ORDER BY month;
