USE [AirStatsDWH]
GO

/****** Object:  UserDefinedFunction [dbo].[getUniversalActualArrivalDate]    Script Date: 08.06.2019 21:40:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[getUniversalActualArrivalDate](
@Year int, 
@Month int, 
@DayOfMonth int, 
@DepTime int, 
@ActualElapsedTime int,
@TimezoneShiftOrigin float)
RETURNS int
AS
BEGIN


if @TimezoneShiftOrigin is null or @TimezoneShiftOrigin<-9998 or
@Year<0 or @Year is null or @Year=-9999 or
@Month<0 or @Month is null or @Month=-9999 or @Month>12 or
@DayOfMonth=-1 or @DayOfMonth is null or @DayOfMonth=-9999 or @DayOfMonth>31 or
@DepTime=-9999 or @DepTime is null or
@ActualElapsedTime=-9999 or @ActualElapsedTime is null return -1

DECLARE @currID int=NULL

DECLARE @currDate date=datefromparts(@Year,@Month,@DayOfMonth)

DECLARE @CRSDepHour int=@DepTime-@DepTime%100
DECLARE @CRSDepMin int =@DepTime%100
SET @CRSDepMin=@CRSDepHour*60+@CRSDepMin
DECLARE @Shift float=-@TimezoneShiftOrigin*60
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
GO

