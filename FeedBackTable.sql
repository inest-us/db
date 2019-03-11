CREATE TABLE FeedBack(   
Id int identity(1, 1) PRIMARY KEY,
Name nvarchar(50),
Comment nvarchar(4000),
DateSubmitted datetime)