-- Profit calculation
SELECT 
    order_id,
    sales,
    cost,
    (sales - cost) AS profit
FROM fact_sales;

-- Sales by region
SELECT 
    c.region,
    SUM(s.sales) AS total_sales
FROM fact_sales s
JOIN dim_customer c ON s.customer_id = c.customer_id
GROUP BY c.region;

-- Category performance
SELECT 
    p.category,
    SUM(s.sales) AS category_sales
FROM fact_sales s
JOIN dim_product p ON s.product_id = p.product_id
GROUP BY p.category;
