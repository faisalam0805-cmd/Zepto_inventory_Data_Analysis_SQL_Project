drop table if exists zepto;

create table zepto(
sku_id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY, --#makes sure it doesn't take previous vaules
category varchar(120),
name varchar(100) not null,
mrp numeric(10,2),
discountPercent numeric(5,2),
availableQuantity integer,
discountedSellngPrice numeric(8,2),
weightInGms Integer,
outOfStock Boolean,
quantity Integer
)
-- data exploraion

-- count of rows
select count(*) from zepto ;

-- sample data
select * from zepto
limit 10;

-- null values
select * from zepto
where name is null
or
category is null
or
mrp is null
or
discountPercent is null
or
availableQuantity is null
or
discountedSellngPrice is null
or
weightInGms is null
or
outOfStock is null
or
quantity is null;

-- different product categories
select distinct category 
from zepto
order by category;

-- products in stock vs products out of stock
select outofstock, count(sku_id)
from zepto
group by outofstock;

-- product name present multiple times
select name , count(sku_id) as "number_of_SKUs"
from zepto
group by name
having  count(sku_id) > 1
order by count(sku_id) Desc;

-- data cleaning

-- products where price is zero
select * from Zepto
where mrp = 0 
or discountedSellngPrice = 0;

delete from zepto
where mrp = 0;

-- convert paise to rupees
update zepto
set mrp = mrp/100.0,
    discountedSellngPrice = discountedSellngPrice/100.0;

select mrp, discountedSellngPrice from zepto;

-- Q1. Find the top 10 best-value products based on the discount percentage.
select  name, mrp , discountpercent
from zepto
order by discountpercent Desc 
limit 10;

-- Q2.What are the Products with High MRP but Out of Stock
select name, mrp from zepto
where outofstock = True and mrp > 300
order by mrp Desc ;

-- Q3.Calculate Estimated Revenue for each category
select category , sum(discountedSellngPrice *availableQuantity ) as estimated_revenue 
from zepto
group by category
order by estimated_revenue Desc;

-- Q4. Find all products where MRP is greater than ₹500 and discount is less than 10%.
select name, mrp, discountpercent 
from zepto
where mrp > 300.0 and discountpercent < 10
order by mrp Desc , discountpercent Desc;

-- Q5. Identify the top 5 categories offering the highest average discount percentage.
select category , Round(avg(discountpercent),2) as Average_discount_percent
from zepto
group by category
order by Average_discount_percent Desc

-- Q6. Find the price per gram for products above 100g and sort by best value.
select Distinct name, discountedSellngPrice, weightingms, ROUND(discountedSellngPrice/weightingms ,2) as price_per_gm
from zepto
where weightingms > 100
order by price_per_gm Desc

-- Q7.Group the products into categories like Low, Medium, Bulk.
select distinct name, weightingms, 
case when weightingms < 500 then 'low'
     when weightingms < 1000 then 'Medium'
	 Else 'Bulk'
	 End As Weight_category
from zepto; 	 
	 
-- Q8.What is the Total Inventory Weight Per Category
select category , sum(weightingms*availablequantity) as total_inventory_weight
from zepto
group by category 
order by total_inventory_weight Desc;