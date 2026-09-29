-- 05_product_profit_ranking.sql
-- Rank products based on total profit

SELECT
    Product,
    SUM(Profit) AS total_profit,
    RANK() OVER (ORDER BY SUM(Profit) DESC) AS profit_rank
FROM retail_sales_cleaned
GROUP BY Product
ORDER BY profit_rank;
