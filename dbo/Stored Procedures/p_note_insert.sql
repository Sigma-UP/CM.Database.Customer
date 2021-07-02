CREATE PROCEDURE p_note_insert
	@customer_id int,
	@note nvarchar(500)
AS
INSERT INTO [dbo].[Notes] (CustomerID, Note)
VALUES (@customer_id, @note);