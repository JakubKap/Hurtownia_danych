USE [AirStatsDWH]
GO

/****** Object:  UserDefinedFunction [dbo].[getUniversalTime]    Script Date: 08.06.2019 21:40:57 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[getUniversalTime](
@DepTime int,
@TimezoneShiftOrigin float)
RETURNS int
AS
BEGIN

if @TimezoneShiftOrigin is null or @TimezoneShiftOrigin=-9999
or @DepTime is null or @DepTime=-9999 return -1

DECLARE @currID int=NULL

DECLARE @DepHour int=(@DepTime-@DepTime%100)/100
DECLARE @DepMin int =@DepTime%100
DECLARE @Shift float=@TimezoneShiftOrigin*60
DECLARE @MinuteShift int=CAST(@Shift as INT)
DECLARE @HourSHift int=@MinuteShift/60
SET @MinuteShift = @MinuteShift%60
SET @DepHour=(((@DepHour+@HourSHift+(@MinuteShift+@DepMin)/60)%24)+24)%24
SET @DepMin=(((@MinuteShift+@DepMin)%60)+60)%60

SET @currID =100*@DepHour+@DepMin

RETURN @currID
END
GO

