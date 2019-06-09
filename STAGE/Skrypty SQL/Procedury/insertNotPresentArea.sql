USE [AirStatsStage]
GO
/****** Object:  StoredProcedure [dbo].[insertNotPresentArea]    Script Date: 08.06.2019 20:44:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[insertNotPresentArea] @Country varchar(1024)
AS 
IF NOT EXISTS
	(SELECT DISTINCT Code FROM WorldAreaCode
	WHERE Description LIKE '%' + @Country + '%' )

BEGIN

	DECLARE @maxId varchar(1024)
	SET @maxId =  (SELECT (MAX(CAST((Code) AS int)) + 1)
	 FROM WorldAreaCode);


	IF @Country = '' OR @Country = ' ' OR @Country = '\N' OR @Country = 'Unknown'
		BEGIN
			INSERT INTO [dbo].WorldAreaCode VALUES
			(CAST(@maxId AS varchar(1024)), 'Unknown');
		END

		ELSE

			BEGIN
				INSERT INTO [dbo].WorldAreaCode VALUES
				(CAST(@maxId AS varchar(1024)), @Country);
			END
	
END