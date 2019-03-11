ALTER PROCEDURE GetArticleByID
(
    @ArticleID int
)
AS

SET NOCOUNT ON
SELECT a.ArticleID, a.AddedDate, a.AddedBy, a.CategoryID, a.Title, a.Abstract,
       a.Body, a.Country, a.State, a.City, a.ReleasedDate, a.ExpiredDate, a.Approved,
       a.Listed, a.CommentsEnabled, a.OnlyForMembers, a.ViewCount, a.Votes, a.TotalRating,
       c.Title as CategoryTitle
FROM Articles a INNER JOIN Categories c ON a.CategoryID = c.CategoryID
WHERE a.ArticleID = @ArticleID