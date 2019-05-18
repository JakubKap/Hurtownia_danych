USE [AirStatsDWH]
GO
/****** Object:  UserDefinedFunction [dbo].[getAirlineKey]    Script Date: 18.05.2019 12:44:31 ******/
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