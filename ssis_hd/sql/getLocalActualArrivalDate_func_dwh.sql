CREATE FUNCTION dbo.getLocalActualArrivalDate(
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

DECLARE @currID int=NULL

DECLARE @currDate date=datefromparts(@Year,@Month,@DayOfMonth)

DECLARE @CRSDepHour int=@DepTime-@DepTime%100
DECLARE @CRSDepMin int =@DepTime%100
SET @CRSDepMin=@CRSDepHour*60+@CRSDepMin
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