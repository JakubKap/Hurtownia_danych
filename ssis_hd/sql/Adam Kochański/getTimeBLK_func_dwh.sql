ALTER FUNCTION dbo.getTimeBLK(
@DelayGroupKey varchar(30))
RETURNS int
AS
BEGIN

DECLARE @maxKey int= (SELECT MAX(BLKTimeID) FROM DimBLKTime)
IF @DelayGroupKey='-9999' or @DelayGroupKey is null return @maxKey
IF (SELECT CASE WHEN COUNT(1)!=1 THEN 0 ELSE 1 END FROM DimBLKTime WHERE BLKTimeKey=@DelayGroupKey)=1 RETURN @maxKey

return (SELECT BLKTimeID FROM DimBLKTime WHERE BLKTimeKey=@DelayGroupKey)

END