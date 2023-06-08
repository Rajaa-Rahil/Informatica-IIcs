-- Query countries_tbl
-- part a
SELECT REGION_ID, COUNTRY_NAME,
    CASE
        WHEN REGION_ID = 1 THEN 'Europe'
        WHEN REGION_ID = 2 THEN 'Americas'
        WHEN REGION_ID = 3 THEN 'Asia'
        ELSE 'Middle East and Africa'
    END AS REGION_NAME   
from countries_tbl;

-- part b

SELECT  
    CASE
        WHEN REGION_ID = 1 THEN 'Europe'
        WHEN REGION_ID = 2 THEN 'Americas'
        WHEN REGION_ID = 3 THEN 'Asia'
        ELSE 'Middle East and Africa'
    END AS REGION_NAME,  COUNT(REGION_ID) AS TOTAL_REGION
FROM countries_tbl
GROUP BY REGION_ID
ORDER BY REGION_NAME ASC, COUNT(REGION_ID) DESC;


-- part C

SELECT  
    CASE
        WHEN REGION_ID = 1 THEN 'Europe'
        WHEN REGION_ID = 2 THEN 'Americas'
        WHEN REGION_ID = 3 THEN 'Asia'
        ELSE 'Middle East and Africa'
    END AS REGION_NAME,  COUNT(REGION_ID) AS TOTAL_COUNTRY
FROM countries_tbl
GROUP BY REGION_ID
ORDER BY COUNT(REGION_ID)DESC, REGION_NAME ASC;


-- PART D

SELECT SUBSTR(COUNTRY_NAME,1,1) As FIRST_ALPHA, COUNT(*) AS COUNT_ALPHA
FROM countries_tbl
GROUP BY SUBSTR(COUNTRY_NAME,1,1)
ORDER BY COUNT(*) DESC;

-- QUERY 2: Query locations_tbl
-- PART A
/*
     || Concatenates character strings data.
     Example:
              SELECT 'Name is ' || last_name
              FROM employees;
*/

-- PART B

select * from locations_tbl;

SELECT 'The address at location_id '||LOCATION_ID ||' is '||STREET_ADDRESS||','||CITY||','||STATE_PROVINCE||'-'||POSTAL_CODE||','||COUNTRY_ID AS LOCATION_DESCRIPTION
FROM LOCATIONS_TBL;

-- Query3: 3. Query jobs_tbl
-- PART A

SELECT * FROM jobs_tbl;

SELECT JOB_TITLE,
    CASE 
        WHEN (JOB_TITLE LIKE '%Account%') THEN 'Accounting' 
        WHEN (JOB_TITLE LIKE '%Admin%') THEN 'Administerial'
        WHEN (JOB_TITLE LIKE '%President%') THEN 'Presidential'
        WHEN (JOB_TITLE LIKE '%Manager%') THEN 'Managerial'
        WHEN (JOB_TITLE LIKE '%Clerk%') THEN 'Clerical'
        ELSE 'Others'
    END AS JOB_CLASS 
FROM jobs_tbl;

-- PART B

SELECT 
    CASE 
        WHEN (JOB_TITLE LIKE '%Account%') THEN 'Accounting' 
        WHEN (JOB_TITLE LIKE '%Admin%') THEN 'Administerial'
        WHEN (JOB_TITLE LIKE '%President%') THEN 'Presidential'
        WHEN (JOB_TITLE LIKE '%Manager%') THEN 'Managerial'
        WHEN (JOB_TITLE LIKE '%Clerk%') THEN 'Clerical'
        ELSE 'Others'
    END AS JOB_CLASS,COUNT(*) AS COUNT_OF_EMPLS, TO_CHAR(AVG(MIN_SALARY),'FM99999990D00') AS AVG_SAL_LOW_LEVEL, 
    TO_CHAR(AVG(MAX_SALARY),'FM99999990D00') AS AVG_SAL_HIGH_LEVEL, TO_CHAR(AVG((MIN_SALARY + MAX_SALARY)/2),'FM99999990D00') AS AVG_SAL_LEVEL
