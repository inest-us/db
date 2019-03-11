DECLARE @CommentId int;
EXEC InsertComment '07/28/2012', 'Admin', 'foo@bar.com', '127.0.0.1', 3, 'This is the test comment 1', @CommentId  output

DECLARE @CommentId int;
EXEC InsertComment '07/28/2012', 'Admin', 'foo@bar.com', '127.0.0.1', 3, 'This is the test comment 2', @CommentId  output