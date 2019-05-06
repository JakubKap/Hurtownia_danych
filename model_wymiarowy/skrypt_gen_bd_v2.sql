/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     06.05.2019 14:21:04                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimAirline') and o.name = 'FK_DIMAIRLI_AIRLINEWO_DIMAIRLI')
alter table DimAirline
   drop constraint FK_DIMAIRLI_AIRLINEWO_DIMAIRLI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimAirport') and o.name = 'FK_DIMAIRPO_AIRPORTWO_DIMAIRPO')
alter table DimAirport
   drop constraint FK_DIMAIRPO_AIRPORTWO_DIMAIRPO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimAirport') and o.name = 'FK_DIMAIRPO_DST_DIMDST')
alter table DimAirport
   drop constraint FK_DIMAIRPO_DST_DIMDST
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimAirport') and o.name = 'FK_DIMAIRPO_STATECODE_DIMSTATE')
alter table DimAirport
   drop constraint FK_DIMAIRPO_STATECODE_DIMSTATE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimAirport') and o.name = 'FK_DIMAIRPO_STATEFIPS_DIMSTATE')
alter table DimAirport
   drop constraint FK_DIMAIRPO_STATEFIPS_DIMSTATE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimDate') and o.name = 'FK_DIMDATE_CALENDARS_DIMQUART')
