USE [AirStatsStage]
GO

/****** Object:  StoredProcedure [dbo].[mergeAirlinesByIata]    Script Date: 27.05.2019 20:59:45 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[mergeAirlinesByIata] @Iata varchar(100)
AS 
SELECT DISTINCT * FROM Airlines
WHERE Iata LIKE '%' + @Iata + '%' 
GO

