
# Overview
the Sales Case Study, including what was done, how the analysis was performed, the tools used, and the insights generated. The case study focused on evaluating daily sales performance for a retail product, comparing promotional vs non-promotional periods, and examining monthly trends—particularly January 2016 and November 2016.


# What Was Done

-Analysed daily sales data consisting of date, sales, cost of sales, and quantity sold.

Calculated key metrics such as:

-Sales price per unit

-Average unit sales price (overall and daily)

-Gross profit and gross profit percentage

-Gross profit per unit

Compared promotional days vs non-promotional days.

Identified monthly demand patterns, focusing on January and November.

Calculated Price Elasticity of Demand (PED) for selected promotional periods.

Created pivot tables and charts in Excel to visualise performance trends.



# How the Case Study Was Done

1.Data Loading & Cleaning

2. Imported the dataset into Snowflake SQL.


3.Metric Calculations Using SQL

-Computed sales per unit using SALES / QUANTITY_SOLD.

-Used ROUND() to clean long decimal values.

-Calculated overall averages using AVG() and window functions.

-Created CASE statements to classify pricing (e.g., cheap, expensive, affordable).

-Calculated % gross profit and % gross profit per unit.


4. Promotion Analysis

-Identified days where quantity sold spiked or price was reduced.

-Calculated PED using percentage changes in price and quantity.

5. Excel Visualisations

-Exported SQL output to Excel.

-Created pivot tables to compare months, promotional vs non-promotional days, and units vs revenue.

-Built charts to visualise:

-Daily sales price per unit

-Monthly sales trends

Quantity vs sales comparing January and November

# Insights Found
1. January VS November

-January showed stable but moderate sales on non-promotional days.

-November showed very high performance during promotional activity, with quantity sold more than doubling on some days.

-Promotions in November significantly boosted both sales volume and overall revenue.

2. Promotional vs Non-Promotional Days:

-Promotional days had much higher quantity sold, proving strong customer responsiveness.

-However, sales price per unit decreased, meaning profit margins need careful monitoring.

3. Overall Sales Behaviour:

-The product performs better in total revenue during promotions but better in margin per unit during regular pricing.

-Average selling price across the full dataset remained consistent despite daily fluctuations.

4. **Price Elasticity of Demand (PED):*

-PED values showed that demand is elastic during promotions: small price drops created big increases in quantity sold.

-This indicates that promotions are effective for this product.

# Tools Used

**Planning:** Miro

**Data Processing Platform:** Snowflake

**Data Visualization:** Microsoft Excel

**Presentation:** Microsoft PowerPoint
