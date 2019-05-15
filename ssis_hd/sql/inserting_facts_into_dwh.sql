CREATE PROCEDURE dbo.insertFacts
		@Year varchar(100),@Quarter varchar(100),@Month varchar(100),@DayOfMonth varchar(100),@DayOfWeek varchar(100),@FlDate varchar(100),@OpUniqueCarrier varchar(100),@OpCarrierAirlineId varchar(100),@OpCarrier varchar(100),
		@TailNum varchar(100),@OpCarrierFlNum varchar(100),@OriginAirportId varchar(100),@OriginAirportSeqId varchar(100),
		@Origin varchar(100),@OriginCityName varchar(100),@OriginStateAbr varchar(100),@OriginStateFips varchar(100),
		@OriginStateNm varchar(100),@OriginWac varchar(100),@DestAirportId varchar(100),@DestAirportSeqId varchar(100),
		@Dest varchar(100),@DestCityName varchar(100),@DestStateAbr varchar(100),@DestStateFips varchar(100),
		@DestStateNm varchar(100),@DestWac varchar(100),@CrsDepTime varchar(100),@DepTime varchar(100),
		@DepDelay varchar(100),@DepDelayNew varchar(100),@DepDel15 varchar(100),@DepDelayGroup varchar(100),
		@DepTimeBlk varchar(100),@TaxiOut varchar(100),@WheelsOff varchar(100),@WheelsOn varchar(100),
		@TaxiIn varchar(100),@CrsArrTime varchar(100),@ArrTime varchar(100),@ArrDelay varchar(100),
		@ArrDelayNew varchar(100),@ArrDel15 varchar(100),@ArrDelayGroup varchar(100),@ArrTimeBlk varchar(100),
		@Cancelled varchar(100),@CancellationCode varchar(100),@Diverted varchar(100),@CrsElapsedTime varchar(100),
		@ActualElapsedTime varchar(100),@AirTime varchar(100),@Flights varchar(100),@Distance varchar(100),
		@DistanceGroup varchar(100),@CarrierDelay varchar(100),@WeatherDelay varchar(100),@NasDelay varchar(100),
		@SecurityDelay varchar(100),@LateAircraftDelay varchar(100)

		AS

		DECLARE @FlightId int, @TimezoneShiftOriginH float, @TimezoneShiftDestH float,
		@localOriginDate int, @localDestDate int;

		SET @TimezoneShiftOriginH = (SELECT Timezone FROM DimAirport WHERE AirportIata = @Origin);
		SET @TimezoneShiftDestH = (SELECT Timezone FROM DimAirport WHERE AirportIata = @Dest);

		SET @localOriginDate = dbo.getLocalScheduledDepartureDate(CAST(@Year AS int), CAST(@Month AS int), CAST(@DayOfMonth AS int));
		DECLARE @LocalScheduledDepartureDate int = dbo.getLocalScheduledDepartureDate(CAST(@Year AS int), CAST(@Month AS int), CAST(@DayOfMonth AS int))
		DECLARE @UniversalSCheduledDepartureDate int =dbo.getUniversalSCheduledDepartureDate(CAST(@Year AS int), CAST(@Month AS int), CAST(@DayOfMonth AS int), @TimezoneShiftOriginH)
		DECLARE @LocalActualDepartureDate int =dbo.getLocalActualDepartureDate(CAST(@Year AS int), CAST(@Month AS int), CAST(@DayOfMonth AS int),Cast(@CrsDepTime as int),Cast(@DepDelay as int))
		DECLARE @UniversalActualDepartureDate int =dbo.getUniversalActualDepartureDate(CAST(@Year AS int), CAST(@Month AS int), CAST(@DayOfMonth AS int),Cast(@CrsDepTime as int),Cast(@DepDelay as int),@TimezoneShiftOriginH)
		DECLARE @LocalScheduledArrivalDate int = dbo.getLocalScheduledArrivalDate(CAST(@Year AS int), CAST(@Month AS int), CAST(@DayOfMonth AS int),	CAST(@CrsElapsedTime AS int), @TimezoneShiftOriginH, @TimezoneShiftDestH)
		DECLARE @UniversalSCheduledArrivalDate int =dbo.getUniversalSCheduledArrivalDate(CAST(@Year AS int), CAST(@Month AS int), CAST(@DayOfMonth AS int),	CAST(@CrsElapsedTime AS int), @TimezoneShiftOriginH)
		DECLARE @LocalActualArrivalDate int =dbo.getLocalActualArrivalDate(CAST(@Year AS int), CAST(@Month AS int), CAST(@DayOfMonth AS int),CAST(@DepTime AS int), CAST(@CrsElapsedTime AS int), @TimezoneShiftOriginH, @TimezoneShiftDestH)
		DECLARE @UniversalActualArrivalDate int =dbo.getUniversalActualArrivalDate(CAST(@Year AS int), CAST(@Month AS int), CAST(@DayOfMonth AS int),	CAST(@CrsElapsedTime AS int), @TimezoneShiftOriginH)

		DECLARE @LocalScheduledDepartureTime int = Cast(@CrsDepTime as int)
		DECLARE @UniversalSCheduledDepartureTime int =dbo.getUniversalTime(CAST(@CrsDepTime as int),CAST(@TimezoneShiftOriginH as int))
		DECLARE @LocalActualDepartureTime int = cast(@depTime as int)
		DECLARE @UniversalActualDepartureTime int =dbo.getUniversalTime(cast(@depTime as int),@TimezoneShiftOriginH)
		DECLARE @LocalScheduledArrivalTime int =cast(@CRSArrTime as int)
		DECLARE @UniversalSCheduledArrivalTime int =dbo.getUniversalTime(cast(@CRSArrTime as int),@TimezoneShiftOriginH)
		DECLARE @LocalActualArrivalTime int =cast(@ArrTime as int)
		DECLARE @UniversalActualArrivalTime int =dbo.getUniversalTime(cast(@ARRTime as int),@TimezoneShiftOriginH)


		IF NOT EXISTS(SELECT * FROM FactFlightActivity)
		BEGIN
			SET @FlightId = 1;
		END

		ELSE
		BEGIN
			SET @FlightId = (SELECT (MAX(FlightId) + 1) FROM FactFlightActivity);
		END


