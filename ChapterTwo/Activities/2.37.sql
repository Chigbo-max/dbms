-- 7 Write an SQL statement to display the WarehouseID and
--  the sum of QuantityOnHand grouped by WarehouseID. Omit all SKU items that have three or more items
-- on hand from the sum, name the sum TotalItemsOnHandLT3, and display the results
-- in descending order of TotalItemsOnHandLT3.

USE CAPE_CODD;
SELECT WarehouseID,
SUM(QuantityOnHand) AS TotalItemsOnHandLT3
FROM INVENTORY
WHERE QuantityOnHand < 3
GROUP BY WarehouseID
ORDER BY TotalItemsOnHandLT3 DESC

