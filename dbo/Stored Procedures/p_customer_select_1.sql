CREATE PROCEDURE p_customer_select
	@customer_id int
AS
SELECT *
FROM [dbo].[Customers]
WHERE 
	@customer_id = [Customers].[CustomerID]
ORDER BY [Customers].[CustomerID];