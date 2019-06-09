USE [AirStatsDWH]
GO

/****** Object:  StoredProcedure [dbo].[mapUsDotCodeToAirline]    Script Date: 08.06.2019 21:31:59 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[mapUsDotCodeToAirline]
@UsDotCode varchar(1024), @Iata varchar(1024), @Name varchar(1024)  
AS
DECLARE @AirlineUsDotCode int, @AirlineIata varchar(100), @AirlineName varchar(100)

SET @AirlineUsDotCode = CAST(@UsDotCode AS int);
SET @AirlineIata = CAST(@Iata AS varchar(100));
SET @AirlineName = CAST(@Name AS varchar(100));

IF EXISTS (SELECT AirlineIata FROM DimAirline WHERE AirlineIata = @AirlineIata)
	BEGIN
	--update of UsDotCode
	UPDATE DimAirline
	SET AirlineUsDotCode = @AirlineUsDotCode
	WHERE AirlineIata = @AirlineIata;

	END
ELSE
	BEGIN
	INSERT INTO DimAirline(AirlineUsDotCode, AirlineIata, AirlineName)
	VALUES (@AirlineUsDotCode, @AirlineIata, @AirlineName)
	END
GO

