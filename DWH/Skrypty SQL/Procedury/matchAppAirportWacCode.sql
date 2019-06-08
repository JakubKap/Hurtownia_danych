USE [AirStatsDWH]
GO

/****** Object:  StoredProcedure [dbo].[matchAppAirportWacCode]    Script Date: 08.06.2019 21:32:21 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[matchAppAirportWacCode]
@AirportId  varchar(1024), @AirportCountry varchar(1024)
AS

DECLARE @WacCode int;

  IF @AirportCountry = '' OR @AirportCountry = ' ' OR @AirportCountry = '\N' OR @AirportCountry = 'Unknown'

BEGIN
	SET @WacCode = (SELECT Distinct WordAreaCode FROM DimAirportWorldAreaCode WHERE Region =  'Unknown');

END

	ELSE

		BEGIN
			SET @WacCode = (SELECT Distinct W.WordAreaCode FROM DimAirportWorldAreaCode W
			INNER JOIN DimAirport A ON W.Region = @AirportCountry);
		END

  UPDATE DimAirport
  SET AirportWorldAreaCode = @WacCode
  WHERE AirportId = @AirportId;


  
GO

