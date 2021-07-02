CREATE PROCEDURE p_note_delete
	@customer_id INT,
	@note_id INT
AS
DELETE FROM [dbo].[Notes]
WHERE [Notes].[NoteID] = @note_id AND
		[Notes].[CustomerID] = @customer_id;