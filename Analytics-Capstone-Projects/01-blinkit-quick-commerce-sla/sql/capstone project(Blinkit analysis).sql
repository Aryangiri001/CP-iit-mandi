CREATE DATABASE blinkit;

USE blinkit;

select * from orders

SELECT COUNT(*) AS Total_Orders FROM orders; -- Querry to find total no of rows in the dataset -- 

SELECT *
FROM orders
LIMIT 10; -- Querry to find the first 10 elements of the dataset

SELECT Order_ID,
COUNT(*) AS Duplicate_Count
FROM orders
GROUP BY Order_ID 
HAVING COUNT(*) > 1; --  Querry To find the duplicate orders 

SELECT
SUM(Order_ID IS NULL) AS OrderID_NULL,
SUM(Company IS NULL) AS Company_NULL,
SUM(City IS NULL) AS City_NULL,
SUM(Customer_Age IS NULL) AS CustomerAge_NULL,
SUM(Order_Value IS NULL) AS OrderValue_NULL,
SUM(Delivery_Time_Min IS NULL) AS DeliveryTime_NULL,
SUM(Distance_Km IS NULL) AS Distance_NULL,
SUM(Items_Count IS NULL) AS Items_NULL,
SUM(Product_Category IS NULL) AS Category_NULL,
SUM(Payment_Method IS NULL) AS Payment_NULL,
SUM(Customer_Rating IS NULL) AS CustomerRating_NULL,
SUM(Discount_Applied IS NULL) AS Discount_NULL,
SUM(Delivery_Partner_Rating IS NULL) AS PartnerRating_NULL
FROM orders;

SELECT
ROUND(AVG(Delivery_Time_Min),2) AS Avg_Delivery_Time
FROM orders; -- Querry to find the average delivery time

SELECT
SUM(Order_Value) AS Total_Revenue
FROM orders; -- Querry to find the total revenue

SELECT
MAX(Order_Value) AS Highest_Order
FROM orders; -- Querry to find the highest order value 

SELECT
MIN(Order_Value) AS Lowest_Order
FROM orders; -- Querry to find lowest order value 

SELECT
ROUND(AVG(Customer_Rating),2) AS Avg_Customer_Rating
FROM orders; -- Querry to find average customer rating 

SELECT
ROUND(AVG(Delivery_Partner_Rating),2) AS Avg_Partner_Rating
FROM orders; -- Querry to find average delivery partner rating






