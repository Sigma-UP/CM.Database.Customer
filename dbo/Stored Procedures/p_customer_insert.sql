CREATE PROCEDURE p_customer_insert
	@firstName nvarchar(50),
	@lastName nvarchar(50),
	@phoneNumber nvarchar(15),
	@email nvarchar(320),
	@totalPurchasesAmount money
AS
INSERT INTO [dbo].[Customers] (FirstName, LastName, PhoneNumber, Email, TotalPurchasesAmount)
VALUES (@firstName, @lastName, @phoneNumber, @email, @totalPurchasesAmount);