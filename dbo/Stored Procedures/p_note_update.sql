
CREATE PROCEDURE p_note_update
	@customer_id int,
	@note_id int,
	@line nvarchar(500)
AS
UPDATE [dbo].[Notes]
SET	[dbo].[Notes].[Line] = @line
WHERE	[dbo].[Notes].[CustomerID] = @customer_id AND
		[dbo].[Notes].[NoteID] = @note_id;