INSERT INTO [dbo].[FactFlightActivity] ([LocalScheduledDepartureTime] ,[DelayGroup] ,[DifficultiesKey] ,[UniversalScheduledArrivalTime] ,[OperatingAirline] ,[UniversalActualArrivalTime] ,[UniversalActualArrivalDate] ,[LocalActualDepartureTime] ,[LocalScheduledDepartureDate] ,[UniversalScheduledDepartureTime] ,[LocalScheduledArrivalTime] ,[CancellationCode] ,[UniversalScheduledArrivalDate] ,[ArrAirport] ,[UniversalActualDepartureDate] ,[FlightDate] ,[UniversalActualDepartureTime] ,[DepAirport] ,[LocalActualDepartureDate] ,[LocalScheduledArrivalDate] ,[UniversalScheduledDepartureDate] ,[ArrTimeBLK] ,[DepTimeBLK] ,[LocalActualArrivalTime] ,[LocalActualArrivalDate] ,[TailNumber] ,[FlightNumber] ,[DepDelay] ,[DepDelayMinutes] ,[TaxiOut] ,[TaxiIn] ,[ArrDelay] ,[ArrDelayMinutes] ,[SchedElapsedTime] ,[ActualElapsedTime] ,[AirTime] ,[Flights] ,[Distance] ,[CarrierDelay] ,[WeatherDelay] ,[NASDelay] ,[SecurityDelay] ,[LateAircraftDelay]) VALUES (? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,? ,?)







USE [AirStatsStage]
GO

SELECT DISTINCT Year, Quarter, Month, DayOfMonth, DayOfWeek, TailNum, COUNT(*) AS Liczba
  FROM [dbo].[FactFlightActivity]
  GROUP BY Year, Quarter, Month, DayOfMonth, DayOfWeek, TailNum
  ORDER BY Liczba DESC
GO


SELECT TOP 1000  *
FROM [FactFlightActivity]
WHERE 