USE [AirStatsDWH]
GO

/****** Object:  StoredProcedure [dbo].[insertNotPresentAirlines]    Script Date: 08.06.2019 21:30:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertNotPresentAirlines]
@AirlineIata varchar(1024), @AirlineName varchar(1024)
AS
IF NOT EXISTS
	(SELECT AirlineIata FROM DimAirline
	WHERE AirlineIata = @AirlineIata)

BEGIN

	DECLARE @maxId int;
	SET @maxId =  ((SELECT MAX(AirlineId) +1 FROM DimAirline));

INSERT INTO DimAirline (AirlineId, AirlineIata, AirlineName)
	 VALUES(@maxId, CAST(@AirlineIata AS varchar(100)), CAST(@AirlineName AS varchar(100)));

END
GO

