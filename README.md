# 🏦 Banking Analytics Dashboard | SQL Server • Power BI • Power Query • DAX

A complete end-to-end Banking Analytics Business Intelligence project built using **SQL Server**, **Power Query**, **Power BI**, and **DAX**. The project demonstrates the complete BI workflow—from database design and data preparation to interactive dashboards and business insights.

---

# 📌 Project Overview

A retail bank wanted to gain deeper insights into customer behavior, account performance, transaction trends, and overall banking operations. The objective was to transform raw banking data into an interactive analytical dashboard that enables business users and management to make data-driven decisions.

The solution was developed using SQL Server as the backend database and Power BI for reporting, with Power Query used for data cleaning and transformation.

---

# 🎯 Business Objectives

- Monitor customer growth and demographics
- Analyze account balances across different account types
- Track monthly transaction trends
- Identify inactive customer accounts
- Understand customer distribution by age and gender
- Analyze transaction types and banking activities
- Provide executives with an interactive dashboard for decision making

---

# 🏗 Project Architecture

```
Synthetic Banking Data (Generated using Claude AI)
                │
                ▼
        SQL Server Database
                │
                ▼
      SQL Tables & Relationships
                │
                ▼
      Power Query (Data Cleaning)
                │
                ▼
       Power BI Data Modeling
                │
                ▼
      DAX Measures & KPIs
                │
                ▼
 Interactive Banking Dashboard
```

---

# 🗂 Database Design

The banking database was designed using a relational schema consisting of multiple interconnected tables.

### Main Tables

- Customers
- Accounts
- Transactions
- Loans
- Branches
- Employees
- Cards
- Account Types
- Loan Types

The relationships between these tables were configured inside Power BI to support efficient reporting and accurate calculations.

---

# 🧹 Data Cleaning (Power Query)

The raw banking dataset intentionally contained various data quality issues to simulate real-world scenarios.

Cleaning operations included:

- Removing duplicate records
- Handling missing values
- Correcting inconsistent text formatting
- Standardizing date formats
- Fixing null and blank values
- Renaming columns
- Correcting data types
- Creating derived columns where required

These transformations ensured a clean and reliable dataset for reporting.

---

# 📊 Data Modeling

The Power BI data model was designed using best practices.

Features include:

- Relationship management
- Proper cardinality
- Active relationships
- Date table implementation
- Dedicated Measures Table
- Optimized model for reporting

---

# 📈 Key Performance Indicators (KPIs)

The dashboard provides insights through several business KPIs including:

- Total Customers
- Total Account Balance
- Total Transactions
- Monthly Transaction Trend
- Account Balance by Account Type
- Customer Distribution by Gender
- Customer Distribution by Age Group
- Transaction Type Analysis
- Inactive Customer Analysis
- Loan Analysis

---

# 📊 Dashboard Features

### Page 1 – Customer & Transaction Analytics

- Monthly Transaction Trend
- Customer Distribution by Age
- Customer Distribution by Gender
- Account Balance by Account Type
- Total Transaction Amount
- Customer Name Analysis

---

### Page 2 – Banking Operations Analytics

- Loan Distribution
- Branch Performance
- Card Usage Analysis
- Inactive Accounts
- Transaction Type Distribution
- Additional Banking KPIs

---

# 📐 DAX

Several DAX measures were created to perform business calculations and generate KPIs.

Examples include:

- SUM()
- CALCULATE()
- DISTINCTCOUNT()
- COUNTROWS()
- DIVIDE()
- IF()
- Date Intelligence Functions

These measures dynamically respond to report filters and slicers.

---

# 📌 Power BI Features Used

- Power Query Editor
- Data Modeling
- Relationships
- DAX Measures
- Calculated Columns
- Interactive Visuals
- Drill-down Analysis
- Slicers
- Filters
- Tooltips
- Custom Formatting

---

# 📊 Visualizations Used

- Line Chart
- Area Chart
- Clustered Column Chart
- Donut Chart
- Treemap
- Waterfall Chart
- KPI Cards
- Slicers

---

# 🛠 Tech Stack

| Tool | Purpose |
|------|----------|
| SQL Server | Database |
| SQL | Data Preparation |
| Power Query | Data Cleaning |
| Power BI | Dashboard Development |
| DAX | Business Calculations |
| Claude AI | Synthetic Dataset Generation & Business Scenario Assistance |
| Git & GitHub | Version Control |

---

# 📁 Repository Structure

```
Banking-Analytics-Dashboard/
│
├── Banking Analytics.pbix
├── SQL Scripts/
│   ├── Create Tables.sql
│   ├── Insert Data.sql
│   ├── Views.sql
│   └── Queries.sql
│
├── Dataset/
│   ├── Page 1 KPI Mapping.csv
│   └── Page 2 KPI Mapping.csv
│
├── Dashboard Screenshots/
│   ├── Page1.png
│   └── Page2.png
│
└── README.md
```

---

# 🚀 Project Workflow

```
Business Requirement
        │
        ▼
Synthetic Dataset Generation (Claude AI)
        │
        ▼
SQL Server Database Creation
        │
        ▼
Database Population
        │
        ▼
Power Query Data Cleaning
        │
        ▼
Data Modeling
        │
        ▼
DAX Measure Creation
        │
        ▼
Interactive Dashboard Development
        │
        ▼
Business Insights
```

---

# 📷 Dashboard Preview

## Customer & Transaction Analytics

![Banking Analytics Dashboard - Page 1](https://github.com/user-attachments/assets/5886631d-28f1-41f2-8398-48e836319766)

---

## Banking Operations Analytics

![Banking Analytics Dashboard - Page 2](https://github.com/user-attachments/assets/4169017a-60bc-427f-8dca-3a6d9b60818f)

---

# 💼 Business Insights

The dashboard enables stakeholders to:

- Monitor banking transactions over time
- Identify inactive customer accounts
- Analyze customer demographics
- Compare account types by balance
- Understand transaction behavior
- Support operational and strategic banking decisions

---

# 🎯 Learning Outcomes

This project strengthened my skills in:

- SQL Server Database Design
- SQL Query Writing
- Data Cleaning using Power Query
- Data Modeling
- DAX
- Power BI Dashboard Design
- Business Intelligence
- Data Visualization
- Analytical Thinking

---

# 👨‍💻 Author

**Sajal Gupta**


Aspiring Data Analyst

---

# ⭐ If you found this project helpful, don't forget to star the repository.

