USE [AirStatsStage]
GO

/****** Object:  StoredProcedure [dbo].[findWorldAreaCode]    Script Date: 08.06.2019 20:43:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[findWorldAreaCode] @Country varchar(100)
AS 
SELECT DISTINCT Code FROM WorldAreaCode
WHERE Description LIKE '%' + @Country + '%' 
GO


