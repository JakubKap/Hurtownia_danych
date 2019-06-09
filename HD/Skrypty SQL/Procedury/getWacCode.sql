USE [AirStatsDWH]
GO

/****** Object:  StoredProcedure [dbo].[getWacCode]    Script Date: 08.06.2019 21:26:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[getWacCode] 
@AirlineId  varchar(1024), @AirlineCountry varchar(1024)
AS

DECLARE @WacCode int, @NumericAirlineId int, @DeclaredCountry varchar(1024);


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



GO

