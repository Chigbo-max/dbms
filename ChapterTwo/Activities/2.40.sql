-- Write an SQL statement to display the SKU, SKU_Description, WarehouseID,
-- WarehouseCity, and WarehouseState for all items stored in the Atlanta, Bangor, or
-- Chicago warehouse. Do not use the IN keyword.

USE CAPE_CODD;
SELECT SKU, SKU_Description, INVENTORY.WarehouseID, WarehouseCity, WarehouseState
FROM INVENTORY, WAREHOUSE
WHERE WarehouseCity = 'Chicago'