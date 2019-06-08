USE [AirStatsDWH]
GO

/****** Object:  StoredProcedure [dbo].[getAirportDstType]    Script Date: 08.06.2019 21:26:16 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getAirportDstType] 
@AirportId  varchar(1024), @DstType varchar(1024)
AS

DECLARE @DstCode int, @DstFullName varchar(20);

SET @DstFullName = CASE @DstType 
		WHEN 'E' THEN 'Europe'
		WHEN 'A' THEN 'US/Canada'
		WHEN 'S' THEN 'South America'
		WHEN 'O' THEN 'Australia'
		WHEN 'Z' THEN 'New Zealand'
		WHEN 'U' THEN 'Unknown'
		ELSE 'None'
END


SET @DstCode = (SELECT DISTINCT DstId FROM DimDst
  WHERE DstType = @DstFullName);

  UPDATE DimAirport
  SET Dst= @DstCode
  WHERE AirportId = @AirportId
GO

