ALTER procedure InsertComment
(
    @AddedDate datetime, 
    @AddedBy nvarchar(256), 
    @AddedByEmail nvarchar(256), 
    @AddedByIP nchar(15), 
    @ArticleID int, 
    @Body ntext,
    @CommentID int output       
)
AS

SET NOCOUNT ON
INSERT INTO Comments
(
    AddedDate, AddedBy, AddedByEmail, AddedByIP, ArticleID, Body
)
VALUES
(
    @AddedDate,
    @AddedBy,
    @AddedByEmail,
    @AddedByIP,
    @ArticleID,
    @Body
)

SET @CommentID = scope_identity()