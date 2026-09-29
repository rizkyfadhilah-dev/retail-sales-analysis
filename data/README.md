# Retail Sales Analysis

Exploratory Data Analysis (EDA) of retail sales data using Python, Pandas, and Matplotlib.

## Project Overview

This project analyzes retail sales transaction data to identify sales performance, profitability, product performance, monthly sales trends, and sales distribution across cities.

The analysis was performed using Python in Google Colab.

## Objectives

The main objectives of this analysis are:

- Understand the overall retail sales performance.
- Analyze sales and profit by product.
- Identify products with the highest total profit.
- Analyze monthly sales trends.
- Compare sales and profit across cities.
- Calculate profit margin by city.
- Identify useful business insights from the transaction data.

## Tools & Technologies

- Python
- Pandas
- Matplotlib
- Google Colab
- GitHub

## Dataset

The dataset contains 1,000 retail transactions with information including:

- Order ID
- Order Date
- Customer ID
- Customer Name
- City
- Category
- Product
- Quantity
- Sales
- Cost
- Profit
- Payment Method

## Analysis Performed

### 1. Data Inspection & Cleaning

The dataset was inspected for:

- Missing values
- Data types
- Duplicate records
- Numerical data consistency
- Date formatting

The final dataset contains 1,000 transaction records.

### 2. Sales Distribution

The distribution of sales was analyzed using a histogram to understand the spread of transaction values.

### 3. Product Performance

Products were analyzed based on total quantity, sales, and profit.

The top products by total profit included:

| Product | Total Profit |
|---|---:|
| Monitor | Rp13,502,800 |
| Drawer | Rp8,412,300 |
| Office Chair | Rp6,685,600 |
| Webcam | Rp5,752,100 |
| Bookshelf | Rp4,576,800 |

### 4. Monthly Sales Trend

Monthly sales were analyzed to identify changes in sales performance throughout the period.

| Month | Total Sales |
|---|---:|
| January | Rp50,576,500 |
| February | Rp44,309,400 |
| March | Rp68,045,900 |
| April | Rp57,772,400 |
| May | Rp50,569,300 |
| June | Rp60,054,200 |

March recorded the highest monthly sales in the analyzed period.

### 5. Sales by City

Sales performance was compared across five cities.

| City | Total Sales |
|---|---:|
| Yogyakarta | Rp101,211,700 |
| Sleman | Rp86,087,400 |
| Gunungkidul | Rp60,252,100 |
| Bantul | Rp43,268,200 |
| Kulon Progo | Rp40,508,300 |

Yogyakarta recorded the highest total sales among the cities in the dataset.

### 6. Profit Margin by City

Profit margin was calculated using:

**Profit Margin = Profit / Sales × 100**

| City | Profit Margin |
|---|---:|
| Kulon Progo | 21.47% |
| Yogyakarta | 20.97% |
| Sleman | 20.78% |
| Bantul | 20.65% |
| Gunungkidul | 20.54% |

The results show that the city with the highest sales was not necessarily the city with the highest profit margin.

## Key Findings

Based on the exploratory analysis:

1. Yogyakarta generated the highest total sales among the five cities.
2. Monitor generated the highest total profit among the analyzed products.
3. March recorded the highest monthly sales.
4. Kulon Progo had the highest profit margin despite having the lowest total sales among the five cities.
5. Sales volume and profit margin provide different perspectives for evaluating business performance.

## Project Structure

```text
retail-sales-analysis/
│
├── data/
│   └── retail_sales_cleaned.csv
│
├── notebooks/
│   └── data_sales.ipynb
│
└── README.md
