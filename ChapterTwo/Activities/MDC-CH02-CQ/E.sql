-- . List the LastName, FirstName, and Phone of all customers whose first name starts
-- with ‘B’.

USE mdc_ch02;

SELECT LASTNAME, FIRSTNAME, PHONE
FROM CUSTOMER
WHERE FIRSTNAME LIKE "B%"