FROM jobs_tbl
GROUP BY 
    (CASE 
        WHEN (JOB_TITLE LIKE '%Account%') THEN 'Accounting' 
        WHEN (JOB_TITLE LIKE '%Admin%') THEN 'Administerial'
        WHEN (JOB_TITLE LIKE '%President%') THEN 'Presidential'
        WHEN (JOB_TITLE LIKE '%Manager%') THEN 'Managerial'
        WHEN (JOB_TITLE LIKE '%Clerk%') THEN 'Clerical'
        ELSE 'Others'
    END);


-- Query4: Query dependents_tbl
--  PART A

SELECT * FROM dependents_tbl;

SELECT DEPENDENT_ID, FIRST_NAME, LAST_NAME,
    CASE 
        WHEN (UPPER(SUBSTR(FIRST_NAME,1,1)) IN ('A','E','O','I','U')) AND LENGTH(FIRST_NAME)>2 THEN SUBSTR(FIRST_NAME,1,3)|| SUBSTR(LAST_NAME,1,2)||'@xyzmail.com'
        WHEN (UPPER(SUBSTR(FIRST_NAME,1,1)) NOT IN ('A','E','O','I','U')) AND LENGTH(LAST_NAME)>4 THEN SUBSTR(LAST_NAME,1,2)|| SUBSTR(FIRST_NAME,1,2)||'@xyzmail.com'
        ELSE SUBSTR(FIRST_NAME,1,2)|| SUBSTR(LAST_NAME,1,2)||'@xyzmail.com'
    END AS COMPANY_EMAIL 
FROM dependents_tbl;

-- Query5: Query Employees_tbl EMPLOYEE_ID
-- PART A

SELECT * FROM Employees_tbl;

SELECT TO_CHAR(HIRE_DATE,'YYYY') AS HIRE_YEAR, COUNT(*) AS CNT
FROM Employees_tbl
GROUP BY TO_CHAR(HIRE_DATE,'YYYY')
HAVING COUNT(*) > 1;

-- PART B

SELECT TO_CHAR(HIRE_DATE,'MM') AS HIRE_MONTH, COUNT(*) AS CNT
FROM Employees_tbl
GROUP BY TO_CHAR(HIRE_DATE,'MM')
ORDER BY TO_CHAR(HIRE_DATE,'MM');

-- USING EXTRACT FUNCTION

SELECT EXTRACT(MONTH FROM HIRE_DATE) AS HIRE_MONTH, COUNT(*) AS CNT
FROM Employees_tbl
GROUP BY EXTRACT(MONTH FROM HIRE_DATE)
ORDER BY EXTRACT(MONTH FROM HIRE_DATE);

-- Query6: Query emergency_contacts_tbl
-- PART A

SELECT * FROM emergency_contacts_tbl;

SELECT EMPLOYEE_ID,
    CASE
        WHEN HOME_PHONE IS NOT NULL THEN HOME_PHONE
        WHEN WORK_PHONE IS NOT NULL THEN WORK_PHONE
        WHEN CELL_PHONE IS NOT NULL THEN CELL_PHONE
        ELSE '999-999-9999'
    END  AS PHONE_NUMBER 
FROM emergency_contacts_tbl;


-- USING NVL AND NVL2

SELECT EMPLOYEE_ID, NVL(NVL2(HOME_PHONE, WORK_PHONE, CELL_PHONE),'999-999-9999') AS PHONE_NUMBER
FROM emergency_contacts_tbl;


-- PART B
-- USING SUBQUERY

SELECT 'EMPLOYEE_ID '|| EMPLOYEE_ID || ' IS ' || FIRST_NAME || ' '||LAST_NAME ||' AND HER AVAILABLE PHONE IS '|| PHONE_NUMBER AS EMPLOYEE_INFORMATION
FROM 
    (SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, NVL(NVL2(HOME_PHONE, WORK_PHONE, CELL_PHONE),'999-999-9999') AS PHONE_NUMBER
      FROM emergency_contacts_tbl);