alter table DimDate
   drop constraint FK_DIMDATE_CALENDARS_DIMQUART
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimDate') and o.name = 'FK_DIMDATE_DAYOFWEEK_DIMDAYOF')
alter table DimDate
   drop constraint FK_DIMDATE_DAYOFWEEK_DIMDAYOF
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimDate') and o.name = 'FK_DIMDATE_MONTH_DIMMONTH')
alter table DimDate
   drop constraint FK_DIMDATE_MONTH_DIMMONTH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_ARRAIRPOR_DIMAIRPO')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_ARRAIRPOR_DIMAIRPO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_ARRTIMEBL_DIMBLKTI')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_ARRTIMEBL_DIMBLKTI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_CANCELLAT_DIMCANCE')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_CANCELLAT_DIMCANCE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_DELAYGROU_DIMDELAY')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_DELAYGROU_DIMDELAY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_DEPAIRPOR_DIMAIRPO')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_DEPAIRPOR_DIMAIRPO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_DEPTIMEBL_DIMBLKTI')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_DEPTIMEBL_DIMBLKTI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_DIFFICULT_DIMDIFFI')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_DIFFICULT_DIMDIFFI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_FLIGHTDAT_DIMDATE')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_FLIGHTDAT_DIMDATE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_LOCACTARRDAT_DIMDATE')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_LOCACTARRDAT_DIMDATE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_LOCACTARRTIM_DIMTIME')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_LOCACTARRTIM_DIMTIME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_LOCACTDEPDAT_DIMDATE')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_LOCACTDEPDAT_DIMDATE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_LOCACTDEPTIM_DIMTIME')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_LOCACTDEPTIM_DIMTIME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_LOCSCHARRDAT_DIMDATE')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_LOCSCHARRDAT_DIMDATE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_LOCSCHARRTIM_DIMTIME')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_LOCSCHARRTIM_DIMTIME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_LOCSCHDEPDAT_DIMDATE')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_LOCSCHDEPDAT_DIMDATE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_LOCSCHDEPTIM_DIMTIME')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_LOCSCHDEPTIM_DIMTIME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_OPERATING_DIMAIRLI')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_OPERATING_DIMAIRLI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_UNIACTARRDAT_DIMDATE')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_UNIACTARRDAT_DIMDATE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_UNIACTARRTIM_DIMTIME')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_UNIACTARRTIM_DIMTIME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_UNIACTDEPDAT_DIMDATE')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_UNIACTDEPDAT_DIMDATE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_UNIACTDEPTIM_DIMTIME')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_UNIACTDEPTIM_DIMTIME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_UNISCHARRDAT_DIMDATE')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_UNISCHARRDAT_DIMDATE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_UNISCHARRTIM_DIMTIME')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_UNISCHARRTIM_DIMTIME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_UNISCHDEPDAT_DIMDATE')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_UNISCHDEPDAT_DIMDATE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_UNISCHDEPTIM_DIMTIME')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_UNISCHDEPTIM_DIMTIME
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimAirline')
            and   name  = 'AirlineWorldAreaCode_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimAirline.AirlineWorldAreaCode_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimAirline')
            and   type = 'U')
   drop table DimAirline
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimAirlineWorldAreaCode')
            and   type = 'U')
   drop table DimAirlineWorldAreaCode
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimAirport')
            and   name  = 'AirportWorldAreaCode_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimAirport.AirportWorldAreaCode_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimAirport')
            and   name  = 'StateFips_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimAirport.StateFips_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimAirport')
            and   name  = 'StateCode_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimAirport.StateCode_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimAirport')
            and   name  = 'Dst_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimAirport.Dst_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimAirport')
            and   type = 'U')
   drop table DimAirport
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimAirportWorldAreaCode')
            and   type = 'U')
   drop table DimAirportWorldAreaCode
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimBLKTime')
            and   type = 'U')
   drop table DimBLKTime
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimCancellationReason')
            and   type = 'U')
   drop table DimCancellationReason
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimDate')
            and   name  = 'DayOfWeekInDate_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimDate.DayOfWeekInDate_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimDate')
            and   name  = 'Month_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimDate.Month_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimDate')
            and   name  = 'CalendarsQuarter_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimDate.CalendarsQuarter_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimDate')
            and   type = 'U')
   drop table DimDate
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimDayOfWeek')
            and   type = 'U')
   drop table DimDayOfWeek
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimDelayGroup')
            and   type = 'U')
   drop table DimDelayGroup
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimDifficulties')
            and   type = 'U')
   drop table DimDifficulties
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimDst')
            and   type = 'U')
   drop table DimDst
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimMonth')
            and   type = 'U')
   drop table DimMonth
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimQuarter')
            and   type = 'U')
   drop table DimQuarter
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimState')
            and   type = 'U')
   drop table DimState
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimStateFips')
            and   type = 'U')
   drop table DimStateFips
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimTime')
            and   type = 'U')
   drop table DimTime
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'LocalActualArrivalDate_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.LocalActualArrivalDate_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'UniversalScheduledArrivalDate_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.UniversalScheduledArrivalDate_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'LocalActualDepartureDate_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.LocalActualDepartureDate_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'LocalScheduledArrivalDate_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.LocalScheduledArrivalDate_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'UniversalActualDepartureDate_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.UniversalActualDepartureDate_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'UniversalScheduledDepartureDate_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.UniversalScheduledDepartureDate_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'UniversalActualArrivalDate_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.UniversalActualArrivalDate_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'LocalScheduledDepartureDate_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.LocalScheduledDepartureDate_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'UniversalActualDepartureTime_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.UniversalActualDepartureTime_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'UniversalScheduledArrivalTime_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.UniversalScheduledArrivalTime_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'LocalScheduledDepartureTime_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.LocalScheduledDepartureTime_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'LocalActualArrivalTime_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.LocalActualArrivalTime_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'DelayGroup_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.DelayGroup_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'ArrTimeBLK_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.ArrTimeBLK_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'DepTimeBLK_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.DepTimeBLK_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'CancellationCode_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.CancellationCode_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'FlightDate_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.FlightDate_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'DifficultiesKey_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.DifficultiesKey_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'UniversalActualArrivalTime_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.UniversalActualArrivalTime_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'LocalScheduledArrivalTime_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.LocalScheduledArrivalTime_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'LocalActualDepartureTime_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.LocalActualDepartureTime_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'UniversalScheduledDepartureTime_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.UniversalScheduledDepartureTime_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'DepAirport_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.DepAirport_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'ArrAirport_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.ArrAirport_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'OperatingAirline_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.OperatingAirline_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FactFlightActivity')
            and   type = 'U')
   drop table FactFlightActivity
go

if exists(select 1 from systypes where name='Domain_1')
   drop type Domain_1
go

/*==============================================================*/
/* Domain: Domain_1                                             */
/*==============================================================*/
create type Domain_1
   from char(10)
go

