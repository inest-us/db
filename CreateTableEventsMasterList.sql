-- =========================================
-- Create table template SQL Azure Database 
-- =========================================

CREATE TABLE EventsMasterList
(
	 EventName	nvarchar(500)
	,Link	nvarchar(500)
	,SiteDomain	nvarchar(100)
	,SiteDomainTitle	nvarchar(100)
	,ServiceName	nvarchar(255)
	,Category	nvarchar(100)
	,ETLDate	DateTime null
	,StartDate	DateTime null
	,EndDate	DateTime null
	,Significant	nvarchar(100)
	,EventDescription	nvarchar(MAX)
	,Notes	nvarchar(MAX)
	,Source	nvarchar(50)
)
GO
