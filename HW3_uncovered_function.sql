-- 1. ASCII function: Return the ASCII value of character or the first character in string.

SELECT ASCII('I');
-- Result 73

SELECT ASCII('Informatica');
-- Result 73

SELECT FIRST_NAME, EMPL_STATUS, SALARY, ASCII(FIRST_NAME) AS AsciiFName, ASCII(EMPL_STATUS) AS AsciiStatus
FROM info_iicsdb.EMPLOYEE
ORDER BY salary DESC LIMIT 5;

-- 2. CHAR_LENGTH(), CHARACTER_LENGTH() functions: return the length of a string (in characters)., 
--     LENGTH() function: returns the length of a string (in bytes).

SELECT FIRST_NAME, CHAR_LENGTH(TRIM(FIRST_NAME)) AS 'CHAR_LENGTH_FNAME', 
	   CHARACTER_LENGTH(LTRIM(RTRIM(FIRST_NAME))) AS 'CHARACTER_LENGTH_FNAME', 
	   LENGTH(TRIM(FIRST_NAME)) AS 'LENGTH_FNAME'
FROM info_iicsdb.EMPLOYEE
LIMIT 7;

drop table LengthDemo;
create table LengthDemo(FirstName varchar(200), SecondName varchar(255) unicode);
insert into LengthDemo values('John','Ritter');

select FirstName, SecondName, char_length(SecondName),length(SecondName) from info_iicsdb.LengthDemo;
select * from LengthDemo;

-- 3. CONCAT_WS() function adds two or more expressions together with a separator.

SELECT CONCAT_WS("-", "SQL", "Tutorial", "is", "fun!") AS ConcatenatedString;

select * from info_iicsdb.orders;

select *, concat_ws('_ ',CUST_CODE, AGENT_CODE, ORD_DESCRIPTION) As New_code from info_iicsdb.orders limit 7;

-- 4. CAST() Function and  CONVERT() function convert a value (of any type) into a specified datatype.

select *, cast(ORD_DATE as datetime) as ORD_CastDateTime,  convert(ORD_DATE, datetime) As ORD_ConvertDateTime
from info_iicsdb.orders limit 7;

-- 5. FIELD() function returns the index position of a value in a list of given values.

SELECT FIELD('g','a', 'm', 's', 'g', 'c');

SELECT FIELD('B', 'a', 'b', 'c', 'd', 'e', 'f');

select * from info_iicsdb.SALES;

SELECT FIRST_NAME, FIELD(trim(FIRST_NAME), 'Ivan', 'Alex', 'McDen') 
FROM info_iicsdb.EMPLOYEE;

-- 6 FIND_IN_SET() function returns the position of a string within a list of strings.

SELECT FIND_IN_SET("q", "s,q,l");

SELECT * 
FROM info_iicsdb.EMPLOYEE
WHERE FIND_IN_SET('E005', MANAGER_EMPLID);

-- 7. INSERT() function inserts a string within a string at the specified position and for a certain number of characters
select insert('This is an example', 9, 2, 'a short') as insert_word;

select insert('Hello World', 6, 1, ' SQL ') as Hello;

select * from info_iicsdb.listofitem;

select *, insert(BATCHCODE, 3, 1, '-')  as new_BATCHCODE
from info_iicsdb.listofitem;

select * from info_iicsdb.EMPLOYEE;

-- 8. LCASE(), LOWER() function: converts a string to lower-case.

SELECT LCASE('USING THIS FUNCTION TO CONVERT THE STRING INTO LOWER-CASE') AS LowerText; 
SELECT LOWER('USING THIS FUNCTION TO CONVERT THE STRING INTO LOWER-CASE') AS LowerText; 

select LOWER(FIRST_NAME) as LFirst_name, LCASE(LAST_NAME) as Llast_name, PHONE 
FROM info_iicsdb.EMPLOYEE;

-- 9. UCASE(), UPPER() function converts a string to upper-case.

SELECT UCASE('using this function to convert the string into upper-case') AS UpperText; 
SELECT UPPER('using this function to convert the string into upper-case') AS UpperText; 

SELECT UPPER(concat(trim(FIRST_NAME), '  ' ,trim(LAST_NAME))) as ufull_name
FROM info_iicsdb.EMPLOYEE;

-- 10. FORMAT function: turns numbers or datetimes into text, with rules for how they are displayed.

SELECT FORMAT(0112223333, '##-###-####');

SELECT SALARY, FORMAT(SALARY, 'currency') AS FormattedsALARY 
FROM info_iicsdb.EMPLOYEE;

