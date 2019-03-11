USE SampleDB
GO

IF OBJECT_ID('dbo.TransactionTypes', 'U') IS NOT NULL
DROP TABLE dbo.TransactionTypes
GO

CREATE TABLE dbo.TransactionTypes
(
TransactionTypeId int Identity(1, 1) NOT NULL,
TransactionDescription nvarchar(30) NOT NULL,
CreditType bit NOT NULL,
CONSTRAINT PK_TransactionTypes_Table PRIMARY KEY (TransactionTypeId)
)
GO