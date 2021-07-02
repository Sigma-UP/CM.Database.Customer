CREATE PROCEDURE p_address_select
	@customer_id int,
	@address_id int
AS
SELECT *
FROM [dbo].[Addresses]
WHERE 
	@customer_id = [Addresses].[CustomerID] AND
	@address_id =[Addresses].[AddressID]
ORDER BY [Addresses].AddressID;