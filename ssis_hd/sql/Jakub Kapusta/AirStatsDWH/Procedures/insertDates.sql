USE [AirStatsDWH]
GO
/****** Object:  StoredProcedure [dbo].[insertDates]    Script Date: 18.05.2019 12:27:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertDates] 
AS
BEGIN
	DECLARE @startDate date='01.01.2018'
	DECLARE @endDate date='01.01.2020'
	DECLARE @currID int
	DECLARE @currQuarter int
	DECLARE @currYear int
	DECLARE @currMonth int
	DECLARE @currDay int
	DECLARE @currDayOfTheWeek int

	DECLARE @currDate date=@startDate

	WHILE (@currDate <=@endDate)
		BEGIN

		SET @currYear=DATEPART(YEAR,@currDate)
		SET @currMonth=DATEPART(MONTH,@currDate)
		SET @currDay=DATEPART(DAY,@currDate)

		SET @currQuarter=0

		SET @currQuarter=(SELECT QuarterNumber FROM DimQuarter WHERE 
			@currDay>=StartDay AND(@currDay<=EndDay OR @currMonth<EndMonth) AND @currMonth>=StartMonth AND @currMonth<=EndMonth)

		IF (DATEPART(WEEKDAY,@currDate)=1)
			SET @currDayOfTheWeek=7
		ELSE 
			SET @currDayOfTheWeek=(DATEPART(WEEKDAY,@currDate)-1)%7

		SET @currID=1000000*@currDay+10000*@currMonth+@currYear

		INSERT INTO DimDate (CalendarKey,Year,Day,DayOfWeekInDate,Month,CalendarsQuarter)
		VALUES (@currID,@currYear,@currDay,@currDayOfTheWeek,@currMonth,@currQuarter)

		SET @currDate=DATEADD(dd,1,@currDate)

		END	
END
