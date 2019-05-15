CREATE FUNCTION dbo.getLocalScheduledDepartureDate(@Year int, @Month int, @DayOfMonth int)
RETURNS int
AS
BEGIN

DECLARE @currID int=NULL

SET @currID =1000000*@DayOfMonth+10000*@Month+@Year
RETURN @currID


END