create table Articles
(ArticleID int identity(1, 1) not null primary key,
AddedDate datetime not null,
AddedBy nvarchar(256) not null,
CategoryID int not null,
Title nvarchar(256) not null,
Abstract nvarchar(4000),
Body ntext not null,
Country nvarchar(256),
State nvarchar(256),
City nvarchar(256),
ReleasedDate datetime,
ExpiredDate datetime,
Approved bit not null default 0,
Listed bit not null default 0,
CommentsEnabled bit not null default 0,
OnlyForMembers bit not null default 0,
ViewCount int not null default 0,
Votes int not null default 0,
TotalRating int not null default 0
CONSTRAINT fk_categories_cid
FOREIGN KEY(CategoryID) REFERENCES Categories(CategoryID))