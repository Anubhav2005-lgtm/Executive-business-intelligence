-- Executive Business Intelligence
-- Data quality checks

SELECT COUNT(*) AS total_transactions
FROM sales_transactions;

SELECT Order_ID, COUNT(*) AS record_count
FROM sales_transactions
GROUP BY Order_ID
HAVING COUNT(*) > 1;

SELECT
    SUM(CASE WHEN Customer_ID IS NULL THEN 1 ELSE 0 END) AS missing_customer_id,
    SUM(CASE WHEN Product_ID IS NULL THEN 1 ELSE 0 END) AS missing_product_id,
    SUM(CASE WHEN Revenue IS NULL THEN 1 ELSE 0 END) AS missing_revenue,
    SUM(CASE WHEN Customer_Satisfaction IS NULL THEN 1 ELSE 0 END) AS missing_satisfaction
FROM sales_transactions;

SELECT *
FROM sales_transactions
WHERE Revenue < 0 OR Cost < 0 OR Profit IS NULL;

SELECT *
FROM sales_transactions
WHERE Customer_Satisfaction < 1
   OR Customer_Satisfaction > 5;
