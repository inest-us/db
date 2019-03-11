select count(*) from [dbo].[ChurnPredictionResults]
select count(*) from [dbo].[ChurnPredictionResults] where DpgService = 'Azure Stream Analytics'
select count(*) from [dbo].[ChurnPredictionResults] where DpgService = 'Azure Data Lake Analytics'
select count(*) from [dbo].[ChurnPredictionResults] where DpgService = 'DocumentDB'
select count(*) from [dbo].[ChurnPredictionResults] where DpgService = 'SQL DB'
select count(*) from [dbo].[ChurnPredictionResults] where DpgService = 'Azure Search'
select count(*) from [dbo].[ChurnPredictionResults] where DpgService = 'SQL VM'

select * from [dbo].[ChurnPredictionResults] where DpgService = 'SQL DB'


select distinct DpgService from [dbo].[ChurnPredictionResults]

/*




*/

