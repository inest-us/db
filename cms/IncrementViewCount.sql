ALTER PROCEDURE IncrementViewCount
(
    @ArticleID int
)
AS
DECLARE @newViewCount int;
SELECT @newViewCount = ViewCount FROM Articles WHERE ArticleId = @ArticleID;

IF (@newViewCount IS NULL)
BEGIN
	SET @newViewCount = 1;
END
ELSE
BEGIN
  SET @newViewCount = @newViewCount + 1;
END

UPDATE Articles
SET ViewCount = @newViewCount
WHERE ArticleId = @ArticleID
