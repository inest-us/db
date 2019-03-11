USE SampleDB
GO

IF OBJECT_ID('CustomerProducts', 'U') IS NOT NULL
DROP TABLE CustomerProducts
GO

CREATE TABLE CustomerProducts(
CustomerFinancialProductId bigint IDENTITY(1,1) primary key NOT NULL,
CustomerId bigint NOT NULL,
FinancialProductId bigint NOT NULL,
AmountToCollect money NOT NULL,
Frequency smallint NOT NULL,
LastCollected datetime NOT NULL,
LastCollection datetime NOT NULL,
Renewable bit NOT NULL
)
ON [PRIMARY]
GO