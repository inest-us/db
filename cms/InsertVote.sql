ALTER PROCEDURE InsertVote
(
    @ArticleID int,
    @Rating smallint
)
AS

DECLARE @newVotes int;
DECLARE @newTotalRating int;

SELECT @newVotes = Votes, @newTotalRating = TotalRating FROM Articles WHERE ArticleId = @ArticleID;

--Update Votes
IF (@newVotes IS NULL)
BEGIN
	SET @newVotes = 1;
END
ELSE
BEGIN
  SET @newVotes = @newVotes + 1;
END

--Update TotalRating
IF (@newTotalRating IS NULL)
BEGIN
	SET @newTotalRating = @Rating;
END
ELSE
BEGIN
  SET @newTotalRating = @newTotalRating + @Rating;
END

-- Update Articles 
UPDATE Articles
SET Votes = @newVotes,
    TotalRating = @newTotalRating
WHERE ArticleID = @ArticleID