INSERT INTO [dbo].[FactFlightActivity]
           ([FlightId]
           ,[LocalScheduledDepartureTime]
           ,[DelayGroup]
           ,[DifficultiesKey]
           ,[UniversalScheduledArrivalTime]
           ,[OperatingAirline]
           ,[UniversalActualArrivalTime]
           ,[UniversalActualArrivalDate]
           ,[LocalActualDepartureTime]
           ,[LocalScheduledDepartureDate]
           ,[UniversalScheduledDepartureTime]
           ,[LocalScheduledArrivalTime]
           ,[CancellationCode]
           ,[UniversalScheduledArrivalDate]
           ,[ArrAirport]
           ,[UniversalActualDepartureDate]
           ,[FlightDate]
           ,[UniversalActualDepartureTime]
           ,[DepAirport]
           ,[LocalActualDepartureDate]
           ,[LocalScheduledArrivalDate]
           ,[UniversalScheduledDepartureDate]
           ,[ArrTimeBLK]
           ,[DepTimeBLK]
           ,[LocalActualArrivalTime]
           ,[LocalActualArrivalDate]
           ,[TailNumber]
           ,[FlightNumber]
           ,[DepDelay]
           ,[DepDelayMinutes]
           ,[TaxiOut]
           ,[TaxiIn]
           ,[ArrDelay]
           ,[ArrDelayMinutes]
           ,[SchedElapsedTime]
           ,[ActualElapsedTime]
           ,[AirTime]
           ,[Flights]
           ,[Distance]
           ,[CarrierDelay]
           ,[WeatherDelay]
           ,[NASDelay]
           ,[SecurityDelay]
           ,[LateAircraftDelay])
     VALUES
           (@FlightId, 
		   CAST(@CrsArrTime AS int), 
		   CAST(@ArrDelayGroup AS int),
		   dbo.getDifficultiesKey(CAST(@Diverted AS int), CAST(@DepDel15 AS int), 
				CAST(@ArrDel15 AS int), CAST(@Cancelled AS int)),
			@UniversalScheduledArrivalTime,
			1,--getAirlineKey(@OpCarrier),
			@UniversalActualArrivalTime,
			@UniversalActualArrivalDate,
			@LocalActualDepartureTime,
			@LocalScheduledDepartureDate,
			@UniversalScheduledDepartureTime,
			@LocalScheduledArrivalTime,
			CAST(@CancellationCode AS int),
			@UniversalScheduledArrivalDate,
			1,--getAirportKey(@Origin),
			@UniversalActualDepartureDate,
			@localOriginDate,
			@UniversalActualDepartureTime,
			1,--getAirportKey(@Dest),
			@LocalActualDepartureDate,
			@LocalScheduledArrivalDate,
			@UniversalScheduledDepartureDate,
			@ArrTimeBlk,
			@DepTimeBlk,
			@LocalActualArrivalTime,
			@LocalActualArrivalDate,
			@TailNum,
			@OpCarrierFlNum,
			CAST(@DepDelay AS int),
			CAST(@DepDelayNew AS int),
			CAST(@TaxiOut AS int),
			CAST(@ArrDelay AS int),
			CAST(@ArrDelayNew AS int),
			CAST(@CrsElapsedTime AS int),
			CAST(@ActualElapsedTime AS int),
			CAST(@ArrTime AS int),
			CAST(@Flights AS int),
			CAST(@Distance AS int),
			CAST(@CarrierDelay AS int),
			CAST(@WeatherDelay AS int),
			CAST(@NasDelay AS int),
			CAST(@SecurityDelay AS int),
			CAST(@LateAircraftDelay AS int)
	
		   )
GO

