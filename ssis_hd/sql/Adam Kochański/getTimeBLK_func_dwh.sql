USE [AirStatsDWH]
GO
/****** Object:  UserDefinedFunction [dbo].[getTimeBLK]    Script Date: 04.06.2019 13:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[getTimeBLK](
@DelayGroupKey varchar(30))
RETURNS int
AS
BEGIN

DECLARE @maxKey int= (SELECT MAX(BLKTimeID) FROM DimBLKTime)

IF (SELECT CASE WHEN COUNT(1)!=1 THEN 0 ELSE 1 END FROM DimBLKTime WHERE BLKTimeKey=@DelayGroupKey)=0
or @DelayGroupKey IS NULL
RETURN @maxKey

return (SELECT BLKTimeID FROM DimBLKTime WHERE BLKTimeKey=@DelayGroupKey)

END