CREATE FUNCTION dbo.getLocalActualDepartureDate(
@Year int,
@Month int,
@DayOfMonth int, 
@CRSDepTime int,
@DepDelay int)
RETURNS int
AS
BEGIN

DECLARE @currID int=NULL

DECLARE @currDate date=datefromparts(@Year,@Month,@DayOfMonth)

DECLARE @DelayH int=@DepDelay-@DepDelay%60
DECLARE @DelayMin int=@DepDelay%60


IF @CRSDepTime+100*@DelayH+@DelayMin>2400
	BEGIN
	SET @currDate=DATEADD(DAY,1,@currDate)
	END
ELSE IF @CRSDepTime+100*@DelayH+@DelayMin<0
	BEGIN
	SET @currDate=DATEADD(DAY,-1,@currDate)
	END


SET @currID =1000000*DATEPART(DAY,@currDate)+10000*DATEPART(MONTH,@currDate)+DATEPART(YEAR,@currDate)

RETURN @currID


END