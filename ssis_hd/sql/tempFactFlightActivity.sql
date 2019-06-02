USE [AirStatsDWH]
GO

/****** Object:  Table [dbo].[FactFlightActivity]    Script Date: 02.06.2019 14:03:39 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TempFactFlightActivity](
	[FlightId] [int] IDENTITY(1,1) NOT NULL,
	[LocalScheduledDepartureTime] [int] NULL,
	[DelayGroup] [int] NULL,
	[DifficultiesKey] [int] NULL,
	[UniversalScheduledArrivalTime] [int] NULL,
	[OperatingAirline] [int] NULL,
	[UniversalActualArrivalTime] [int] NULL,
	[UniversalActualArrivalDate] [int] NULL,
	[LocalActualDepartureTime] [int] NULL,
	[LocalScheduledDepartureDate] [int] NULL,
	[UniversalScheduledDepartureTime] [int] NULL,
	[LocalScheduledArrivalTime] [int] NULL,
	[CancellationCode] [int] NULL,
	[UniversalScheduledArrivalDate] [int] NULL,
	[ArrAirport] [int] NULL,
	[UniversalActualDepartureDate] [int] NULL,
	[FlightDate] [int] NULL,
	[UniversalActualDepartureTime] [int] NULL,
	[DepAirport] [int] NULL,
	[LocalActualDepartureDate] [int] NULL,
	[LocalScheduledArrivalDate] [int] NULL,
	[UniversalScheduledDepartureDate] [int] NULL,
	[ArrTimeBLK] [int] NULL,
	[DepTimeBLK] [int] NULL,
	[LocalActualArrivalTime] [int] NULL,
	[LocalActualArrivalDate] [int] NULL,
	[TailNumber] [varchar](20) NULL,
	[FlightNumber] [varchar](20) NULL,
	[DepDelay] [int] NULL,
	[DepDelayMinutes] [int] NULL,
	[TaxiOut] [int] NULL,
	[TaxiIn] [int] NULL,
	[ArrDelay] [int] NULL,
	[ArrDelayMinutes] [int] NULL,
	[SchedElapsedTime] [int] NULL,
	[ActualElapsedTime] [int] NULL,
	[AirTime] [int] NULL,
	[Flights] [int] NULL,
	[Distance] [int] NULL,
	[CarrierDelay] [int] NULL,
	[WeatherDelay] [int] NULL,
	[NASDelay] [int] NULL,
	[SecurityDelay] [int] NULL,
	[LateAircraftDelay] [int] NULL,
 CONSTRAINT [PK_FACTFLIGHTACTIVITY4] PRIMARY KEY NONCLUSTERED 
(
	[FlightId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_ARRAIRPOR_DIMAIRPO4] FOREIGN KEY([ArrAirport])
REFERENCES [dbo].[DimAirport] ([AirportId])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_ARRAIRPOR_DIMAIRPO]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_ARRTIMEBL_DIMBLKTI4] FOREIGN KEY([ArrTimeBLK])
REFERENCES [dbo].[DimBLKTime] ([BLKTimeID])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_ARRTIMEBL_DIMBLKTI]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_CANCELLAT_DIMCANCE4] FOREIGN KEY([CancellationCode])
REFERENCES [dbo].[DimCancellationReason] ([CancellationID])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_CANCELLAT_DIMCANCE]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_DELAYGROU_DIMDELAY4] FOREIGN KEY([DelayGroup])
REFERENCES [dbo].[DimDelayGroup] ([DelayGroupKey])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_DELAYGROU_DIMDELAY]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_DEPAIRPOR_DIMAIRPO4] FOREIGN KEY([DepAirport])
REFERENCES [dbo].[DimAirport] ([AirportId])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_DEPAIRPOR_DIMAIRPO]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_DEPTIMEBL_DIMBLKTI4] FOREIGN KEY([DepTimeBLK])
REFERENCES [dbo].[DimBLKTime] ([BLKTimeID])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_DEPTIMEBL_DIMBLKTI]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_DIFFICULT_DIMDIFFI4] FOREIGN KEY([DifficultiesKey])
REFERENCES [dbo].[DimDifficulties] ([DifficultiesKey])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_DIFFICULT_DIMDIFFI]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_FLIGHTDAT_DIMDATE4] FOREIGN KEY([FlightDate])
REFERENCES [dbo].[DimDate] ([CalendarKey])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_FLIGHTDAT_DIMDATE]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_LOCACTARRDAT_DIMDATE4] FOREIGN KEY([LocalActualArrivalDate])
REFERENCES [dbo].[DimDate] ([CalendarKey])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_LOCACTARRDAT_DIMDATE]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_LOCACTARRTIM_DIMTIME4] FOREIGN KEY([LocalActualArrivalTime])
REFERENCES [dbo].[DimTime] ([DateTimeKey])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_LOCACTARRTIM_DIMTIME]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_LOCACTDEPDAT_DIMDATE4] FOREIGN KEY([LocalActualDepartureDate])
REFERENCES [dbo].[DimDate] ([CalendarKey])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_LOCACTDEPDAT_DIMDATE]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_LOCACTDEPTIM_DIMTIME4] FOREIGN KEY([LocalActualDepartureTime])
REFERENCES [dbo].[DimTime] ([DateTimeKey])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_LOCACTDEPTIM_DIMTIME]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_LOCSCHARRDAT_DIMDATE4] FOREIGN KEY([LocalScheduledArrivalDate])
REFERENCES [dbo].[DimDate] ([CalendarKey])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_LOCSCHARRDAT_DIMDATE]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_LOCSCHARRTIM_DIMTIME4] FOREIGN KEY([LocalScheduledArrivalTime])
REFERENCES [dbo].[DimTime] ([DateTimeKey])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_LOCSCHARRTIM_DIMTIME]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_LOCSCHDEPDAT_DIMDATE4] FOREIGN KEY([LocalScheduledDepartureDate])
REFERENCES [dbo].[DimDate] ([CalendarKey])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_LOCSCHDEPDAT_DIMDATE]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_LOCSCHDEPTIM_DIMTIME4] FOREIGN KEY([LocalScheduledDepartureTime])
REFERENCES [dbo].[DimTime] ([DateTimeKey])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_LOCSCHDEPTIM_DIMTIME]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_OPERATING_DIMAIRLI4] FOREIGN KEY([OperatingAirline])
REFERENCES [dbo].[DimAirline] ([AirlineId])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_OPERATING_DIMAIRLI]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_UNIACTARRDAT_DIMDATE4] FOREIGN KEY([UniversalActualArrivalDate])
REFERENCES [dbo].[DimDate] ([CalendarKey])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_UNIACTARRDAT_DIMDATE]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_UNIACTARRTIM_DIMTIME4] FOREIGN KEY([UniversalActualArrivalTime])
REFERENCES [dbo].[DimTime] ([DateTimeKey])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_UNIACTARRTIM_DIMTIME]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_UNIACTDEPDAT_DIMDATE4] FOREIGN KEY([UniversalActualDepartureDate])
REFERENCES [dbo].[DimDate] ([CalendarKey])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_UNIACTDEPDAT_DIMDATE]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_UNIACTDEPTIM_DIMTIME4] FOREIGN KEY([UniversalActualDepartureTime])
REFERENCES [dbo].[DimTime] ([DateTimeKey])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_UNIACTDEPTIM_DIMTIME]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_UNISCHARRDAT_DIMDATE4] FOREIGN KEY([UniversalScheduledArrivalDate])
REFERENCES [dbo].[DimDate] ([CalendarKey])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_UNISCHARRDAT_DIMDATE]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_UNISCHARRTIM_DIMTIME4] FOREIGN KEY([UniversalScheduledArrivalTime])
REFERENCES [dbo].[DimTime] ([DateTimeKey])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_UNISCHARRTIM_DIMTIME]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_UNISCHDEPDAT_DIMDATE4] FOREIGN KEY([UniversalScheduledDepartureDate])
REFERENCES [dbo].[DimDate] ([CalendarKey])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_UNISCHDEPDAT_DIMDATE]
GO

ALTER TABLE [dbo].[FactFlightActivity]  WITH CHECK ADD  CONSTRAINT [FK_FACTFLIG_UNISCHDEPTIM_DIMTIME4] FOREIGN KEY([UniversalScheduledDepartureTime])
REFERENCES [dbo].[DimTime] ([DateTimeKey])
GO

ALTER TABLE [dbo].[FactFlightActivity] CHECK CONSTRAINT [FK_FACTFLIG_UNISCHDEPTIM_DIMTIME]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description2', @value=N'Bêdzie to prawdopodobnie Airline Id z openflights
   ' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactFlightActivity', @level2type=N'COLUMN',@level2name=N'OperatingAirline'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description2', @value=N'Numer samolotu wypisany na tylnym skrzydle' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactFlightActivity', @level2type=N'COLUMN',@level2name=N'TailNumber'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description2', @value=N'Difference in minutes between scheduled and actual departure time. Early departures show negative numbers' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactFlightActivity', @level2type=N'COLUMN',@level2name=N'DepDelay'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description2', @value=N'Difference in minutes between scheduled and actual departure time. Early departures set to 0.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactFlightActivity', @level2type=N'COLUMN',@level2name=N'DepDelayMinutes'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description2', @value=N'Taxi Out Time, in Minutes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactFlightActivity', @level2type=N'COLUMN',@level2name=N'TaxiOut'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description2', @value=N'Taxi In Time, in Minutes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactFlightActivity', @level2type=N'COLUMN',@level2name=N'TaxiIn'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description2', @value=N'Difference in minutes between scheduled and actual arrival time. Early arrivals show negative numbers.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactFlightActivity', @level2type=N'COLUMN',@level2name=N'ArrDelay'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description2', @value=N'Difference in minutes between scheduled and actual arrival time. Early arrivals set to 0.' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactFlightActivity', @level2type=N'COLUMN',@level2name=N'ArrDelayMinutes'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description2', @value=N'CRS Elapsed Time of Flight, in Minutes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactFlightActivity', @level2type=N'COLUMN',@level2name=N'SchedElapsedTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description2', @value=N'Elapsed Time of Flight, in Minutes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactFlightActivity', @level2type=N'COLUMN',@level2name=N'ActualElapsedTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description2', @value=N'Flight Time, in Minutes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactFlightActivity', @level2type=N'COLUMN',@level2name=N'AirTime'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description2', @value=N'	Number of Flights' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactFlightActivity', @level2type=N'COLUMN',@level2name=N'Flights'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description2', @value=N'Distance between airports (miles)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactFlightActivity', @level2type=N'COLUMN',@level2name=N'Distance'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description2', @value=N'Carrier Delay, in Minutes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactFlightActivity', @level2type=N'COLUMN',@level2name=N'CarrierDelay'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description2', @value=N'Weather Delay, in Minutes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactFlightActivity', @level2type=N'COLUMN',@level2name=N'WeatherDelay'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description2', @value=N'National Air System Delay, in Minutes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactFlightActivity', @level2type=N'COLUMN',@level2name=N'NASDelay'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description2', @value=N'Security Delay, in Minutes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactFlightActivity', @level2type=N'COLUMN',@level2name=N'SecurityDelay'
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description2', @value=N'Late Aircraft Delay, in Minutes' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'FactFlightActivity', @level2type=N'COLUMN',@level2name=N'LateAircraftDelay'
GO


