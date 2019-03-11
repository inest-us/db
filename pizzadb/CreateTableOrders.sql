create table Orders
(
OrderID int identity(1, 1) primary key not null,
Name nvarchar(255),
Address nvarchar(255),
ZipCode nvarchar(255),
OrderDate Datetime,
DeliveryCharge decimal,
TotalValue decimal
)