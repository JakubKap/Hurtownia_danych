USE [AirStatsDWH]
GO

/****** Object:  StoredProcedure [dbo].[matchAppropriateAirportsIdToFact]    Script Date: 08.06.2019 21:32:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[matchAppropriateAirportsIdToFact]
@ArrIata varchar(1024), @DestIata varchar(1024)
AS
DECLARE @ArrAirportId int, @DepAirportId int, @FlightId int, @AirportArrIata varchar(10), @AirportDepIata varchar(10)

SET @AirportArrIata = CAST (@ArrIata AS varchar(10))
SET @AirportDepIata = CAST (@DestIata AS varchar(10))

SET @ArrAirportId = (SELECT AirportId FROM DimAirport WHERE AirportIata = @AirportArrIata)
SET @DepAirportId = (SELECT AirportId FROM DimAirport WHERE AirportIata = @AirportDepIata)

IF NOT EXISTS(SELECT FlightId FROM FactFlightActivity)
	BEGIN
		SET @FlightId=1;
		INSERT INTO FactFlightActivity (FlightId, ArrAirport, DepAirport)
		VALUES (@FlightId, @ArrAirportId, @DepAirportId)
	END
		ELSE
			BEGIN
			SET @FlightId=(SELECT MAX(FlightId) + 1 FROM FactFlightActivity);
			INSERT INTO FactFlightActivity (FlightId, ArrAirport, DepAirport)
			VALUES (@FlightId, @ArrAirportId, @DepAirportId)
			END
GO

