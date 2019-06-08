USE [AirStatsDWH]
GO

/****** Object:  UserDefinedFunction [dbo].[getAirportKey]    Script Date: 08.06.2019 21:38:14 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[getAirportKey](@Iata varchar(1024))
returns int
AS
BEGIN

DECLARE @AirportId int=1

SET @AirportId = (SELECT AirportId FROM DimAirport
 WHERE AirportIata = @Iata)

return @AirportId

END;
GO