/*==============================================================*/
/* Table: DimAirline                                            */
/*==============================================================*/
create table DimAirline (
   AirlineId            int                  not null,
   AirlineWorldAreaCode int                  not null,
   AirlineIata          varchar(100)         null,
   AirportIcao          varchar(4)           null,
   AirlineUsDotCode     int                  null,
   AirlineName          varchar(100)         null,
   AirlineAlias         varchar(200)         not null,
   Callsign             varchar(200)         not null,
   Active               varchar(1)           not null,
   constraint PK_DIMAIRLINE primary key nonclustered (AirlineId)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DimAirline')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AirlineId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DimAirline', 'column', 'AirlineId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Bêdzie to prawdopodobnie Airline Id z openflights
   ',
   'user', @CurrentUser, 'table', 'DimAirline', 'column', 'AirlineId'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DimAirline')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AirlineAlias')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DimAirline', 'column', 'AirlineAlias'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Alias of the airline. For example, All Nippon Airways is commonly known as "ANA". ',
   'user', @CurrentUser, 'table', 'DimAirline', 'column', 'AirlineAlias'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DimAirline')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Callsign')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DimAirline', 'column', 'Callsign'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Airline callsign.',
   'user', @CurrentUser, 'table', 'DimAirline', 'column', 'Callsign'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DimAirline')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Active')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DimAirline', 'column', 'Active'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '"Y" if the airline is or has until recently been operational, "N" if it is defunct. This field is not reliable: in particular, major airlines that stopped flying long ago, but have not had their IATA code reassigned (eg. Ansett/AN), will incorrectly show as "Y".',
   'user', @CurrentUser, 'table', 'DimAirline', 'column', 'Active'
go

/*==============================================================*/
/* Index: AirlineWorldAreaCode_FK                               */
/*==============================================================*/
create index AirlineWorldAreaCode_FK on DimAirline (
AirlineWorldAreaCode ASC
)
go

/*==============================================================*/
/* Table: DimAirlineWorldAreaCode                               */
/*==============================================================*/
create table DimAirlineWorldAreaCode (
   WordAreaCode         int                  not null,
   Region               varchar(100)         not null,
   constraint PK_DIMAIRLINEWORLDAREACODE primary key nonclustered (WordAreaCode)
)
go

/*==============================================================*/
/* Table: DimAirport                                            */
/*==============================================================*/
create table DimAirport (
   AirportId            int                  not null,
   StateCode            varchar(2)           null,
   StateFips            varchar(2)           null,
   Dst                  int                  not null,
   AirportWorldAreaCode int                  not null,
   AirportUsDotCode     int                  null,
   AirportSeqId         int                  null,
   AirportCityMarketId  int                  null,
   AirportIata          varchar(10)          null,
   AirportIcao          varchar(4)           null,
   AirportName          varchar(100)         null,
   CityName             varchar(100)         not null,
   Latitude             decimal(22,20)       not null,
   Longitude            decimal(23,20)       not null,
   Altitude             int                  not null,
   Timezone             float                not null,
   TzDatabase           varchar(30)          not null,
   constraint PK_DIMAIRPORT primary key nonclustered (AirportId)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DimAirport')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CityName')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DimAirport', 'column', 'CityName'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Z Openflights',
   'user', @CurrentUser, 'table', 'DimAirport', 'column', 'CityName'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DimAirport')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Timezone')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DimAirport', 'column', 'Timezone'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Hours offset from UTC. Fractional hours are expressed as decimals, eg. India is 5.5.',
   'user', @CurrentUser, 'table', 'DimAirport', 'column', 'Timezone'
go

/*==============================================================*/
/* Index: Dst_FK                                                */
/*==============================================================*/
create index Dst_FK on DimAirport (
Dst ASC
)
go

/*==============================================================*/
/* Index: StateCode_FK                                          */
/*==============================================================*/
create index StateCode_FK on DimAirport (
StateCode ASC
)
go

/*==============================================================*/
/* Index: StateFips_FK                                          */
/*==============================================================*/
create index StateFips_FK on DimAirport (
StateFips ASC
)
go

/*==============================================================*/
/* Index: AirportWorldAreaCode_FK                               */
/*==============================================================*/
create index AirportWorldAreaCode_FK on DimAirport (
AirportWorldAreaCode ASC
)
go

/*==============================================================*/
/* Table: DimAirportWorldAreaCode                               */
/*==============================================================*/
create table DimAirportWorldAreaCode (
   WordAreaCode         int                  not null,
   Region               varchar(100)         not null,
   constraint PK_DIMAIRPORTWORLDAREACODE primary key nonclustered (WordAreaCode)
)
go

