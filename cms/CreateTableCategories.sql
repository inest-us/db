create table Categories 
(CategoryID int identity(1, 1) not null primary key,
AddedDate datetime not null,
AddedBy nvarchar(256) not null,
Title nvarchar(256) not null,
Importance int not null,
Description nvarchar(4000),
ImageUrl nvarchar(256))