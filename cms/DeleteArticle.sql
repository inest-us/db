ALTER PROCEDURE DeleteArticle
(
    @ArticleID int
)
AS

DELETE Articles
WHERE ArticleID = @ArticleID
