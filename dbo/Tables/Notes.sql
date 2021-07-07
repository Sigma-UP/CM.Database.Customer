CREATE TABLE [dbo].[Notes] (
    [NoteID]     INT            IDENTITY (1, 1) NOT NULL,
    [CustomerID] INT            NOT NULL,
    [Line]       NVARCHAR (500) NOT NULL,
    CONSTRAINT [PK_Note] PRIMARY KEY CLUSTERED ([NoteID] ASC),
    CONSTRAINT [FK_Notes_CustomerID] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID]) ON DELETE CASCADE ON UPDATE CASCADE
);

