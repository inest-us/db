USE SampleDB
GO

IF OBJECT_ID('FinancialProducts', 'U') IS NOT NULL
DROP TABLE FinancialProducts
GO

CREATE TABLE FinancialProducts(
ProductId bigint identity(1, 1) primary key NOT NULL,
ProductName nvarchar(50) NOT NULL
) ON [PRIMARY]
GO