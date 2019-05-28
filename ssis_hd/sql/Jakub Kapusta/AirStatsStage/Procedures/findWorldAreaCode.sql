USE [AirStatsStage]
GO

/****** Object:  StoredProcedure [dbo].[findWorldAreaCode]    Script Date: 27.05.2019 20:59:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[findWorldAreaCode] @Country varchar(100)
AS 
SELECT DISTINCT Code FROM WorldAreaCode
WHERE Description LIKE '%' + @Country + '%' 
GO

