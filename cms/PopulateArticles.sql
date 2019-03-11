declare @ArticleID int;
EXEC InsertArticle  '07/07/2012', 'Admin', 1, 'Test Article 1', 'Test Article 1', 'Test Article 1', 'USA', 'WA', 'Redmond', '07/07/2012', '01/01/2015', 1, 1, 1, 0, @ArticleID output
EXEC InsertArticle  '07/07/2012', 'Admin', 1, 'Test Article 2', 'Test Article 2', 'Test Article 2', 'USA', 'WA', 'Redmond', '07/07/2012', '01/01/2015', 1, 1, 1, 0, @ArticleID output
EXEC InsertArticle  '07/07/2012', 'Admin', 2, 'Test Article 3', 'Test Article 3', 'Test Article 3', 'USA', 'WA', 'Redmond', '07/07/2012', '01/01/2015', 1, 1, 1, 0, @ArticleID output