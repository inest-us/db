ALTER PROCEDURE dbo.GetCommentsByArticle
(
	@ArticleID int,
	@PageIndex int,
	@PageSize int
)
AS
SET NOCOUNT ON

SELECT * FROM
(
       SELECT c.CommentID, c.AddedDate, c.AddedBy, c.AddedByEmail, c.AddedByIP, 
       c.ArticleID, c.Body, a.Title AS ArticleTitle,
       ROW_NUMBER() OVER (ORDER BY c.AddedDate DESC) AS RowNum
       FROM Comments c INNER JOIN Articles a ON c.ArticleID = a.ArticleID
       WHERE c.ArticleID = @ArticleID
             
) IndexedComments
WHERE IndexedComments.RowNum BETWEEN (@PageIndex * @PageSize + 1) AND ((@PageIndex + 1)*@PageSize)
ORDER BY AddedDate DESC