/*==============================================================*/
/* Table: DimBLKTime                                            */
/*==============================================================*/
create table DimBLKTime (
   BLKTimeKey           varchar(30)          not null,
   Description          varchar(100)         not null,
   constraint PK_DIMBLKTIME primary key nonclustered (BLKTimeKey)
)
go

/*==============================================================*/
/* Table: DimCancellationReason                                 */
/*==============================================================*/
create table DimCancellationReason (
   CancellationReasonKey varchar(5)           not null,
   Description          varchar(100)         not null,
   constraint PK_DIMCANCELLATIONREASON primary key nonclustered (CancellationReasonKey)
)
go

/*==============================================================*/
/* Table: DimDate                                               */
/*==============================================================*/
create table DimDate (
   CalendarKey          int                  not null,
   DayOfWeekInDate      int                  not null,
   CalendarsQuarter     int                  null,
   Month                int                  not null,
   Year                 int                  not null,
   Day                  int                  null,
   constraint PK_DIMDATE primary key nonclustered (CalendarKey)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DimDate')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DayOfWeekInDate')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DimDate', 'column', 'DayOfWeekInDate'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '1-9 (B³¹d w Lookup-Table - pominiêto 8  oraz dodano dodatkowoUnknown)',
   'user', @CurrentUser, 'table', 'DimDate', 'column', 'DayOfWeekInDate'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DimDate')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Month')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DimDate', 'column', 'Month'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '1-12',
   'user', @CurrentUser, 'table', 'DimDate', 'column', 'Month'
go

/*==============================================================*/
/* Index: CalendarsQuarter_FK                                   */
/*==============================================================*/
create index CalendarsQuarter_FK on DimDate (
CalendarsQuarter ASC
)
go

/*==============================================================*/
/* Index: Month_FK                                              */
/*==============================================================*/
create index Month_FK on DimDate (
Month ASC
)
go

/*==============================================================*/
/* Index: DayOfWeekInDate_FK                                    */
/*==============================================================*/
create index DayOfWeekInDate_FK on DimDate (
DayOfWeekInDate ASC
)
go

/*==============================================================*/
/* Table: DimDayOfWeek                                          */
/*==============================================================*/
create table DimDayOfWeek (
   DayOfWeekNumber      int                  not null,
   DayOfWeekName        varchar(20)          not null,
   constraint PK_DIMDAYOFWEEK primary key nonclustered (DayOfWeekNumber)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DimDayOfWeek')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DayOfWeekNumber')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DimDayOfWeek', 'column', 'DayOfWeekNumber'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '1-9 (B³¹d w Lookup-Table - pominiêto 8  oraz dodano dodatkowoUnknown)',
   'user', @CurrentUser, 'table', 'DimDayOfWeek', 'column', 'DayOfWeekNumber'
go

/*==============================================================*/
/* Table: DimDelayGroup                                         */
/*==============================================================*/
create table DimDelayGroup (
   DelayGroupKey        int                  not null,
   Description          varchar(100)         not null,
   constraint PK_DIMDELAYGROUP primary key nonclustered (DelayGroupKey)
)
go

/*==============================================================*/
/* Table: DimDifficulties                                       */
/*==============================================================*/
create table DimDifficulties (
   DifficultiesKey      int                  not null,
   Diverted             varchar(20)          not null,
   DepDel15             varchar(20)          not null,
   ArrDel15             varchar(20)          not null,
   Cancelled            varchar(20)          not null,
   constraint PK_DIMDIFFICULTIES primary key nonclustered (DifficultiesKey)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DimDifficulties')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Diverted')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DimDifficulties', 'column', 'Diverted'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Diverted Flight Indicator (1=Yes)',
   'user', @CurrentUser, 'table', 'DimDifficulties', 'column', 'Diverted'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DimDifficulties')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DepDel15')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DimDifficulties', 'column', 'DepDel15'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Departure Delay Indicator, 15 Minutes or More (1=Yes)',
   'user', @CurrentUser, 'table', 'DimDifficulties', 'column', 'DepDel15'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DimDifficulties')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ArrDel15')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DimDifficulties', 'column', 'ArrDel15'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Arrival Delay Indicator, 15 Minutes or More (1=Yes)',
   'user', @CurrentUser, 'table', 'DimDifficulties', 'column', 'ArrDel15'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DimDifficulties')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Cancelled')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DimDifficulties', 'column', 'Cancelled'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Cancelled Flight Indicator (1=Yes)',
   'user', @CurrentUser, 'table', 'DimDifficulties', 'column', 'Cancelled'
