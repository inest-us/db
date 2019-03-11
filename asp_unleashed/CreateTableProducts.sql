create table Products(
Id int identity(1, 1) not null primary key,
Name nvarchar(100),
Price decimal(10, 2),
Description nvarchar(200))