-- 4 Write an SQL statement that uses all of the SQL built-in functions on the QuantityOnHand column.
--  Include meaningful column names in the result.
 USE CAPE_CODD;
 SELECT COUNT(QuantityOnHand) AS QuantityOnHandCount,
		AVG(QuantityOnHand) AS QuantityOnHandAvg,
        SUM(QuantityOnHand) AS QuantityOnHandSum,
        MIN(QuantityOnHand) AS QuantityOnHandMin,
        MAX(QuantityOnHand) AS QuantityOnHandMax
        
 FROM INVENTORY
 