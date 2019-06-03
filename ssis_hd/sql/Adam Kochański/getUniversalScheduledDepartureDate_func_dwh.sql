ALTER FUNCTION dbo.getUniversalScheduledDepartureDate(
@Year int,
@Month int,
@DayOfMonth int, 
@CRSDepTime int,
@TimezoneShiftOrigin float)
RETURNS int
AS
BEGIN

if @TimezoneShiftOrigin is null return null

DECLARE @currID int=NULL

DECLARE @currDate date=datefromparts(@Year,@Month,@DayOfMonth)

DECLARE @CRSDepHour int=@CRSDepTime-@CRSDepTime%100
DECLARE @CRSDepMin int =@CRSDepTime%100
SET @CRSDepMin=@CRSDepHour*60+@CRSDepMin
DECLARE @Shift float=-@TimezoneShiftOrigin*60
DECLARE @MinuteShift int=CAST(@Shift as INT)

IF @CRSDepMin+@MinuteShift>1439
	BEGIN
	SET @currDate=DATEADD(DAY,1,@currDate)
	END
ELSE IF @CRSDepMin+@MinuteShift<0
	BEGIN
	SET @currDate=DATEADD(DAY,1,@currDate)
	END


SET @currID =1000000*DATEPART(DAY,@currDate)+10000*DATEPART(MONTH,@currDate)+DATEPART(YEAR,@currDate)

RETURN @currID


END