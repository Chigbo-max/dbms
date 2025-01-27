-- List the LastName, FirstName, and Phone for all customers whose second and third
-- digits (from the left) of their phone number are 23. For example, any phone number
-- with an area code of “723” would meet the criteria.

USE mdc_ch02;
SELECT LASTNAME, FIRSTNAME, PHONE
FROM CUSTOMER
WHERE PHONE LIKE "%723%"