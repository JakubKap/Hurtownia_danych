ALTER FUNCTION dbo.getUniversalTime(
@DepTime int,
@TimezoneShiftOrigin float)
RETURNS int
AS
BEGIN

if @TimezoneShiftOrigin is null return null

DECLARE @currID int=NULL

DECLARE @DepHour int=@DepTime-@DepTime%100
DECLARE @DepMin int =@DepTime%100
SET @DepMin=@DepHour*60+@DepMin
DECLARE @Shift float=-@TimezoneShiftOrigin*60
DECLARE @MinuteShift int=CAST(@Shift as INT)
DECLARE @HourSHift int=@MinuteShift/60
SET @MinuteShift = @MinuteShift%60
SET @DepHour=(@DepHour+@HourSHift+(@MinuteShift+@DepMin)/60)%24
SET @DepMin=(@MinuteShift+@DepMin)%60

SET @currID =100*@DepHour+@DepMin

RETURN @currID


END