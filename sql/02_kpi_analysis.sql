-- Core executive KPIs

SELECT
    ROUND(SUM(Revenue), 2) AS total_revenue,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(SUM(Profit) / NULLIF(SUM(Revenue),0) * 100, 2) AS profit_margin_pct,
    COUNT(DISTINCT Order_ID) AS total_orders,
    COUNT(DISTINCT Customer_ID) AS total_customers,
    ROUND(SUM(Revenue) / NULLIF(COUNT(DISTINCT Order_ID),0), 2) AS average_order_value
FROM sales_transactions
WHERE Order_Status <> 'Cancelled';

-- Monthly performance
SELECT
    DATE_TRUNC('month', Order_Date) AS month,
    ROUND(SUM(Revenue),2) AS revenue,
    ROUND(SUM(Profit),2) AS profit,
    COUNT(DISTINCT Order_ID) AS orders
FROM sales_transactions
WHERE Order_Status <> 'Cancelled'
GROUP BY 1
ORDER BY 1;
