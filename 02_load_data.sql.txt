-- Load data into dimension tables
INSERT INTO dim_customer VALUES
(1, 'John Doe', 'East'),
(2, 'Sarah Lee', 'West'),
(3, 'Michael Chan', 'North');

INSERT INTO dim_product VALUES
(101, 'Electronics', 'Mobile'),
(102, 'Furniture', 'Chairs'),
(103, 'Office Supplies', 'Paper');

-- Load sales transactions
INSERT INTO fact_sales VALUES
(5001, 1, 101, '2025-01-10', 2, 45000, 30000),
(5002, 2, 102, '2025-01-12', 1, 15000, 9000),
(5003, 3, 103, '2025-01-15', 5, 1200, 700);
