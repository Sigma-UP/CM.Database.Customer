
CREATE PROCEDURE p_address_update
	@customer_id int,
	@address_id int,
    @line nvarchar(100),
	@line2 nvarchar(100),
	@address_type nvarchar(10),
	@city nvarchar(50),
	@postal_code nvarchar(6),
	@state nvarchar(20),
	@country nvarchar(15)
AS
UPDATE [dbo].[Addresses]
SET	[dbo].[Addresses].[Line1] = @line,
    [dbo].[Addresses].[Line2] = @line2,
    [dbo].[Addresses].[AddressType] = @address_type,
    [dbo].[Addresses].[City] = @city,
    [dbo].[Addresses].[PostalCode] = @postal_code,
    [dbo].[Addresses].[State] = @state,
    [dbo].[Addresses].[Country] = @country
WHERE	dbo.Addresses.CustomerID = @customer_id AND
		dbo.Addresses.AddressID = @address_id;