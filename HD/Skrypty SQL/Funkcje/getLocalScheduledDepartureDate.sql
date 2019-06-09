USE [AirStatsDWH]
GO

/****** Object:  UserDefinedFunction [dbo].[getLocalScheduledDepartureDate]    Script Date: 08.06.2019 21:39:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[getLocalScheduledDepartureDate](@Year int, @Month int, @DayOfMonth int)
RETURNS int
AS
BEGIN

DECLARE @currID int=NULL

SET @currID =1000000*@DayOfMonth+10000*@Month+@Year
RETURN @currID


END
GO

