create table MenuItems
(
MenuItemID int identity(1, 1) primary key not null,
MenuItemType nvarchar(255),
ItemName nvarchar(255),
PizzaToppings nvarchar(255),
Description nvarchar(255),
GraphicFileName nvarchar(255)
)