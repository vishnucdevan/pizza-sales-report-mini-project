select * from pizza_sales;
Select SUM(total_price) / COUNT(DISTINCT order_id) AS Average_Order_Value from pizza_sales;
Select SUM(quantity) as Total_Pizza_Sold from pizza_sales;
Select COUNT(distinct order_id) AS Total_Orders from pizza_sales;
Select CAST(CAST(SUM(quantity) AS DECIMAL(10,2)) / 
CAST(count(distinct order_id) AS DECIMAL(10,2)) AS DECIMAL(10,2))  as Average_Pizzas_Per_Order FROM pizza_sales;
SELECT DATENAME(DW,order_date) as Order_day, count (distinct order_id) AS Total_orders from pizza_sales
GROUP BY DATENAME(DW,order_date)
SELECT DATENAME(MONTH,order_date) as Month_name, count (distinct order_id) AS Total_orders from pizza_sales
GROUP BY DATENAME(MONTH,order_date)
ORDER BY Total_orders desc

select pizza_category,SUM (total_price) as Total_sales, SUM(total_price) * 100/ (select sum(total_price) from pizza_sales) as pct from pizza_sales 
group by pizza_category
SELECT DATENAME(DW,order_date) as Order_day, count (distinct order_id) AS Total_orders from pizza_sales
WHERE DATEPART(QUARTER, order_date)=1
GROUP BY DATENAME(DW,order_date)