-- 11. LOCATE and POSITION() functions: functions return the position of the first occurrence of a substring in a string.
SELECT LOCATE('g', 'geeksforgeeks') AS MatchLocation;
-- Result = 1

SELECT LOCATE('g', 'geeksforgeeks', 3) AS MatchLocation;
-- Result = 9

SELECT FIRST_NAME, LOCATE("a", FIRST_NAME)
FROM info_iicsdb.EMPLOYEE
where LOCATE("a", FIRST_NAME)>0 ;

SELECT POSITION('g' IN 'geeksforgeeks') AS location;
-- resul = 1
select * from info_iicsdb.customer;

SELECT * 
FROM info_iicsdb.customer
WHERE POSITION('London' IN WORKING_AREA) > 0;

-- 12. The LPAD() function left-pads a string with another string, to a certain length.

SELECT LPAD("SQL Tutorial", 20, "ABC");
-- the result is: 'ABCABCABSQL Tutorial'



SELECT EMPL_ID, LPAD(SALARY, 6, 00) AS NEW_SALARY
FROM info_iicsdb.EMPLOYEE
WHERE length(SALARY) < 5;

-- 13 The RPAD() function right-pads a string with another string, to a certain length.

SELECT RPAD("SQL Tutorial", 20, "ABC");
-- the result is: 'SQL TutorialABCABCAB'

SELECT RPAD(TRIM(FIRST_NAME),12,"*") AS NEW_FNAME 
FROM info_iicsdb.EMPLOYEE;

-- 14. MID() function extracts a substring from a string (starting at any position).

SELECT MID("SQL Tutorial", 5, 3) AS ExtractString;
-- the result is: 'Tut'
SELECT FIRST_NAME, MID(FIRST_NAME, 2, 3) as ShortName 
FROM info_iicsdb.EMPLOYEE;

-- 15. REPEAT() function repeats a string as many times as specified.

SELECT REPEAT("SQL ", 3) AS Repeated_String;
-- the result is: 'SQL SQL SQL ' 

SELECT FIRST_NAME, REPEAT(TRIM(FIRST_NAME), 2) AS Repeated_Name
FROM info_iicsdb.EMPLOYEE;

-- 16. REPLACE() function returns a new string in which all occurrences of the substring are replaced by the new_substring.
-- REPLACE(input_string, substring, new_substring);

SELECT REPLACE('This is SQL Tutorial', 'SQL', 'Java');
-- the result is: 'This is Java Tutorial'

UPDATE info_iicsdb.EMPLOYEE
SET FIRST_NAME = REPLACE(FIRST_NAME, 'Alex', 'Omer');

-- 17. REVERSE() function: returns the reverse order of that string.

SELECT REVERSE('ecnalubma') result;
-- the result is: 'ambulance'

SELECT MANAGER_EMPLID, REVERSE(MANAGER_EMPLID) as REVERSE_ID 
FROM info_iicsdb.EMPLOYEE
LIMIT 5;

-- 18. The SPACE() function returns a string of repeated spaces. 

SELECT  concat('MOHAMMED' , SPACE(1),'OMER') full_name;
-- the result is: 'MOHAMMED OMER'

SELECT FIRST_NAME, LAST_NAME,concat(trim(FIRST_NAME) , SPACE(2),trim(LAST_NAME)) full_name
FROM info_iicsdb.EMPLOYEE;

-- 19. The STRCMP() function compares two strings.
/*
      If string1 = string2, this function returns 0
      If string1 < string2, this function returns -1
      If string1 > string2, this function returns 1     */

SELECT STRCMP("SQL Tutorial", "SQL Tutorial");
-- the result is: 0

SELECT * 
FROM info_iicsdb.EMPLOYEE 
WHERE  STRCMP(EMPL_STATUS, PERFORMANCE_BAND) = 0;


-- 20. The SUBSTRING_INDEX() function returns a substring of a string before a specified number of delimiter occurs.

SELECT SUBSTRING_INDEX("www.w3schools.com", ".", 1);
-- the result is: 'www'

SELECT EMPL_ID, SUBSTRING_INDEX(EMPL_ID, "E", -1) As New_Empl_ID
from info_iicsdb.EMPLOYEE;

select * from info_iicsdb.EMP_INFORMATION;

select *, substring_index(email, '@',1) as first_name_w1, substr(email,1, instr(email,'@')-1) as first_name_w2
from info_iicsdb.EMP_INFORMATION;




