USE [AirStatsDWH]
GO

/****** Object:  StoredProcedure [dbo].[insertUnknownDelGr]    Script Date: 08.06.2019 21:31:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[insertUnknownDelGr]
AS
BEGIN

DECLARE @MaxID int=(SELECT MAX(DelayGroupKey) FROM DimDelayGroup)

INSERT INTO DimDelayGroup(DelayGroupKey, Description)
VALUES (@MaxID+1,'Unknown/Bad')

END
GO

