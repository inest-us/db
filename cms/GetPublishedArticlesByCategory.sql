ALTER PROCEDURE GetPublishedArticlesByCategory
(
    @CategoryID int,
    @CurrentDate datetime,
    @PageIndex int,
    @PageSize int
)
AS

SET NOCOUNT ON

SELECT * FROM
(
SELECT a.ArticleID, a.AddedDate, a.AddedBy, a.CategoryID, a.Title, a.Abstract,
       a.Body, a.Country, a.State, a.City, a.ReleasedDate, a.ExpiredDate, a.Approved,
       a.Listed, a.CommentsEnabled, a.OnlyForMembers, a.ViewCount, a.Votes, a.TotalRating,
       c.Title as CategoryTitle,
       ROW_NUMBER() OVER (ORDER BY ReleasedDate DESC) AS RowNum
       FROM Articles a INNER JOIN Categories c ON a.CategoryID = c.CategoryID
       WHERE Approved = 1 AND Listed = 1 AND ReleasedDate <= @CurrentDate AND ExpiredDate > @CurrentDate
             AND a.CategoryID = @CategoryID
) IndexedArticles
WHERE IndexedArticles.RowNum BETWEEN (@PageIndex * @PageSize + 1) AND ((@PageIndex + 1)*@PageSize)
ORDER BY ReleasedDate DESC