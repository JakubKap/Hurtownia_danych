<<<<<<< HEAD
USE [AirStatsDWH]
GO
/****** Object:  UserDefinedFunction [dbo].[getTimeBLK]    Script Date: 04.06.2019 13:51:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[getTimeBLK](
=======
ALTER FUNCTION dbo.getTimeBLK(
>>>>>>> b064ca5b3f677b46859673d3286601d094724fb8
@DelayGroupKey varchar(30))
RETURNS int
AS
BEGIN

DECLARE @maxKey int= (SELECT MAX(BLKTimeID) FROM DimBLKTime)
<<<<<<< HEAD

IF (SELECT CASE WHEN COUNT(1)!=1 THEN 0 ELSE 1 END FROM DimBLKTime WHERE BLKTimeKey=@DelayGroupKey)=0
or @DelayGroupKey IS NULL
RETURN @maxKey
=======
IF @DelayGroupKey='-9999' or @DelayGroupKey is null return @maxKey
IF (SELECT CASE WHEN COUNT(1)!=1 THEN 0 ELSE 1 END FROM DimBLKTime WHERE BLKTimeKey=@DelayGroupKey)=1 RETURN @maxKey
>>>>>>> b064ca5b3f677b46859673d3286601d094724fb8

return (SELECT BLKTimeID FROM DimBLKTime WHERE BLKTimeKey=@DelayGroupKey)

END