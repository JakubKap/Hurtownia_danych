USE [AirStatsDWH]
GO
/****** Object:  StoredProcedure [dbo].[getWacCode]    Script Date: 11.05.2019 10:20:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[getWacCode] 
@AirlineId  varchar(1024), @AirlineCountry varchar(1024)
AS

DECLARE @WacCode int, @NumericAirlineId int, @DeclaredCountry varchar(1024);

SET @NumericAirlineId = CAST(@AirlineId AS int);
SET @DeclaredCountry = CONCAT('''', @AirlineCountry, '''');

SET @WacCode = (SELECT Distinct W.WordAreaCode FROM DimAirlineWorldAreaCode W
  INNER JOIN DimAirline A ON W.Region = @DeclaredCountry);

  UPDATE DimAirline
  SET AirlineWorldAreaCode = @WacCode
  WHERE AirlineId = @NumericAirlineId;



