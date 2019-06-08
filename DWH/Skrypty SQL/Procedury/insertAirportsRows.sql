USE [AirStatsDWH]
GO

/****** Object:  StoredProcedure [dbo].[insertAirportsRows]    Script Date: 08.06.2019 21:26:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertAirportsRows]
@AirportId varchar(1024), @Name varchar(1024), @City varchar(1024), 
@Iata varchar(1024), @Icao varchar(1024),
@Latitude varchar(1024), @Longitude varchar(1024), @Altitude varchar(1024),  
@TimeZone varchar(1024), @Tz varchar(1024)
AS
DECLARE @AirportIdNum int, @AirportName varchar(100), @AirportCity varchar(100), 
@AirportIata varchar(10), @AirportIcao varchar(4),
@AirportLatitude decimal(22,20), @AirportLongitude decimal(23,20), @AirportAltitude int,  
@AirportTimeZone float,  @AirportTz varchar(30)

SET @AirportIdNum = CAST(@AirportId AS int)
SET @AirportName = CAST(@Name AS varchar(100))
SET @AirportCity = CAST(@City AS varchar(100))
SET @AirportIata = CAST(@Iata AS varchar(10))
SET @AirportIcao = CAST(@Icao AS varchar(4))
SET @AirportLatitude = CAST(@Latitude AS decimal(22,20))
SET @AirportLongitude = CAST(@Longitude AS decimal(23,20))
SET @AirportAltitude = CAST(@Altitude AS int)
SET @AirportTz = CAST(@Tz AS varchar(30))

IF @TimeZone = '\N'
BEGIN
	SET @AirportTimeZone = NULL;
END

	ELSE
		BEGIN
			SET @AirportTimeZone = CAST(@TimeZone AS float)
		END
INSERT INTO DimAirport (AirportId,AirportName,CityName, AirportIata, AirportIcao, 
 Latitude, Longitude, Altitude, Timezone, TzDatabase)
 VALUES (@AirportIdNum ,@AirportName, @AirportCity, @AirportIata, @AirportIcao
,@AirportLatitude, @AirportLongitude ,@AirportAltitude ,@AirportTimeZone, @AirportTz)
GO

