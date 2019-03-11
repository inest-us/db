ALTER PROCEDURE ApproveArticle
(
    @ArticleID int
)
AS
UPDATE Articles SET Approved = 1
WHERE ArticleID = @ArticleID
