USE [AirStatsDWH]
GO
/****** Object:  StoredProcedure [dbo].[updateAirportCodesAndCities]    Script Date: 18.05.2019 12:35:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[updateAirportCodesAndCities]
@UsDotCode varchar(1024), @UsDotSeqCode varchar(1024), @Iata varchar(1024),
@City varchar(1024)
AS
DECLARE 
@AirportUsDotCode int, @UsDotSeqId int, @AirportIata varchar(10), @CityName varchar(100)

SET @AirportUsDotCode = CAST(@UsDotCode AS int);
SET @UsDotSeqId  = CAST(@UsDotSeqCode AS int);
SET @AirportIata  = CAST(@Iata AS varchar(10));
SET @CityName = CAST(@City AS varchar(100));

UPDATE DimAirport
SET AirportUsDotCode = @AirportUsDotCode,
	AirportSeqId = @UsDotSeqId,
	CityName = @CityName
	WHERE AirportIata = @AirportIata;