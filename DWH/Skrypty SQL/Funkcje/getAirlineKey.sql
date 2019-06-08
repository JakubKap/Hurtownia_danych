USE [AirStatsDWH]
GO

/****** Object:  UserDefinedFunction [dbo].[getAirlineKey]    Script Date: 08.06.2019 21:38:03 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[getAirlineKey](@Iata varchar(1024))
returns int
AS
BEGIN

DECLARE @AirlineId int=1

SET @AirlineId = (SELECT AirlineId FROM DimAirline
 WHERE AirlineIata = @Iata)

return @AirlineId

END;
GO

