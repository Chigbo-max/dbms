-- List the LastName, FirstName, Phone, DateIn, and DateOut of all orders in excess
-- of $100.00.

USE mdc_ch02;

SELECT CUSTOMER.LASTNAME, CUSTOMER.FIRSTNAME, CUSTOMER.PHONE, INVOICE.DATEIN, INVOICE.DATEOUT
FROM CUSTOMER
JOIN INVOICE ON CUSTOMER.CUSTOMERID = INVOICE.CUSTOMERID
WHERE INVOICE.TOTALAMOUNT > 100
GROUP BY CUSTOMER.LASTNAME, CUSTOMER.FIRSTNAME, CUSTOMER.PHONE, INVOICE.DATEIN, INVOICE.DATEOUT
