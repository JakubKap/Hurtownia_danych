CREATE FUNCTION dbo.getDifficultiesKey(@diverted int, @depDel15 int, @arrDel15 int,@cancelled int)
returns int
AS
BEGIN

DECLARE @initId int=1

SET @initId=@diverted+2*@depDel15+4*@cancelled+8*@arrDel15+1

return @initId

END;
