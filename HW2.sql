-- Q1:
select * 
from employee
where full_name like 'A%d';

-- Q2:
select sale_amt, (Sale_amt * 10/100) as 'sale_amt_10%', (Sale_amt * 20/100) as 'sale_amt_20%',
	    (Sale_amt * 30/100) as 'sale_amt_30%'
from sales;

-- Q3:
select * 
from info_iicsdb.customer
where CUST_CITY like 'T%' or CUST_CITY like 'B%' or CUST_COUNTRY = 'UK'
or ((OPENING_AMT = RECEIVE_AMT) and (RECEIVE_AMT = PAYMENT_AMT));
