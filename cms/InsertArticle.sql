ALTER procedure InsertArticle
(
    @AddedDate datetime,
    @AddedBy nvarchar(256),
    @CategoryID int,
    @Title nvarchar(256),
    @Abstract nvarchar(4000),
    @Body ntext,
    @Country nvarchar(256),
    @State nvarchar(256),
    @City nvarchar(256),
    @ReleasedDate datetime,
    @ExpiredDate datetime,
    @Approved bit,
    @Listed bit,
    @CommentsEnabled bit,
    @OnlyForMembers bit,
    @ArticleID int output
)
AS
SET NOCOUNT ON
INSERT INTO Articles
(
    AddedDate, AddedBy, CategoryID, Title, Abstract, Body, Country, State, City, ReleasedDate, ExpiredDate, Approved,
    Listed, CommentsEnabled, OnlyForMembers
)
VALUES
(
    @AddedDate,
    @AddedBy,
    @CategoryID,
    @Title,
    @Abstract,
    @Body,
    @Country,
    @State,
    @City,
    @ReleasedDate,
    @ExpiredDate,
    @Approved,
    @Listed,
    @CommentsEnabled,
    @OnlyForMembers
)

SET @ArticleID = scope_identity()