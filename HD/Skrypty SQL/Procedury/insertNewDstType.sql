USE [AirStatsDWH]
GO

/****** Object:  StoredProcedure [dbo].[insertNewDstType]    Script Date: 08.06.2019 21:29:30 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertNewDstType]
@DstType varchar(1024)
AS
DECLARE @DstId int, @DstFullName varchar(20)

SET @DstFullName = 
CASE @DstType 
		WHEN 'E' THEN 'Europe'
		WHEN 'A' THEN 'US/Canada'
		WHEN 'S' THEN 'South America'
		WHEN 'O' THEN 'Australia'
		WHEN 'Z' THEN 'New Zealand'
		WHEN 'U' THEN 'Unknown'
		ELSE 'None'
END

IF NOT EXISTS(SELECT DstId FROM DimDst)
BEGIN

		SET @DstId=1;

		INSERT INTO DimDst
		VALUES (@DstId, @DstFullName)
		END
			ELSE
			BEGIN
				SET @DstId=(SELECT MAX(DstId) + 1 FROM DimDst)
				INSERT INTO DimDst
				VALUES (@DstId, @DstFullName)
			END
GO

