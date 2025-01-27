-- Show the LastName, FirstName, and Phone of all customers who have had an order
-- with TotalAmount greater than $100.00. Use a join, but do not use JOIN ON syntax.
-- Present results sorted by LastName in ascending order and then FirstName in descending order.

USE mdc_ch02;
SELECT CUSTOMER.LASTNAME, CUSTOMER.FIRSTNAME, CUSTOMER.PHONE
FROM CUSTOMER, invoice
WHERE CUSTOMER.CUSTOMERID = INVOICE.CUSTOMERID
AND INVOICE.TOTALAMOUNT > 100
ORDER BY CUSTOMER.LASTNAME ASC, CUSTOMER.FIRSTNAME DESC
