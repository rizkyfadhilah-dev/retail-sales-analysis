-- 01_case_when_profit.sql
-- Classify transactions based on profit level

SELECT
    Product,
    Profit,
    CASE
        WHEN Profit >= 100000 THEN 'High Profit'
        WHEN Profit >= 50000 THEN 'Medium Profit'
        ELSE 'Low Profit'
    END AS profit_level
FROM retail_sales_cleaned
ORDER BY Profit DESC;
