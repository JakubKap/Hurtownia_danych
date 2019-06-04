ALTER FUNCTION dbo.getLocalScheduledArrivalDate(
@Year int, 
@Month int, 
@DayOfMonth int, 
@CRSDepTime int, 
@CRSElapsedTime int,
@TimezoneShiftOrigin float,
@TimezoneShiftDest float)
RETURNS int
AS
BEGIN

if @TimezoneShiftDest is null or @TimezoneShiftOrigin is null return -1

DECLARE @currID int=NULL

DECLARE @currDate date=datefromparts(@Year,@Month,@DayOfMonth)

DECLARE @CRSDepHour int=@CRSDepTime-@CRSDepTime%100
DECLARE @CRSDepMin int =@CRSDepTime%100
SET @CRSDepMin=@CRSDepHour*60+@CRSDepMin
DECLARE @Shift float=(@TimezoneShiftDest-@TimezoneShiftOrigin)*60
DECLARE @MinuteShift int=CAST(@Shift as INT)

IF @CRSDepMin+@CRSElapsedTime+@MinuteShift>1439
	BEGIN
	SET @currDate=DATEADD(DAY,1,@currDate)
	END
ELSE IF @CRSDepMin+@CRSElapsedTime+@MinuteShift<0
	BEGIN
	SET @currDate=DATEADD(DAY,-1,@currDate)
	END


SET @currID =1000000*DATEPART(DAY,@currDate)+10000*DATEPART(MONTH,@currDate)+DATEPART(YEAR,@currDate)

RETURN @currID


END