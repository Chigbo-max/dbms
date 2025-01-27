-- Show the LastName, FirstName, and Phone of all customers who have had an order
-- with an Item named ‘Dress Shirt’. Use a subquery. Present results sorted by LastName
-- in ascending order and then FirstName in descending order.

USE mdc_ch02;
SELECT LASTNAME, FIRSTNAME, PHONE
FROM CUSTOMER
WHERE CUSTOMER.CUSTOMERID IN(
SELECT INVOICE.CUSTOMERID
FROM INVOICE
JOIN INVOICE_ITEM ON INVOICE.INVOICENUMBER = INVOICE_ITEM.INVOICENUMBER
WHERE INVOICE_ITEM.ITEM = "Dress Shirt"
)
ORDER BY CUSTOMER.LASTNAME ASC, CUSTOMER.FIRSTNAME DESC;
