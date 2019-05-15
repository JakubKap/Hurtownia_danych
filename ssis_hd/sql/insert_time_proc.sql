SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE insertTime 
AS
BEGIN
	DECLARE @hour int=0
	DECLARE @min int=0

	WHILE @hour<=24
	BEGIN

	INSERT INTO DimTime (DateTimeKey,Hour,Minute)
	VALUES (@min+@hour*100,@hour,@min)

	SET @min=@min+1

	IF @min=60
		SET @hour=@hour+1
	IF @min=60
		SET @min=0
	END
END
GO

SELECT * from DimTime
