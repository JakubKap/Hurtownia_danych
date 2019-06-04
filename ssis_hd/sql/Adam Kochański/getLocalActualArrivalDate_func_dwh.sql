ALTER FUNCTION dbo.getLocalActualArrivalDate(
@Year int, 
@Month int, 
@DayOfMonth int, 
@DepTime int, 
@ActualElapsedTime int,
@TimezoneShiftOrigin float,
@TimezoneShiftDest float)
RETURNS int
AS
BEGIN
if @TimezoneShiftOrigin is null or @TimezoneShiftOrigin<-9998 or
@TimezoneShiftDest is null or @TimezoneShiftDest<-9998 or
@Year<0 or @Year is null or @Year=-9999 or
@Month<0 or @Month is null or @Month=-9999 or @Month>12 or
@DayOfMonth=-1 or @DayOfMonth is null or @DayOfMonth=-9999 or @DayOfMonth>31 or
@DepTime=-9999 or @DepTime is null or
@ActualElapsedTime is null or @ActualElapsedTime=-9999 return -1

DECLARE @currID int=NULL

DECLARE @currDate date=datefromparts(@Year,@Month,@DayOfMonth)

DECLARE @CRSDepHour int=(@DepTime-@DepTime%100)/100
DECLARE @CRSDepMin int =@DepTime%100
DECLARE @Shift float=@TimezoneShiftDest-@TimezoneShiftOrigin*60
DECLARE @MinuteShift int=CAST(@Shift as INT)

IF @CRSDepMin+@ActualElapsedTime+@MinuteShift>1439
	BEGIN
	SET @currDate=DATEADD(DAY,1,@currDate)
	END
ELSE IF @CRSDepMin+@ActualElapsedTime+@MinuteShift<0
	BEGIN
	SET @currDate=DATEADD(DAY,-1,@currDate)
	END


SET @currID =1000000*DATEPART(DAY,@currDate)+10000*DATEPART(MONTH,@currDate)+DATEPART(YEAR,@currDate)

RETURN @currID


END