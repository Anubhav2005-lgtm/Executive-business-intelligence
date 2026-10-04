# Executive Business Intelligence Dashboard

An executive analytics portfolio project for a multi-channel retail business. The solution combines SQL, Python and Power BI-style dashboard design to turn transaction data into management-ready KPIs, performance analysis and business recommendations.

## Business Objective

Management wants a single view of business performance across revenue, profitability, customers, regions, categories and sales channels.

### Key business questions
- How are revenue and profit trending over time?
- Which regions, categories and channels drive the most value?
- Which customer segments generate the strongest revenue and profit?
- Where are high-revenue areas experiencing margin pressure?
- Which areas should management investigate or prioritize?

## Dataset

The analysis was developed using a synthetic retail dataset containing:
- 120,000 transactions
- 14,993 customers
- 250 products
- January 2024 to December 2025
- 5 regions
- 3 sales channels
- 3 customer segments
- 5 product categories

The repository contains a representative 3,000-row transaction sample for easy exploration. The full dataset was used during local analysis and is intentionally not committed to keep the public repository lightweight.

**Synthetic-data disclaimer:** This project is for portfolio and educational purposes and does not contain confidential company information.

## Tech Stack

- **SQL** — data quality, KPI, sales, customer and business-insight queries
- **Python** — Pandas, NumPy, Matplotlib, Seaborn
- **Power BI** — executive dashboard design and KPI storytelling
- **CSV / Excel** — source-data workflow
- **Git / GitHub** — version control and portfolio delivery

## Dashboard Design

### 1. Executive Overview
Revenue, profit, margin, orders, customers, AOV, monthly performance and regional contribution.

### 2. Sales Performance
Category and channel performance, top products, revenue/profit trends and interactive filters.

### 3. Customer Intelligence
Customer-segment performance, revenue per customer, one-time vs returning customers and regional customer analysis.

### 4. Management Insights
High-revenue/low-margin areas, underperforming regions and recommended business actions.

## Repository Structure

```text
executive-business-intelligence/
├── data/
│   ├── sales_transactions_sample.csv
│   ├── customers.csv
│   ├── products.csv
│   └── data_dictionary.csv
├── sql/
│   ├── 01_data_quality.sql
│   ├── 02_kpi_analysis.sql
│   ├── 03_sales_analysis.sql
│   ├── 04_customer_analysis.sql
│   └── 05_business_insights.sql
├── python/
│   └── business_analysis.py
├── dashboard/
│   └── README.md
├── reports/
│   ├── executive_summary.md
│   └── dataset_summary.csv
├── requirements.txt
└── PROJECT_STATUS.md
```

## Headline Dataset KPIs

The generated dataset contains approximately:
- Revenue: **59.11M**
- Profit: **11.44M**
- Overall profit margin: **19.36%**
- Return rate: **7.04%**

These figures describe the synthetic dataset and are not claims about a real company.

## How to Use

1. Load the transaction sample or your full transaction dataset.
2. Run the SQL scripts against a SQL database.
3. Run `python/business_analysis.py` after placing the full transaction file at `data/sales_transactions.csv`.
4. Build the four dashboard pages using the measures and layout in `dashboard/README.md`.
5. Replace the placeholder executive findings with results calculated from the final analysis.

## Portfolio Value

This project demonstrates more than chart creation: it follows a business-analysis workflow from data-quality validation → KPI definition → segmentation → profitability analysis → management recommendations.