go

/*==============================================================*/
/* Table: DimDst                                                */
/*==============================================================*/
create table DimDst (
   DstId                int                  not null,
   DstType              varchar(20)          not null,
   constraint PK_DIMDST primary key nonclustered (DstId)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('DimDst') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'DimDst' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   ' Daylight savings time. One of E (Europe), A (US/Canada), S (South America), O (Australia), Z (New Zealand), N (None) or U (Unknown). See also: Help: Time', 
   'user', @CurrentUser, 'table', 'DimDst'
go

/*==============================================================*/
/* Table: DimMonth                                              */
/*==============================================================*/
create table DimMonth (
   MonthNumber          int                  not null,
   MonthName            varchar(50)          not null,
   constraint PK_DIMMONTH primary key nonclustered (MonthNumber)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DimMonth')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'MonthNumber')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DimMonth', 'column', 'MonthNumber'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '1-12',
   'user', @CurrentUser, 'table', 'DimMonth', 'column', 'MonthNumber'
go

/*==============================================================*/
/* Table: DimQuarter                                            */
/*==============================================================*/
create table DimQuarter (
   QuarterNumber        int                  not null,
   Description          varchar(100)         not null,
   StartDay             int                  not null,
   StartYear            int                  not null,
   EndDay               int                  not null,
   EndYear              int                  not null,
   constraint PK_DIMQUARTER primary key nonclustered (QuarterNumber)
)
go

/*==============================================================*/
/* Table: DimState                                              */
/*==============================================================*/
create table DimState (
   StateCode            varchar(2)           not null,
   StateName            varchar(20)          not null,
   constraint PK_DIMSTATE primary key nonclustered (StateCode)
)
go

/*==============================================================*/
/* Table: DimStateFips                                          */
/*==============================================================*/
create table DimStateFips (
   StateFipsCode        varchar(2)           not null,
   StateName            varchar(20)          not null,
   constraint PK_DIMSTATEFIPS primary key nonclustered (StateFipsCode)
)
go

/*==============================================================*/
/* Table: DimTime                                               */
/*==============================================================*/
create table DimTime (
   DateTimeKey          int                  not null,
   Hour                 int                  not null,
   Minute               int                  not null,
   constraint PK_DIMTIME primary key nonclustered (DateTimeKey)
)
go

/*==============================================================*/
/* Table: FactFlightActivity                                    */
/*==============================================================*/
create table FactFlightActivity (
   FlightId             int                  not null,
   LocalScheduledDepartureTime int                  not null,
   DelayGroup           int                  null,
   DifficultiesKey      int                  null,
   UniversalScheduledArrivalTime int                  not null,
   OperatingAirline     int                  not null,
   UniversalActualArrivalTime int                  not null,
   UniversalActualArrivalDate int                  null,
   LocalActualDepartureTime int                  not null,
   LocalScheduledDepartureDate int                  null,
   UniversalScheduledDepartureTime int                  not null,
   LocalScheduledArrivalTime int                  not null,
   CancellationCode     varchar(5)           null,
   UniversalScheduledArrivalDate int                  null,
   ArrAirport           int                  not null,
   UniversalActualDepartureDate int                  null,
   FlightDate           int                  not null,
   UniversalActualDepartureTime int                  not null,
   DepAirport           int                  not null,
   LocalActualDepartureDate int                  null,
   LocalScheduledArrivalDate int                  null,
   UniversalScheduledDepartureDate int                  null,
   ArrTimeBLK           varchar(30)          null,
   DepTimeBLK           varchar(30)          null,
   LocalActualArrivalTime int                  not null,
   LocalActualArrivalDate int                  null,
   TailNumber           varchar(20)          null,
   FlightNumber         varchar(20)          null,
   DepDelay             int                  null,
   DepDelayMinutes      int                  null,
   TaxiOut              int                  null,
   TaxiIn               int                  null,
   ArrDelay             int                  null,
   ArrDelayMinutes      int                  null,
   SchedElapsedTime     int                  null,
   ActualElapsedTime    int                  null,
   AirTime              int                  null,
   Flights              int                  null,
   Distance             int                  null,
   CarrierDelay         int                  null,
   WeatherDelay         int                  null,
   NASDelay             int                  null,
   SecurityDelay        int                  null,
   LateAircraftDelay    int                  null,
   constraint PK_FACTFLIGHTACTIVITY primary key nonclustered (FlightId)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FactFlightActivity')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'OperatingAirline')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'OperatingAirline'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Bêdzie to prawdopodobnie Airline Id z openflights
   ',
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'OperatingAirline'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FactFlightActivity')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TailNumber')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'TailNumber'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Numer samolotu wypisany na tylnym skrzydle',
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'TailNumber'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FactFlightActivity')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DepDelay')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'DepDelay'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Difference in minutes between scheduled and actual departure time. Early departures show negative numbers',
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'DepDelay'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FactFlightActivity')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DepDelayMinutes')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'DepDelayMinutes'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Difference in minutes between scheduled and actual departure time. Early departures set to 0.',
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'DepDelayMinutes'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FactFlightActivity')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TaxiOut')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'TaxiOut'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Taxi Out Time, in Minutes',
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'TaxiOut'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FactFlightActivity')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'TaxiIn')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'TaxiIn'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Taxi In Time, in Minutes',
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'TaxiIn'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FactFlightActivity')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ArrDelay')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'ArrDelay'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Difference in minutes between scheduled and actual arrival time. Early arrivals show negative numbers.',
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'ArrDelay'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FactFlightActivity')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ArrDelayMinutes')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'ArrDelayMinutes'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Difference in minutes between scheduled and actual arrival time. Early arrivals set to 0.',
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'ArrDelayMinutes'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FactFlightActivity')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SchedElapsedTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'SchedElapsedTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'CRS Elapsed Time of Flight, in Minutes',
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'SchedElapsedTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FactFlightActivity')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'ActualElapsedTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'ActualElapsedTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Elapsed Time of Flight, in Minutes',
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'ActualElapsedTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FactFlightActivity')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AirTime')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'AirTime'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Flight Time, in Minutes',
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'AirTime'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FactFlightActivity')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Flights')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'Flights'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '	Number of Flights',
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'Flights'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FactFlightActivity')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'Distance')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'Distance'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Distance between airports (miles)',
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'Distance'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FactFlightActivity')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'CarrierDelay')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'CarrierDelay'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Carrier Delay, in Minutes',
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'CarrierDelay'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FactFlightActivity')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'WeatherDelay')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'WeatherDelay'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Weather Delay, in Minutes',
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'WeatherDelay'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FactFlightActivity')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'NASDelay')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'NASDelay'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'National Air System Delay, in Minutes',
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'NASDelay'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FactFlightActivity')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'SecurityDelay')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'SecurityDelay'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Security Delay, in Minutes',
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'SecurityDelay'
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('FactFlightActivity')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'LateAircraftDelay')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'LateAircraftDelay'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Late Aircraft Delay, in Minutes',
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'LateAircraftDelay'
go

