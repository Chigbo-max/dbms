-- Write an SQL statement to display the WarehouseID and the sum of QuantityOnHand grouped by WarehouseID.
 -- Name the sum TotalItemsOnHand and display the
-- results in descending order of TotalItemsOnHand

USE CAPE_CODD;
SELECT SUM(QuantityOnHand) AS TotalItemsOnHand
FROM inventory
GROUP BY WarehouseID
ORDER BY TotalItemsOnHand DESC

