ALTER PROCEDURE GetPublishedArticleCountByCategory
(
    @CategoryID int,
    @CurrentDate datetime
)
AS
SET NOCOUNT ON

SELECT Count(*) FROM Articles
WHERE CategoryID = @CategoryID AND Approved = 1 AND Listed = 1 AND ReleasedDate <= @CurrentDate
      AND ExpiredDate > @CurrentDate