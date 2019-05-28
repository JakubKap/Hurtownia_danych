CREATE FUNCTION dbo.getDifficultiesKey(@diverted int, @depDel15 int, @arrDel15 int,@cancelled int)
returns int
AS
BEGIN


if @diverted>1 or @diverted<0 SET @diverted=2
if @depDel15>1 or @depDel15<0 SET @depDel15=2
if @arrDel15>1 or @arrDel15<0 SET @arrDel15=2
if @cancelled>1 or @cancelled<0 SET @cancelled=2

DECLARE @initId int=1

SET @initId=@diverted+3*@depDel15+9*@cancelled+27*@arrDel15+1

return @initId

END;
