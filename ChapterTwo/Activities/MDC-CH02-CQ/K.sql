-- Group customers by LastName and then by FirstName.

USE mdc_ch02;
SELECT LASTNAME, FIRSTNAME
FROM CUSTOMER
GROUP BY LASTNAME, FIRSTNAME