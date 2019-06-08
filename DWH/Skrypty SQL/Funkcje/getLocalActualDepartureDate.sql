USE [AirStatsDWH]
GO

/****** Object:  UserDefinedFunction [dbo].[getLocalActualDepartureDate]    Script Date: 08.06.2019 21:39:23 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[getLocalActualDepartureDate](
@Year int,
@Month int,
@DayOfMonth int, 
@CRSDepTime int,
@DepDelay int)
RETURNS int
AS
BEGIN

if @Year<0 or @Year is null or @Year=-9999 or
@Month<0 or @Month is null or @Month=-9999 or @Month>12 or
@DayOfMonth=-1 or @DayOfMonth is null or @DayOfMonth=-9999 or @DayOfMonth>31 or
@CRSDepTime=-9999 or @CRSDepTime is null or
@DepDelay is null or @DepDelay=-9999 return -1

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
GO

