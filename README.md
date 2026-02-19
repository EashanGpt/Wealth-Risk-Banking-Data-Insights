# Wealth-Risk-Banking-Data-Insights
This project provides an end-to-end analysis of customer banking data to uncover patterns in financial behavior, loan exposure, and risk classification. By building a complete analytics pipeline, this project takes raw customer data, performs exploratory data analysis (EDA), loads the data into a relational database, queries it for business insights, and visualizes the findings in an interactive dashboard.

## Tech Stack 
* **Python**: Pandas, NumPy, Matplotlib, Seaborn, SQLAlchemy (For EDA and database connection)
* **Database**: PostgreSQL (For data storage and querying)
* **SQL**: For extracting business insights
* **Data Visualization**: Power BI (For interactive dashboards)
* **Environment**: Jupyter Notebook

## Dataset 
The dataset (`Banking.csv`) contains 3,000 records of banking customers with 26 attributes, including:
* **Demographics:** Age, Nationality, Gender, Occupation
* **Financials:** Estimated Income, Superannuation Savings, Credit Card Balances, Bank Loans, Deposits, Checking/Saving Accounts
* **Risk & Loyalty:** Risk Weighting (1-5), Loyalty Classification (e.g., Silver, Gold, Platinum, Jade)
* **Generated Attributes:** Income Band (Low, Medium, High)

## Project Workflow 

### 1. Data Cleaning & Exploratory Data Analysis (Python)
* Imported raw CSV data using `pandas`.
* Handled missing values and verified data types.
* Created a new derived column (`Income Band`) by binning the `Estimated Income` into 'Low', 'Medium', and 'High' categories.
* Visualized the distribution of income bands and analyzed the frequency of various categorical variables (Loyalty Classification, Risk Weighting, etc.).

### 2. Database Integration (Python -> PostgreSQL)
* Utilized `SQLAlchemy` and `psycopg2` to establish a connection to a local PostgreSQL database.
* Automated the process of loading the cleaned Pandas DataFrame directly into a PostgreSQL table named `customer`.

### 3. Business Analysis (SQL)
With the data successfully loaded into PostgreSQL, several queries were executed to answer key business questions:
* Which risk category holds the highest total loan exposure?
* What is the average income of customers across different risk categories?
* Which customers have bank loans exceeding their estimated income?
* Which occupations hold the highest average loan amounts?
* How do deposits vary across different loyalty classifications and income bands?
* Which customers are classified as "High Risk" despite having a "High" income band?

### 4. Data Visualization (Power BI)
* Connected the processed data to Power BI (`Banking Dashboard.pbix`).
* Built an interactive dashboard to visually track loan exposures, customer segmentation, risk distribution, and wealth metrics.