/*==============================================================*/
/* Index: OperatingAirline_FK                                   */
/*==============================================================*/
create index OperatingAirline_FK on FactFlightActivity (
OperatingAirline ASC
)
go

/*==============================================================*/
/* Index: ArrAirport_FK                                         */
/*==============================================================*/
create index ArrAirport_FK on FactFlightActivity (
ArrAirport ASC
)
go

/*==============================================================*/
/* Index: DepAirport_FK                                         */
/*==============================================================*/
create index DepAirport_FK on FactFlightActivity (
DepAirport ASC
)
go

/*==============================================================*/
/* Index: UniversalScheduledDepartureTime_FK                    */
/*==============================================================*/
create index UniversalScheduledDepartureTime_FK on FactFlightActivity (
UniversalScheduledDepartureTime ASC
)
go

/*==============================================================*/
/* Index: LocalActualDepartureTime_FK                           */
/*==============================================================*/
create index LocalActualDepartureTime_FK on FactFlightActivity (
LocalActualDepartureTime ASC
)
go

/*==============================================================*/
/* Index: LocalScheduledArrivalTime_FK                          */
/*==============================================================*/
create index LocalScheduledArrivalTime_FK on FactFlightActivity (
LocalScheduledArrivalTime ASC
)
go

/*==============================================================*/
/* Index: UniversalActualArrivalTime_FK                         */
/*==============================================================*/
create index UniversalActualArrivalTime_FK on FactFlightActivity (
UniversalActualArrivalTime ASC
)
go

