CREATE PROCEDURE p_address_insert
	@customer_id int,
	@line1 nvarchar(100),
	@line2 nvarchar(100),
	@address_type nvarchar(10),
	@city nvarchar(6),
	@postal_code nvarchar(6),
	@state nvarchar(20),
	@country nvarchar(15)
AS
INSERT INTO [dbo].[Addresses](CustomerID, Line1, Line2, 
AddressType, City, PostalCode, [State], Country)
VALUES (@customer_id, @line1, @line2, @address_type, @city, @postal_code, @state, @country);