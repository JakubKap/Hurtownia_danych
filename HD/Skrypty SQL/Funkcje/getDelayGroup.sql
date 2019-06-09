USE [AirStatsDWH]
GO

/****** Object:  UserDefinedFunction [dbo].[getDelayGroup]    Script Date: 08.06.2019 21:38:41 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[getDelayGroup](
@DelayGroupKey int)
RETURNS int
AS
BEGIN

DECLARE @maxKey int= (SELECT MAX(DelayGroupKey) FROM DimDelayGroup)-1
DECLARE @minKey int= (SELECT MIN(DelayGroupKey) FROM DimDelayGroup)

IF @DelayGroupKey is null or @DelayGroupKey=-9999 or @DelayGroupKey<@minKey or @DelayGroupKey>@maxKey return @maxKey+1

RETURN @DelayGroupKey


END
GO

