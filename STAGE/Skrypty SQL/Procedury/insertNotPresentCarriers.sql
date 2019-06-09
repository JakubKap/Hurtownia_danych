USE [AirStatsStage]
GO
/****** Object:  StoredProcedure [dbo].[insertNotPresentCarriers]    Script Date: 08.06.2019 20:44:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertNotPresentCarriers]
@CarrierIata varchar(1024), @CarrierName varchar(1024)
AS
DECLARE @UsdotCode varchar(1024)

IF LEN(@CarrierIata) = 2
BEGIN
	SET @UsdotCode = (SELECT DISTINCT Code FROM AirlineId
	WHERE Description LIKE '%: [A-Z][A-Z]' AND Description LIKE '%' + @CarrierIata);

	IF @UsdotCode IS NOT NULL
		BEGIN
			INSERT INTO UsdotAndIataMap 
			VALUES (@UsdotCode, @CarrierIata, @CarrierName);
		END
	END
		ELSE
		BEGIN
		SET @UsdotCode = (SELECT DISTINCT Code FROM AirlineId
		WHERE Description LIKE '%: [A-Z][A-Z][A-Z]' AND Description LIKE '%' + @CarrierIata);

		IF @UsdotCode IS NOT NULL
			BEGIN
				INSERT INTO UsdotAndIataMap 
				VALUES (@UsdotCode, @CarrierIata, @CarrierName);
			END
	END

