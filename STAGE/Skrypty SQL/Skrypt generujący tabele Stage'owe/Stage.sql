/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     28.04.2019 16:52:22                          */
/*==============================================================*/


if exists (select 1
            from  sysobjects
           where  id = object_id('AirlineId')
            and   type = 'U')
   drop table AirlineId
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Airlines')
            and   type = 'U')
   drop table Airlines
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Airport')
            and   type = 'U')
   drop table Airport
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AirportId')
            and   type = 'U')
   drop table AirportId
go

if exists (select 1
            from  sysobjects
           where  id = object_id('AirportSeqId')
            and   type = 'U')
   drop table AirportSeqId
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Airports')
            and   type = 'U')
   drop table Airports
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Cancellation')
            and   type = 'U')
   drop table Cancellation
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CarrierHistory')
            and   type = 'U')
   drop table CarrierHistory
go

if exists (select 1
            from  sysobjects
           where  id = object_id('CityMarketId')
            and   type = 'U')
   drop table CityMarketId
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DepArrBlk')
            and   type = 'U')
   drop table DepArrBlk
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DistanceGroup250')
            and   type = 'U')
   drop table DistanceGroup250
go

if exists (select 1
            from  sysobjects
           where  id = object_id('FactFlightActivity')
            and   type = 'U')
   drop table FactFlightActivity
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Months')
            and   type = 'U')
   drop table Months
go

if exists (select 1
            from  sysobjects
           where  id = object_id('OnTimeDelayGroups')
            and   type = 'U')
   drop table OnTimeDelayGroups
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Quarters')
            and   type = 'U')
   drop table Quarters
go

if exists (select 1
            from  sysobjects
           where  id = object_id('StateAbrAviation')
            and   type = 'U')
   drop table StateAbrAviation
go

if exists (select 1
            from  sysobjects
           where  id = object_id('StateFips')
            and   type = 'U')
   drop table StateFips
go

if exists (select 1
            from  sysobjects
           where  id = object_id('UniqueCarriers')
            and   type = 'U')
   drop table UniqueCarriers
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Weekdays')
            and   type = 'U')
   drop table Weekdays
go

if exists (select 1
            from  sysobjects
           where  id = object_id('WorldAreaCode')
            and   type = 'U')
   drop table WorldAreaCode
go

if exists (select 1
            from  sysobjects
           where  id = object_id('YesNoResp')
            and   type = 'U')
   drop table YesNoResp
go

