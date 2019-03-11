USE SampleDB
GO

IF OBJECT_ID('SharePrices', 'U') IS NOT NULL
DROP TABLE SharePrices
GO

CREATE TABLE SharePrices(
SharePriceId bigint IDENTITY(1,1) primary key NOT NULL,
ShareId bigint NOT NULL,
Price numeric(18, 5) NOT NULL,
PriceDate datetime NOT NULL
) ON [PRIMARY]
GO