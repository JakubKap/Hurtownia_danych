CREATE FUNCTION dbo.getDelayGroup(
@DelayGroupKey int)
RETURNS int
AS
BEGIN

DECLARE @maxKey int= (SELECT MAX(DelayGroupKey) FROM DimDelayGroup)-1
DECLARE @minKey int= (SELECT MIN(DelayGroupKey) FROM DimDelayGroup)

IF @DelayGroupKey<@minKey or @DelayGroupKey>@maxKey return @maxKey+1

RETURN @DelayGroupKey


END