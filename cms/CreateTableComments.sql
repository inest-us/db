create table Comments
(CommentID int identity(1, 1) not null primary key,
AddedDate datetime not null,
AddedBy nvarchar(256) not null,
AddedByEmail nvarchar(256),
AddedByIP nchar(15),
ArticleID int not null,
Body ntext not null,
CONSTRAINT fk_articles_articleid
FOREIGN KEY(ArticleID) REFERENCES Articles(ArticleID))

