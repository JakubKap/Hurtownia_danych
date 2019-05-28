SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE insertUnknownDelGr
AS
BEGIN

DECLARE @MaxID int=(SELECT MAX(DelayGroupKey) FROM DimDelayGroup)

INSERT INTO DimDelayGroup(DelayGroupKey, Description)
VALUES (@MaxID+1,'Unknown/Bad')

END
GO
