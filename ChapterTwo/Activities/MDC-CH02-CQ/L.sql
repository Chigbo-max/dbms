-- Count the number of customers having each combination of LastName and FirstName.

USE mdc_ch02;
SELECT LASTNAME, FIRSTNAME, COUNT(*) AS NUMBER_OF_CUSTOMERS
FROM CUSTOMER
GROUP BY LASTNAME, FIRSTNAME