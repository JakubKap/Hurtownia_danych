USE [AirStatsDWH]
GO

/****** Object:  StoredProcedure [dbo].[insertNewStateFips]    Script Date: 08.06.2019 21:30:05 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertNewStateFips]
@Code varchar(1024), @Description varchar(1024)
AS
DECLARE @StateFipsId int

IF NOT EXISTS(SELECT StateFipsCodeId FROM DimStateFips)
BEGIN
	SET @StateFipsId = 1;

	INSERT INTO DimStateFips(StateFipsCodeId, StateFipsCode, StateName)
	VALUES (@StateFipsId, @Code, @Description)


END

	ELSE

	BEGIN
		SET @StateFipsId = (SELECT (MAX(StateFipsCodeId) + 1 ) FROM DimStateFips);
		INSERT INTO DimStateFips(StateFipsCodeId, StateFipsCode, StateName)
		VALUES (@StateFipsId, @Code, @Description)

	END
GO

