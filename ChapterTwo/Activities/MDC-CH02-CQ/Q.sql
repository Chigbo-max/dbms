-- Show the LastName, FirstName, and Phone of all customers who have had an
-- order with an Item named ‘Dress Shirt’. Use a join, but do not use JOIN ON
-- syntax. Present results sorted by LastName in ascending order and then FirstName in descending order

USE mdc_ch02;
SELECT CUSTOMER.LASTNAME, CUSTOMER.FIRSTNAME, CUSTOMER.PHONE
FROM CUSTOMER, INVOICE, INVOICE_ITEM
WHERE CUSTOMER.CUSTOMERID = INVOICE.CUSTOMERID
AND INVOICE.INVOICENUMBER = INVOICE_ITEM.INVOICENUMBER
AND INVOICE_ITEM.ITEM = "Dress Shirt"
ORDER BY LASTNAME ASC, FIRSTNAME ASC