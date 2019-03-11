ALTER PROCEDURE dbo.GetCategories
	
AS

SELECT CategoryID,
       AddedDate,
       AddedBy,
       Title,
       Importance,
       Description,
       ImageUrl
FROM Categories