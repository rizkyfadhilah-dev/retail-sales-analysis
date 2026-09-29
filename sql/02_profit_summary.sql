-- 02_profit_summary.sql
-- Summarize transactions by profit level

SELECT
    CASE
        WHEN Profit >= 100000 THEN 'High Profit'
        WHEN Profit >= 50000 THEN 'Medium Profit'
        ELSE 'Low Profit'
    END AS profit_level,
    COUNT(*) AS total_transaksi,
    SUM(Profit) AS total_profit
FROM retail_sales_cleaned
GROUP BY profit_level
ORDER BY total_profit DESC;
