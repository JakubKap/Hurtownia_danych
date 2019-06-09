USE [AirStatsDWH]
GO

/****** Object:  StoredProcedure [dbo].[insertNewState]    Script Date: 08.06.2019 21:29:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertNewState]
@Code varchar(1024), @Description varchar(1024)
AS
DECLARE @StateId int

IF NOT EXISTS(SELECT StateCodeId FROM DimState)
BEGIN
	SET @StateId = 1;

	INSERT INTO DimState(StateCodeId, StateCode, StateName)
	VALUES (@StateId, @Code, @Description)


END

	ELSE

	BEGIN
		SET @StateId = (SELECT (MAX(StateCodeId) + 1 ) FROM DimState);
		INSERT INTO DimState(StateCodeId, StateCode, StateName)
		VALUES (@StateId, @Code, @Description)

	END
GO

