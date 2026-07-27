# ☕ Bright Coffee Shop Sales Analysis Dashboard

> **Turning coffee shop sales data into actionable business insights through SQL, Databricks, and interactive dashboards.**

Project Overview

The **Bright Coffee Shop Sales Analysis Dashboard** is a business intelligence project developed to analyse transactional sales data from **Bright Coffee Shop**. The project focuses on transforming raw sales data into meaningful insights that help management understand business performance, customer purchasing behaviour, product performance, and sales trends.

Using **Databricks SQL**, the dataset was cleaned, explored, and analysed before being visualised in an interactive dashboard. The dashboard presents key performance indicators (KPIs), charts, and business insights that support data-driven decision-making.

The objective of this project is to demonstrate the complete data analytics workflow—from data preparation and SQL analysis to dashboard development and business recommendations.

---

Dataset Overview

The analysis is based on the **Bright Coffee Shop Sales Dataset**, which contains transactional sales records collected over a six-month period.

The dataset includes information such as:

* Transaction ID
* Transaction Date
* Transaction Time
* Store Location
* Product Category
* Product Type
* Transaction Quantity
* Unit Price
* Total Amount (calculated)

This data provides a complete view of the coffee shop's daily sales activities and customer purchasing patterns.

 Data Cleaning

Before beginning the analysis, the dataset was cleaned to improve data quality and ensure accurate reporting.

The following data quality checks were performed using SQL:

* Checked for NULL values
* Identified duplicate records
* Verified data types
* Validated transaction quantities
* Verified unit prices
* Calculated Total Amount using:

Additional calculated fields were also created to simplify the analysis.

- Business Questions Answered

The project answers several important business questions.

### Sales Performance

* What is the total revenue generated?
* How many transactions occurred?
* What is the average transaction value?
* What is the total quantity sold?
* Which month generated the highest revenue?
* Which month generated the lowest revenue?

<img width="642" height="423" alt="image" src="https://github.com/user-attachments/assets/663ca87f-ad33-4675-8538-a178c215ea66" />

---

### Product Performance

* Which products generate the highest revenue?
* Which products sell the most units?
* Which product category performs best?
* What are the Top 10 best-selling products?

---

### Store Performance

* Which store generates the highest revenue?
* Which store has the highest number of transactions?
* Which store sells the most products?

---

### Customer Behaviour

* What are the busiest hours?
* Which days generate the highest sales?
* How do weekday and weekend sales compare?
* What are the peak business hours?

 Dashboard

The dashboard was designed to provide management with an interactive view of business performance.

<img width="900" height="335" alt="image" src="https://github.com/user-attachments/assets/70348b3e-1fd7-4a83-91f7-0f54b8fa16c2" />


## Dashboard Pages
## Sales Overview

KPIs

* Total Revenue
* Total Transactions
* Total Quantity Sold
* Average Transaction Value
* Average Unit Price
* Best Selling Product
* Top Performing Store

Charts

* Monthly Revenue Trend
* Daily Revenue Trend
* Revenue by Store
* Revenue by Category

<img width="902" height="384" alt="image" src="https://github.com/user-attachments/assets/c2c7e25f-5dfc-422a-b214-7ee56dd30cb2" />

---

## Store Performance

Charts

* Revenue by Store
* Transactions by Store
* Average Sale by Store

* 
<img width="923" height="371" alt="image" src="https://github.com/user-attachments/assets/3abf835b-a131-4dcb-9f83-010e187fb2f6" />

---

### Customer Behaviour

<img width="900" height="271" alt="image" src="https://github.com/user-attachments/assets/87a01832-8c3d-4944-a93c-50e5b84bb173" />

# Key Insights

From the analysis, several important findings emerged:

* Certain products consistently generated the highest revenue.
* A small number of products accounted for a significant share of total sales.
* Sales varied by month, indicating seasonal trends.
* Peak business hours were identified, helping to understand customer traffic patterns.
* Store performance differed across locations, revealing opportunities for operational improvements.
* Customer purchasing behaviour changed depending on the time of day.


#  Business Recommendations

Based on the findings, the following recommendations were made:

* Increase stock levels for top-selling products.
* Schedule more staff during peak business hours.
* Promote products with lower sales through targeted campaigns.
* Use monthly sales trends to plan inventory.
* Focus marketing efforts on high-performing stores while developing strategies to improve lower-performing locations.
* Continue monitoring key performance indicators to support informed decision-making.

--
# Technologies Used

* **Databricks SQL** – Data cleaning, transformation, and analysis.
* **Microsoft Excel** – Pivot Tables, Pivot Charts, KPI Cards, and Slicers.
* **GitHub** – Version control and project documentation.
* **Miro** – Project planning and dashboard wireframing.

---

# 📁 Project Structure

```text
Bright-Coffee-Shop-Sales-Analysis/
│
├── Dataset/
│   └── Bright_Coffee_Shop_Sales.csv
│
├── SQL/
│   ├── Data_Cleaning.sql
│   ├── Exploratory_Data_Analysis.sql
│   ├── Sales_Analysis.sql
│   └── Dashboard_Queries.sql
│
├── Dashboard/
│   ├── Dashboard.pbix / Dashboard.xlsx
│   └── Dashboard_Screenshots/
│
├── Presentation/
│   └── Bright_Coffee_Shop_Presentation.pptx
│
├── README.md
└── LICENSE
```

  
# 📚 What I Learned

Through this project, I gained hands-on experience in analysing transactional sales data, writing efficient SQL queries, designing business dashboards, and communicating insights through visualisations. I also strengthened my ability to translate business questions into data-driven solutions and present recommendations that can support strategic decision-making.

ALL LINKS: 
--**-DataBrick**: https://dbc-dca8249f-ed09.cloud.databricks.com/dashboardsv3/01f189a6329417468e25f9a31a9c3aa3/published?o=7474656124792699
**Lovable:** https://shopglow-analytics.lovable.app
**Miro** https://miro.com/app/board/uXjVH3rgm1A=/?share_link_id=710985476420

