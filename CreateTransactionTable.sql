USE SampleDB
GO

IF OBJECT_ID('Transactions', 'U') IS NOT NULL
DROP TABLE Transactions
GO

CREATE TABLE Transactions
(TransactionId bigint primary key IDENTITY(1,1) NOT NULL,
CustomerId bigint NOT NULL,
TransactionType int NOT NULL,
DateEntered datetime NOT NULL,
Amount numeric(18, 5) NOT NULL,
ReferenceDetails nvarchar(50) NULL,
Notes nvarchar(max) NULL,
RelatedShareId bigint NULL,
RelatedProductId bigint NOT NULL)

GO