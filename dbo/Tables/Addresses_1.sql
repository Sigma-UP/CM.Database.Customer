CREATE TABLE [dbo].[Addresses] (
    [AddressID]   INT            IDENTITY (1, 1) NOT NULL,
    [CustomerID]  INT            NOT NULL,
    [Line1]       NVARCHAR (100) NOT NULL,
    [Line2]       NVARCHAR (100) NULL,
    [AddressType] NVARCHAR (10)  NOT NULL,
    [City]        NVARCHAR (50)  NOT NULL,
    [PostalCode]  NVARCHAR (6)   NOT NULL,
    [State]       NVARCHAR (20)  NOT NULL,
    [Country]     NVARCHAR (15)  NOT NULL,
    CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED ([AddressID] ASC),
    CONSTRAINT [CK_Addresses_AddressType] CHECK ([AddressType]='Shipping' OR [AddressType]='Billing'),
    CONSTRAINT [CK_Addresses_City] CHECK ([City] like '[A-Z]%[^0-9,@,.,_,\]%'),
    CONSTRAINT [CK_Addresses_Country] CHECK ([Country]='Canada' OR [Country]='United States'),
    CONSTRAINT [CK_Addresses_PostalCode] CHECK ([PostalCode] like '[0-9][0-9][0-9][0-9][0-9][0-9]'),
    CONSTRAINT [CK_Addresses_State] CHECK ([State] like '[A-Z]%[^0-9,@,.,_,\]%'),
    CONSTRAINT [FK_Addresses_Customer] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customers] ([CustomerID]) ON DELETE CASCADE ON UPDATE CASCADE
);

