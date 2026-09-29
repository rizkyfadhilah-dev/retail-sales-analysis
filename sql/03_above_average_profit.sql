-- 03_above_average_profit.sql
-- Identify transactions with profit above the average profit

SELECT
    Product,
    Profit
FROM retail_sales_cleaned
WHERE Profit > (
    SELECT AVG(Profit)
    FROM retail_sales_cleaned
)
ORDER BY Profit DESC;
