# Power BI Dashboard Specification

## Page 1 — Executive Overview
Cards: Revenue, Profit, Profit Margin, Orders, Customers, AOV. Charts: monthly revenue/profit trend and revenue by region.

## Page 2 — Sales Performance
Category revenue/profit, channel performance, top products and monthly trend. Slicers: date, region, category and sales channel.

## Page 3 — Customer Intelligence
Segment revenue, revenue per customer, one-time vs returning customers and regional customer performance.

## Page 4 — Management Insights
Highlight high-revenue/low-margin categories, above-average-revenue regions with below-average margins, meaningful monthly changes and recommended management actions.

## Recommended DAX
```DAX
Total Revenue = SUM(sales_transactions[Revenue])
Total Profit = SUM(sales_transactions[Profit])
Profit Margin = DIVIDE([Total Profit], [Total Revenue])
Orders = DISTINCTCOUNT(sales_transactions[Order_ID])
Customers = DISTINCTCOUNT(sales_transactions[Customer_ID])
AOV = DIVIDE([Total Revenue], [Orders])
```
