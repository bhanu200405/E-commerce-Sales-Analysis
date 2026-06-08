
-- 1. Total Sales

SELECT SUM(Sales) AS Total_Sales
FROM superstore;

-- 2. Total Profit

SELECT SUM(Profit) AS Total_Profit
FROM superstore;

-- 3. Total Quantity Sold

SELECT SUM(Quantity) AS Total_Quantity
FROM superstore;

-- 4. Total Unique Orders

SELECT COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM superstore;

-- 5. Sales by Category

SELECT Category,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Category
ORDER BY Total_Sales DESC;

-- 6. Sales by Region

SELECT Region,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Region
ORDER BY Total_Sales DESC;

-- 7. Profit by Category

SELECT Category,
       SUM(Profit) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Profit DESC;

-- 8. Sales by Customer Segment

SELECT Segment,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY Segment
ORDER BY Total_Sales DESC;

-- 9. Top 10 States by Sales

SELECT State,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;

-- 10. Top 10 Products by Sales

SELECT `Product Name`,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Product Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- 11. Top 10 Customers by Sales

SELECT `Customer Name`,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Customer Name`
ORDER BY Total_Sales DESC
LIMIT 10;

-- 12. Top 10 Sub-Categories by Sales

SELECT `Sub-Category`,
       SUM(Sales) AS Total_Sales
FROM superstore
GROUP BY `Sub-Category`
ORDER BY Total_Sales DESC
LIMIT 10;

-- 13. Average Discount by Category

SELECT Category,
       AVG(Discount) AS Avg_Discount
FROM superstore
GROUP BY Category;

-- 14. Average Profit by Region

SELECT Region,
       AVG(Profit) AS Avg_Profit
FROM superstore
GROUP BY Region
ORDER BY Avg_Profit DESC;

-- 15. Count Orders by Ship Mode

SELECT `Ship Mode`,
       COUNT(*) AS Total_Orders
FROM superstore
GROUP BY `Ship Mode`
ORDER BY Total_Orders DESC;









