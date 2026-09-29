-- 04_product_profit_cte.sql
-- Calculate total profit for each product using a CTE

WITH product_profit AS (
    SELECT
        Product,
        SUM(Profit) AS total_profit
    FROM retail_sales_cleaned
    GROUP BY Product
)

SELECT
    Product,
    total_profit
FROM product_profit
ORDER BY total_profit DESC;