/*==============================================================*/
/* Table: AirlineId                                             */
/*==============================================================*/
create table AirlineId (
   Code                 varchar(1024)        null,
   Description          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: Airlines                                              */
/*==============================================================*/
create table Airlines (
   AirlineId            varchar(1024)        null,
   Name                 varchar(1024)        null,
   Alias                varchar(1024)        null,
   Iata                 varchar(1024)        null,
   Icao                 varchar(1024)        null,
   Callsign             varchar(1024)        null,
   Country              varchar(1024)        null,
   Active               varchar(1024)        null
)
go

/*==============================================================*/
/* Table: Airport                                               */
/*==============================================================*/
create table Airport (
   Code                 varchar(1024)        null,
   Description          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: AirportId                                             */
/*==============================================================*/
create table AirportId (
   Code                 varchar(1024)        null,
   Description          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: AirportSeqId                                          */
/*==============================================================*/
create table AirportSeqId (
   Code                 varchar(1024)        null,
   Description          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: Airports                                              */
/*==============================================================*/
create table Airports (
   AirportId            varchar(1024)        null,
   Name                 varchar(1024)        null,
   City                 varchar(1024)        null,
   Country              varchar(1024)        null,
   Iata                 varchar(1024)        null,
   Icao                 varchar(1024)        null,
   Latitude             varchar(1024)        null,
   Longitude            varchar(1024)        null,
   Altitude             varchar(1024)        null,
   TimeZone             varchar(1024)        null,
   Dst                  varchar(1024)        null,
   Tz                   varchar(1024)        null,
   Type                 varchar(1024)        null,
   Source               varchar(1024)        null
)
go

/*==============================================================*/
/* Table: Cancellation                                          */
/*==============================================================*/
create table Cancellation (
   Code                 varchar(1024)        null,
   Description          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: CarrierHistory                                        */
/*==============================================================*/
create table CarrierHistory (
   Code                 varchar(1024)        null,
   Description          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: CityMarketId                                          */
/*==============================================================*/
create table CityMarketId (
   Code                 varchar(1024)        null,
   Description          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: DepArrBlk                                             */
/*==============================================================*/
create table DepArrBlk (
   Code                 varchar(1024)        null,
   Description          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: DistanceGroup250                                      */
/*==============================================================*/
create table DistanceGroup250 (
   Code                 varchar(1024)        null,
   Description          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: FactFlightActivity                                    */
/*==============================================================*/
create table FactFlightActivity (
   Year                 varchar(1024)        null,
   Quarter              varchar(1024)        null,
   Month                varchar(1024)        null,
   DayOfMonth           varchar(1024)        null,
   DayOfWeek            varchar(1024)        null,
   FlDate               varchar(1024)        null,
   OpUniqueCarrier      varchar(1024)        null,
   OpCarrierAirlineId   varchar(1024)        null,
   OpCarrier            varchar(1024)        null,
   TailNum              varchar(1024)        null,
   OpCarrierFlNum       varchar(1024)        null,
   OriginAirportId      varchar(1024)        null,
   OriginAirportSeqId   varchar(1024)        null,
   Origin               varchar(1024)        null,
   OriginCityName       varchar(1024)        null,
   OriginStateAbr       varchar(1024)        null,
   OriginStateFips      varchar(1024)        null,
   OriginStateNm        varchar(1024)        null,
   OriginWac            varchar(1024)        null,
   DestAirportId        varchar(1024)        null,
   DestAirportSeqId     varchar(1024)        null,
   Dest                 varchar(1024)        null,
   DestCityName         varchar(1024)        null,
   DestStateAbr         varchar(1024)        null,
   DestStateFips        varchar(1024)        null,
   DestStateNm          varchar(1024)        null,
   DestWac              varchar(1024)        null,
   CrsDepTime           varchar(1024)        null,
   DepTime              varchar(1024)        null,
   DepDelay             varchar(1024)        null,
   DepDelayNew          varchar(1024)        null,
   DepDel15             varchar(1024)        null,
   DepDelayGroup        varchar(1024)        null,
   DepTimeBlk           varchar(1024)        null,
   TaxiOut              varchar(1024)        null,
   WheelsOff            varchar(1024)        null,
   WheelsOn             varchar(1024)        null,
   TaxiIn               varchar(1024)        null,
   CrsArrTime           varchar(1024)        null,
   ArrTime              varchar(1024)        null,
   ArrDelay             varchar(1024)        null,
   ArrDelayNew          varchar(1024)        null,
   ArrDel15             varchar(1024)        null,
   ArrDelayGroup        varchar(1024)        null,
   ArrTimeBlk           varchar(1024)        null,
   Cancelled            varchar(1024)        null,
   CancellationCode     varchar(1024)        null,
   Diverted             varchar(1024)        null,
   CrsElapsedTime       varchar(1024)        null,
   ActualElapsedTime    varchar(1024)        null,
   AirTime              varchar(1024)        null,
   Flights              varchar(1024)        null,
   Distance             varchar(1024)        null,
   DistanceGroup        varchar(1024)        null,
   CarrierDelay         varchar(1024)        null,
   WeatherDelay         varchar(1024)        null,
   NasDelay             varchar(1024)        null,
   SecurityDelay        varchar(1024)        null,
   LateAircraftDelay    varchar(1024)        null
)
go

/*==============================================================*/
/* Table: Months                                                */
/*==============================================================*/
create table Months (
   Code                 varchar(1024)        null,
   Description          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: OnTimeDelayGroups                                     */
/*==============================================================*/
create table OnTimeDelayGroups (
   Code                 varchar(1024)        null,
   Description          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: Quarters                                              */
/*==============================================================*/
create table Quarters (
   Code                 varchar(1024)        null,
   Description          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: StateAbrAviation                                      */
/*==============================================================*/
create table StateAbrAviation (
   Code                 varchar(1024)        null,
   Description          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: StateFips                                             */
/*==============================================================*/
create table StateFips (
   Code                 varchar(1024)        null,
   Description          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: UniqueCarriers                                        */
/*==============================================================*/
create table UniqueCarriers (
   Code                 varchar(1024)        null,
   Description          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: Weekdays                                              */
/*==============================================================*/
create table Weekdays (
   Code                 varchar(1024)        null,
   Description          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: WorldAreaCode                                         */
/*==============================================================*/
create table WorldAreaCode (
   Code                 varchar(1024)        null,
   Description          varchar(1024)        null
)
go

/*==============================================================*/
/* Table: YesNoResp                                             */
/*==============================================================*/
create table YesNoResp (
   Code                 varchar(1024)        null,
   Description          varchar(1024)        null
)
go