/*==============================================================*/
/* Index: DifficultiesKey_FK                                    */
/*==============================================================*/
create index DifficultiesKey_FK on FactFlightActivity (
DifficultiesKey ASC
)
go

/*==============================================================*/
/* Index: FlightDate_FK                                         */
/*==============================================================*/
create index FlightDate_FK on FactFlightActivity (
FlightDate ASC
)
go

/*==============================================================*/
/* Index: CancellationCode_FK                                   */
/*==============================================================*/
create index CancellationCode_FK on FactFlightActivity (
CancellationCode ASC
)
go

/*==============================================================*/
/* Index: DepTimeBLK_FK                                         */
/*==============================================================*/
create index DepTimeBLK_FK on FactFlightActivity (
DepTimeBLK ASC
)
go

/*==============================================================*/
/* Index: ArrTimeBLK_FK                                         */
/*==============================================================*/
create index ArrTimeBLK_FK on FactFlightActivity (
ArrTimeBLK ASC
)
go

/*==============================================================*/
/* Index: DelayGroup_FK                                         */
/*==============================================================*/
create index DelayGroup_FK on FactFlightActivity (
DelayGroup ASC
)
go

/*==============================================================*/
/* Index: LocalActualArrivalTime_FK                             */
/*==============================================================*/
create index LocalActualArrivalTime_FK on FactFlightActivity (
LocalActualArrivalTime ASC
)
go

/*==============================================================*/
/* Index: LocalScheduledDepartureTime_FK                        */
/*==============================================================*/
create index LocalScheduledDepartureTime_FK on FactFlightActivity (
LocalScheduledDepartureTime ASC
)
go

/*==============================================================*/
/* Index: UniversalScheduledArrivalTime_FK                      */
/*==============================================================*/
create index UniversalScheduledArrivalTime_FK on FactFlightActivity (
UniversalScheduledArrivalTime ASC
)
go

/*==============================================================*/
/* Index: UniversalActualDepartureTime_FK                       */
/*==============================================================*/
create index UniversalActualDepartureTime_FK on FactFlightActivity (
UniversalActualDepartureTime ASC
)
go

/*==============================================================*/
/* Index: LocalScheduledDepartureDate_FK                        */
/*==============================================================*/
create index LocalScheduledDepartureDate_FK on FactFlightActivity (
LocalScheduledDepartureDate ASC
)
go

/*==============================================================*/
/* Index: UniversalActualArrivalDate_FK                         */
/*==============================================================*/
create index UniversalActualArrivalDate_FK on FactFlightActivity (
UniversalActualArrivalDate ASC
)
go

/*==============================================================*/
/* Index: UniversalScheduledDepartureDate_FK                    */
/*==============================================================*/
create index UniversalScheduledDepartureDate_FK on FactFlightActivity (
UniversalScheduledDepartureDate ASC
)
go

/*==============================================================*/
/* Index: UniversalActualDepartureDate_FK                       */
/*==============================================================*/
create index UniversalActualDepartureDate_FK on FactFlightActivity (
UniversalActualDepartureDate ASC
)
go

/*==============================================================*/
/* Index: LocalScheduledArrivalDate_FK                          */
/*==============================================================*/
create index LocalScheduledArrivalDate_FK on FactFlightActivity (
LocalScheduledArrivalDate ASC
)
go

/*==============================================================*/
/* Index: LocalActualDepartureDate_FK                           */
/*==============================================================*/
create index LocalActualDepartureDate_FK on FactFlightActivity (
LocalActualDepartureDate ASC
)
go

/*==============================================================*/
/* Index: UniversalScheduledArrivalDate_FK                      */
/*==============================================================*/
create index UniversalScheduledArrivalDate_FK on FactFlightActivity (
UniversalScheduledArrivalDate ASC
)
go

/*==============================================================*/
/* Index: LocalActualArrivalDate_FK                             */
/*==============================================================*/
create index LocalActualArrivalDate_FK on FactFlightActivity (
LocalActualArrivalDate ASC
)
go

alter table DimAirline
   add constraint FK_DIMAIRLI_AIRLINEWO_DIMAIRLI foreign key (AirlineWorldAreaCode)
      references DimAirlineWorldAreaCode (WordAreaCode)
go

