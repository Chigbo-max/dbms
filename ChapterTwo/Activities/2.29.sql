USE CAPE_CODD;
SELECT SKU, SKU_Description, WarehouseID, QuantityOnHand
FROM INVENTORY
WHERE QuantityOnHand > 1 and QuantityOnHand < 10

