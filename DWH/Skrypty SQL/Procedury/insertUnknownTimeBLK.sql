USE [AirStatsDWH]
GO

/****** Object:  StoredProcedure [dbo].[insertUnknownTimeBLK]    Script Date: 08.06.2019 21:31:46 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertUnknownTimeBLK]
AS
BEGIN

DECLARE @MaxID int=(SELECT MAX(DelayGroupKey) FROM DimDelayGroup)

INSERT INTO DimBLKTime(BLKTimeKey, Description)
VALUES (-1,'Unknown/Bad')

END
GO

