CREATE TABLE Products
(
Id int identity(1, 1) not null primary key,
Name nvarchar(100) not null,
Description nvarchar(MAX) not null,
Price money not null
)