alter table DimAirport
   add constraint FK_DIMAIRPO_AIRPORTWO_DIMAIRPO foreign key (AirportWorldAreaCode)
      references DimAirportWorldAreaCode (WordAreaCode)
go

alter table DimAirport
   add constraint FK_DIMAIRPO_DST_DIMDST foreign key (Dst)
      references DimDst (DstId)
go

alter table DimAirport
   add constraint FK_DIMAIRPO_STATECODE_DIMSTATE foreign key (StateCode)
      references DimState (StateCode)
go

alter table DimAirport
   add constraint FK_DIMAIRPO_STATEFIPS_DIMSTATE foreign key (StateFips)
      references DimStateFips (StateFipsCode)
go

alter table DimDate
   add constraint FK_DIMDATE_CALENDARS_DIMQUART foreign key (CalendarsQuarter)
      references DimQuarter (QuarterNumber)
go

alter table DimDate
   add constraint FK_DIMDATE_DAYOFWEEK_DIMDAYOF foreign key (DayOfWeekInDate)
      references DimDayOfWeek (DayOfWeekNumber)
go

alter table DimDate
   add constraint FK_DIMDATE_MONTH_DIMMONTH foreign key (Month)
      references DimMonth (MonthNumber)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_ARRAIRPOR_DIMAIRPO foreign key (ArrAirport)
      references DimAirport (AirportId)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_ARRTIMEBL_DIMBLKTI foreign key (ArrTimeBLK)
      references DimBLKTime (BLKTimeKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_CANCELLAT_DIMCANCE foreign key (CancellationCode)
      references DimCancellationReason (CancellationReasonKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_DELAYGROU_DIMDELAY foreign key (DelayGroup)
      references DimDelayGroup (DelayGroupKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_DEPAIRPOR_DIMAIRPO foreign key (DepAirport)
      references DimAirport (AirportId)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_DEPTIMEBL_DIMBLKTI foreign key (DepTimeBLK)
      references DimBLKTime (BLKTimeKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_DIFFICULT_DIMDIFFI foreign key (DifficultiesKey)
      references DimDifficulties (DifficultiesKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_FLIGHTDAT_DIMDATE foreign key (FlightDate)
      references DimDate (CalendarKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_LOCACTARRDAT_DIMDATE foreign key (LocalActualArrivalDate)
      references DimDate (CalendarKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_LOCACTARRTIM_DIMTIME foreign key (LocalActualArrivalTime)
      references DimTime (DateTimeKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_LOCACTDEPDAT_DIMDATE foreign key (LocalActualDepartureDate)
      references DimDate (CalendarKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_LOCACTDEPTIM_DIMTIME foreign key (LocalActualDepartureTime)
      references DimTime (DateTimeKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_LOCSCHARRDAT_DIMDATE foreign key (LocalScheduledArrivalDate)
      references DimDate (CalendarKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_LOCSCHARRTIM_DIMTIME foreign key (LocalScheduledArrivalTime)
      references DimTime (DateTimeKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_LOCSCHDEPDAT_DIMDATE foreign key (LocalScheduledDepartureDate)
      references DimDate (CalendarKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_LOCSCHDEPTIM_DIMTIME foreign key (LocalScheduledDepartureTime)
      references DimTime (DateTimeKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_OPERATING_DIMAIRLI foreign key (OperatingAirline)
      references DimAirline (AirlineId)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_UNIACTARRDAT_DIMDATE foreign key (UniversalActualArrivalDate)
      references DimDate (CalendarKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_UNIACTARRTIM_DIMTIME foreign key (UniversalActualArrivalTime)
      references DimTime (DateTimeKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_UNIACTDEPDAT_DIMDATE foreign key (UniversalActualDepartureDate)
      references DimDate (CalendarKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_UNIACTDEPTIM_DIMTIME foreign key (UniversalActualDepartureTime)
      references DimTime (DateTimeKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_UNISCHARRDAT_DIMDATE foreign key (UniversalScheduledArrivalDate)
      references DimDate (CalendarKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_UNISCHARRTIM_DIMTIME foreign key (UniversalScheduledArrivalTime)
      references DimTime (DateTimeKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_UNISCHDEPDAT_DIMDATE foreign key (UniversalScheduledDepartureDate)
      references DimDate (CalendarKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_UNISCHDEPTIM_DIMTIME foreign key (UniversalScheduledDepartureTime)
      references DimTime (DateTimeKey)
go

