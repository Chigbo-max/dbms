-- Show the LastName, FirstName, Phone, and TotalAmount of all customer orders
-- that included an Item named ‘Dress Shirt’. Also show the LastName, FirstName,
-- and Phone of all other customers. Present results sorted by TotalAmount in ascending
-- order, then LastName in ascending order, and then FirstName in descending order.
-- HINT: In Microsoft Access 2016, you will either need to use a UNION statement or
-- a sequence of two queries to solve this because Microsoft Access disallows nesting an
-- INNER join inside a LEFT OUTER or RIGHT OUTER join. The other DBMS products can complete this question with one query (not a UNION statement).

USE mdc_ch02;
SELECT CUSTOMER.LASTNAME, CUSTOMER.FIRSTNAME, CUSTOMER.PHONE, INVOICE.TOTALAMOUNT
FROM CUSTOMER
LEFT JOIN INVOICE ON INVOICE.CUSTOMERID = CUSTOMER.CUSTOMERID
LEFT JOIN INVOICE_ITEM ON INVOICE_ITEM.INVOICENUMBER = INVOICE.INVOICENUMBER
AND INVOICE_ITEM.ITEM = "Dress Shirt"
ORDER BY CUSTOMER.FIRSTNAME ASC, CUSTOMER.LASTNAME DESC