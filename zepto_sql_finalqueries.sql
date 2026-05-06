DROP TABLE IF EXISTS ZEPTO;
CREATE TABLE ZEPTO(
sku_id SERIAL PRIMARY KEY,
Category VARCHAR,
name VARCHAR(150) NOT NULL,
mrp NUMERIC (8,2),
discountPercent NUMERIC(5,2),
availableQuantity INTEGER,
discountedSellingPrice NUMERIC(8,2),
weightInGas INTEGER,
outOfStock BOOLEAN,
quantity INTEGER
);
-- EXPLORE DATA
SELECT * FROM zepto;
SELECT COUNT(*) FROM zepto;
DESCRIBE zepto;

-- CHECK FOR NULL 
SELECT * FROM zepto
WHERE name IS NULL
OR category IS NULL
OR mrp IS NULL
OR discountPercent IS NULL
OR discountedSellingPrice IS NULL
OR weightInGms IS NULL
OR quantity IS NULL
OR availableQuantity IS NULL
OR outOfStock IS NULL;

-- dufferent produvt category
SELECT DISTINCT CATEGORY FROM zepto
ORDER BY category;

-- produvt in stockvs outofstock
SELECT outOfStock, COUNT(sku_id)
FROM zepto
GROUP BY outOfStock;

-- product double occuring
SELECT name, COUNT(sku_id) as "numberofsku"
FROM zepto
GROUP BY name
HAVING COUNT(sku_id) >1
ORDER BY COUNT(sku_id) DESC;

-- CHECK FOR PRICE=0
SELECT * FROM zepto
WHERE mrp=0 or discountedSellingPrice=0;
SET SQL_SAFE_UPDATES = 0; -- to allow deletig rows
DELETE FROM zepto
WHERE mrp=0 ;

-- convert pisa to rupee
UPDATE zepto
SET mrp=mrp/100.0,
discountedSellingPrice = discountedSellingPrice/100.0;

SELECT mrp,discountedSellingPrice FROM zepto;

-- top 10 best value product based on discoint percentae
SELECT name,mrp,discountPercent	FROM zepto
ORDER BY discountPercent desc
LIMIT 10;

-- mrp is high and produt is utofstock
SELECT DISTINCT name,mrp
FROM zepto
WHERE outOfStock=TRUE and mrp>300
Order by mrp desc;

-- mrp>500 and discount is less than 10%
SELECT DISTINCT name,mrp,discountPercent
FROM zepto
WHERE mrp>500 and discountPercent<10
order by mrp desc,discountPercent desc;

-- categries offering highest average discount
SELECT category,AVG(discountPercent) as awwie FROM zepto
GROUP BY category
order by awwie desc
limit 5;

-- find price per gram for weight above 100g and sort by the best values
SELECT DISTINCT name,weightInGms,name,discountedSellingPrice,
discountedSellingPrice/weightInGms as ppg
FROM zepto
WHERE weightInGms>=100 
order by ppg desc ;

-- group the products into ctageprues likelow medium bulk
SELECT DISTINCT name,weightInGms,
CASE when weightInGms<1000 then "low"
	when weightInGms>5000 then "med"
	else "bulk"
    END AS weightcategory
 FROM zepto   

