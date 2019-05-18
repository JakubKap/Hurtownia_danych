USE [AirStatsDWH]
GO
/****** Object:  StoredProcedure [dbo].[insertNotPresentAirports]    Script Date: 18.05.2019 12:31:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertNotPresentAirports]
@AirportIata varchar(1024), @AirportName varchar(1024)
AS
IF NOT EXISTS
	(SELECT AirportIata FROM DimAirport
	WHERE AirportIata = @AirportIata)

BEGIN

	DECLARE @maxId int;
	SET @maxId =  ((SELECT MAX(AirportId) +1 FROM DimAirport));

INSERT INTO DimAirport (AirportId, AirportIata, AirportName)
	 VALUES(@maxId, CAST(@AirportIata AS varchar(10)), CAST(@AirportName AS varchar(100)));

END

