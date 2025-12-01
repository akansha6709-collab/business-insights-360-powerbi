-- Record counts
SELECT 'dim_customer' AS table_name, COUNT(*) AS row_count FROM dim_customer
UNION ALL
SELECT 'dim_product', COUNT(*) FROM dim_product
UNION ALL
SELECT 'fact_sales', COUNT(*) FROM fact_sales;

-- Orphan checks
SELECT * 
FROM fact_sales s
LEFT JOIN dim_customer c ON s.customer_id = c.customer_id
WHERE c.customer_id IS NULL;

SELECT *
FROM fact_sales s
LEFT JOIN dim_product p ON s.product_id = p.product_id
WHERE p.product_id IS NULL;

-- Null checks
SELECT * FROM fact_sales WHERE sales IS NULL OR cost IS NULL;
