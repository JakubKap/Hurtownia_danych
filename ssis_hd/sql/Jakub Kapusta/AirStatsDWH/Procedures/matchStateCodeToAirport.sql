USE [AirStatsDWH]
GO
/****** Object:  StoredProcedure [dbo].[matchStateCodeToAirport]    Script Date: 18.05.2019 16:40:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[matchStateCodeToAirport]
@Iata varchar(1024), @StateAbr varchar(1024), @StateFips varchar(1024)
AS
DECLARE 
@AirportIata varchar(10), @AirportStateCode varchar(20), @AirportStateFips varchar(20), @StateId int, @StateCodeId int, @StateFipsId int;

SET @AirportIata = CAST(@Iata AS varchar(10));
SET @AirportStateCode = CAST(@StateAbr AS varchar(20));
SET @AirportStateFips = CAST(@StateFips AS varchar(20));

IF NOT EXISTS(SELECT StateCode FROM DimState 
WHERE StateCode = @AirportStateCode) AND NOT EXISTS (SELECT StateCode FROM DimState 
												WHERE StateName = 'Unknown State')
BEGIN

	SET @StateId = (SELECT (MAX(StateCodeId) + 1 ) FROM DimState);
	
	INSERT INTO DimState(StateCodeId, StateCode, StateName)
	VALUES(@StateId, 'Un', 'Unknown State')
END

IF NOT EXISTS(SELECT StateCode FROM DimState WHERE StateCode = @AirportStateCode)
BEGIN

	SET @StateCodeId = (SELECT StateCodeId FROM DimState WHERE StateName = 'Unknown State')

END

	ELSE
		BEGIN
			SET @StateCodeId = (SELECT StateCodeId FROM DimState WHERE StateCode = @AirportStateCode)
		END


IF NOT EXISTS(SELECT StateFipsCode FROM DimStateFips WHERE StateFipsCode = @AirportStateFips)
BEGIN

	SET @StateFipsId = (SELECT StateFipsCodeId FROM DimStateFips
	WHERE StateName = 'Not Applicable')

END

	ELSE
		BEGIN
			SET @StateFipsId = (SELECT StateFipsCodeId FROM DimStateFips WHERE StateFipsCode = @AirportStateFips)
		END


	UPDATE DimAirport
	SET StateCode = @StateCodeId,
		StateFips = @StateFipsId
		WHERE AirportIata = @AirportIata;