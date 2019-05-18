USE [AirStatsDWH]
GO
/****** Object:  StoredProcedure [dbo].[getWacCode]    Script Date: 18.05.2019 12:25:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[getWacCode] 
@AirlineId  varchar(1024), @AirlineCountry varchar(1024)
AS

DECLARE @WacCode int, @NumericAirlineId int, @DeclaredCountry varchar(1024);

--SET @NumericAirlineId = CAST(@AirlineId AS int);
--SET @DeclaredCountry = CONCAT('''', @AirlineCountry, '''');

IF @AirlineCountry = '' OR @AirlineCountry = ' ' OR @AirlineCountry = '\N' OR @AirlineCountry = 'Unknown'

BEGIN
	SET @WacCode = (SELECT Distinct WordAreaCode FROM DimAirlineWorldAreaCode WHERE Region = 'Unknown');

END

	ELSE

		BEGIN
			SET @WacCode = (SELECT Distinct W.WordAreaCode FROM DimAirlineWorldAreaCode W
			INNER JOIN DimAirline A ON W.Region = @AirlineCountry);
		END

  UPDATE DimAirline
  SET AirlineWorldAreaCode = @WacCode
  WHERE AirlineId = @AirlineId;



