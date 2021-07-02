CREATE PROCEDURE p_note_select
	@customer_id int,
	@note_id int
AS
SELECT *
FROM [dbo].[Notes]
WHERE 
	@customer_id = [Notes].[CustomerID] AND
	@note_id =[Notes].[NoteID]
ORDER BY [Notes].[NoteID];