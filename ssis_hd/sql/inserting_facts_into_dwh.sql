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
		
		SET @localOriginDate = getLocalOriginDate(CAST(@Year AS int), CAST(@Month AS int), CAST(@DayOfMonth AS int));
		
		SET @localDestDate = getLocalDestDate(CAST(@Year AS int), CAST(@Month AS int), CAST(@DayOfMonth AS int), CAST(@CrsElapsedTime AS int))
		
		

		IF NOT EXISTS(SELECT * FROM FactFlightActivity)
		BEGIN
			SET @FlightId = 1;
		END

		ELSE
		BEGIN
			SET @FlightId = (SELECT (MAX(FlightId) + 1) FROM FactFlightActivity);
		END


SET @TimezoneShiftOriginH = (SELECT Timezone FROM DimAirport WHERE AirportIata = @Origin);
SET @TimezoneShiftDestH = (SELECT Timezone FROM DimAirport WHERE AirportIata = @Dest);

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
		   CAST(@DelayGroup AS int),
		   getDifficultiesKey(CAST(@Diverted AS int), CAST(@DepDel15 AS int), 
				CAST(@ArrDel15 AS int), CAST(@Cancelled AS int)),
			getUniversalScheduledArrivalTime(CAST(@CrsArrTime AS INT), @TimezoneShiftDestH),
			getAirlineKey(@OpCarrier),
			getUniversalActualArrivalTime((CAST(@ArrTime AS INT), @TimezoneShiftDestH),
			getUniversalActualArrivalDate(),
			getLocalActualDepartureTime(),
			getLocalScheduledDepartureDate(),
			getUniversalScheduledDepartureTime(),
			getLocalScheduledArrivalTime(),
			CAST(@CancellationCode AS int),
			getUniversalScheduledArrivalDate(),
			getAirportKey(@Origin),
			getUniversalActualDepartureDate(),
			getFlightDate(),
			getUniversalActualDepartureTime(),
			getAirportKey(@Dest),
			getLocalActualDepartureDate(),
			getLocalScheduledArrivalDate(),
			getUniversalScheduledDepartureDate(),
			@ArrTimeBlk,
			@DepTimeBlk,
			getLocalActualArrivalTime(),
			getLocalActualArrivalDate(),
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

