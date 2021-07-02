CREATE TABLE [dbo].[Customers] (
    [CustomerID]           INT            IDENTITY (1, 1) NOT NULL,
    [FirstName]            NVARCHAR (50)  NULL,
    [LastName]             NVARCHAR (50)  NOT NULL,
    [PhoneNumber]          NVARCHAR (15)  NULL,
    [Email]                NVARCHAR (320) NULL,
    [TotalPurchasesAmount] MONEY          NULL,
    CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED ([CustomerID] ASC),
    CONSTRAINT [CK_Customers_Email] CHECK ([Email] like '%_@__%.__%' AND patindex('%[^a-z,0-9,@,.,_,\-]%',[Email])=NULL),
    CONSTRAINT [CK_Customers_LastName] CHECK ([LastName] like '[A-Z]%[^0-9]%'),
    CONSTRAINT [CK_Customers_PhoneNumber] CHECK ([PhoneNumber] like '+%[^A-Z]%'),
    CONSTRAINT [CK_Customers_TotalPurchasesAmount] CHECK ([TotalPurchasesAmount]>=(0))
);



