-- HOEMWORK 5

-- Q1: part a
select r.region_id, r.region_name, c.country_name
from regions r
join countries c
on c.region_id = r.region_id
order by region_name, country_name;

-- Q1: part b
select r.region_name, count(*) as CNTS
from regions r
join countries c
on c.region_id = r.region_id
group by r.region_name
order by CNTS DESC;

-- Q2: part a 
WITH
T1 AS ( SELECT C.CUSTOMER_ID, C.NAME, COUNT(*) AS ORDERS_NUM
        FROM CUSTOMERS C
        JOIN ORDERS O
        ON O.CUSTOMER_ID = C.CUSTOMER_ID 
        -- WHERE STATUS NOT LIKE 'Canceled'
        GROUP BY C.CUSTOMER_ID, C.NAME)

SELECT NAME, ORDERS_NUM
FROM T1
WHERE ORDERS_NUM = (SELECT  MAX(ORDERS_NUM) FROM T1)
ORDER BY NAME;

-- Q2: part b 

WITH
T1 AS ( SELECT C.CUSTOMER_ID, C.NAME, COUNT(*) AS ORDERS_NUM
        FROM CUSTOMERS C
        JOIN ORDERS O
        ON O.CUSTOMER_ID = C.CUSTOMER_ID 
        -- WHERE STATUS NOT LIKE 'Canceled'
        GROUP BY C.CUSTOMER_ID, C.NAME),
T2 AS ( SELECT NAME, ORDERS_NUM
		FROM T1
		WHERE ORDERS_NUM = (SELECT  MAX(ORDERS_NUM) FROM T1)
		ORDER BY NAME)

SELECT c.name, T2.ORDERS_NUM AS CNTS, SUM(oi.quantity * oi.unit_price) AS total_order_amount 
FROM ORDERS o 
JOIN ORDER_ITEMS oi ON o.order_id = oi.order_id
JOIN CUSTOMERS c on o.customer_id = c.customer_id
JOIN T2 ON T2.NAME = c.name
GROUP BY c.name, T2.ORDERS_NUM
ORDER BY total_order_amount DESC, c.name ASC;

-- Q3:

select w.warehouse_name, pc.CATEGORY_NAME, sum(i.quantity)
from PRODUCTS p
join  PRODUCT_CATEGORIES pc on pc.category_id= p.category_id
join INVENTORIES i on i.product_id = p.product_id
join WAREHOUSES w on w.warehouse_id = i.warehouse_id
group by w.warehouse_name, pc.CATEGORY_NAME
order by pc.CATEGORY_NAME, w.warehouse_name;

-- Q4

select R.region_name, C.country_name
from COUNTRIES C
join REGIONS R on R.region_id = C.region_id
LEFT join LOCATIONS L on L.country_id = C.country_id
WHERE L.location_id IS NULL
order by R.region_name, C.country_name;
