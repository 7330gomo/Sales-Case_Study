--Exploratory Data Analysis

--To check the begining date of sales
  SELECT min(date) 
FROM
  CASE_STUDY4.SALES.DATA;
  

--To check the recent date of sales
  SELECT min(date) 
FROM
  CASE_STUDY4.SALES.DATA;

  
--To check day difference between the start date and recent datw 
SELECT
  DATEDIFF(DAY,'1/1/2014', '9/9/2016') AS Number_of_sales_days
  FROM CASE_STUDY4.SALES.DATA;
  

---To check distinct sales per unit 
SELECT
 DISTINCT(SALES / QUANTITY_SOLD) AS Distinct_unit_sales 
 FROM CASE_STUDY4.SALES.DATA;
 

 ---To check total sales
SELECT
 SUM(SALES) AS TOTAL_SALES
 FROM CASE_STUDY4.SALES.DATA;
 


 
  ---To check total quntities
SELECT
 SUM(quantity_sold) AS TOTAL_QUANTITIES
 FROM CASE_STUDY4.SALES.DATA;

 

  ---To check total cost of sales
SELECT
 SUM(cost_of_sales) AS TOTAL_Cost_of_sales
 FROM CASE_STUDY4.SALES.DATA;
 
 ---To find out the avg_price of all sales
SELECT
AVG(186909828.25688/5279872) AS Avg_unit_price
 FROM CASE_STUDY4.SALES.DATA;


 --- To check MAX percentage_gross_profit
 SELECT
MAX((SALES - COST_OF_SALES )/ SALES * 100) AS Percentage_gross_profit,
 FROM CASE_STUDY4.SALES.DATA;

 --- To check MIN percentage_gross_profit
 SELECT
MIN((SALES - COST_OF_SALES )/ SALES * 100) AS Percentage_gross_profit,
 FROM CASE_STUDY4.SALES.DATA;

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
--- CODE FOR THE YEAR 2016


SELECT  DATE,
    MONTHNAME(TO_DATE(DATE, 'DD/MM/YYYY')) AS Month_of_sales,
    EXTRACT(YEAR FROM TO_DATE(DATE, 'DD/MM/YYYY')) AS Year_of_sales,
    EXTRACT(DAY FROM TO_DATE(DATE, 'DD/MM/YYYY')) AS Day_of_sales,
    DATE,
ROUND(SALES,0) AS SALES,
ROUND(COST_OF_SALES,0) AS COST_OF_SALES,
QUANTITY_SOLD,
ROUND(SALES/QUANTITY_SOLD,0) AS Sales_per_unit,
ROUND(AVG(186909828.25688/5279872),0) AS Avg_unit_price,

CASE 
    WHEN ROUND(SALES/QUANTITY_SOLD,0) < Avg_unit_price THEN 'On sale/Promotion'
    WHEN ROUND(SALES/QUANTITY_SOLD,0) = Avg_unit_price THEN 'Normal price'
    WHEN ROUND(SALES/QUANTITY_SOLD,0) > Avg_unit_price THEN 'Expensive'
    ELSE 'Unknown'
END AS price_category,


ROUND(COST_OF_SALES/QUANTITY_SOLD,0) AS Cost_per_unit,
ROUND((SALES - COST_OF_SALES )/ SALES * 100 ,0)  AS Percentage_gross_profit,


CASE
    WHEN ROUND((SALES - COST_OF_SALES )/ SALES * 100 ,0) < 0 THEN 'Great Loss'
    WHEN ROUND((SALES - COST_OF_SALES )/ SALES * 100 ,0) BETWEEN 0 AND 10 THEN 'Minimal Gross Profit'
    ELSE 'Great Gross Profit'
END AS Daily_GP_Category,

ROUND((SALES / QUANTITY_SOLD )- (COST_OF_SALES/QUANTITY_SOLD)/(SALES / QUANTITY_SOLD)*100 ,0) AS Percentage_gross_profit_per_unit
   FROM CASE_STUDY4.SALES.DATA
WHERE EXTRACT(YEAR FROM TO_DATE(DATE, 'DD/MM/YYYY')) = 2016
GROUP BY ALL;
