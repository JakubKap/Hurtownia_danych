USE [AirStatsDWH]
GO

/****** Object:  StoredProcedure [dbo].[matchAppropriateAirlineId]    Script Date: 08.06.2019 21:32:32 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[matchAppropriateAirlineId]
@Iata varchar(1024)
AS
DECLARE @AirlineIata varchar(100), @AirlineId int, @FlightId int

SET @AirlineIata = CAST (@Iata AS varchar(100))
SET @AirlineId = (SELECT AirlineId FROM DimAirline WHERE AirlineIata=@AirlineIata)

IF NOT EXISTS(SELECT FlightId FROM FactFlightActivity)
	BEGIN
		SET @FlightId=1;
		INSERT INTO FactFlightActivity (FlightId, OperatingAirline)
		VALUES (@FlightId, @AirlineId)
	END
		ELSE
			BEGIN
			SET @FlightId=(SELECT MAX(FlightId) + 1 FROM FactFlightActivity);
			INSERT INTO FactFlightActivity (FlightId, OperatingAirline)
			VALUES (@FlightId, @AirlineId)
			END
GO

