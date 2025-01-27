-- Show the LastName, FirstName, and Phone of all customers who have had an order
-- with TotalAmount greater than $100.00. Use a subquery. Present the results sorted by
-- LastName in ascending order and then FirstName in descending order.

USE mdc_ch02;
SELECT LASTNAME, FIRSTNAME, PHONE
FROM CUSTOMER
WHERE CUSTOMERID IN(
	SELECT CUSTOMERID
    FROM INVOICE
    WHERE TOTALAMOUNT > 100
)
ORDER BY LASTNAME ASC, FIRSTNAME DESC
