USE SampleDB
GO

IF OBJECT_ID('', 'U') IS NOT NULL
DROP TABLE Shares
GO

CREATE TABLE Shares(
ShareId bigint IDENTITY(1,1) primary key NOT NULL,
ShareDesc nvarchar(50) NOT NULL,
ShareTickerId nvarchar(50) NULL,
CurrentPrice numeric(18, 5) NOT NULL
) ON [PRIMARY]
GO