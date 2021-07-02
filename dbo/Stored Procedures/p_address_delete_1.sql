CREATE PROCEDURE p_address_delete
	@AddressId INT,
	@CustomerId INT
AS
DELETE FROM [dbo].[Addresses]
WHERE [Addresses].[CustomerID] = @CustomerId AND
	[Addresses].[AddressID] = @AddressId;