-- . List the LastName, FirstName, and Phone of all customers whose last name includes
-- the characters ‘cat’

USE mdc_ch02;
SELECT LASTNAME, FIRSTNAME, PHONE
FROM CUSTOMER
WHERE LASTNAME LIKE "%CAT%"