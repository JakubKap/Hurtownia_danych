USE [AirStatsStage]
GO

/****** Object:  StoredProcedure [dbo].[airportsNotPresentInOpenstats]    Script Date: 27.05.2019 20:58:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[airportsNotPresentInOpenstats]
AS
SELECT DISTINCT  AI.Code AS UsDotCode,
CH.Code AS Iata, CH.Description AS Name
FROM AirlineId AS AI
INNER JOIN CarrierHistory AS CH
ON SUBSTRING(RIGHT(AI.Description,4),1,3) 
= SUBSTRING(CH.Code,2,3) 
WHERE NOT EXISTS
	(SELECT A.Iata FROM Airlines AS A
	WHERE A.Iata = CH.Code) 
GO

