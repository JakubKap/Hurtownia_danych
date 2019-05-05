/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     05.05.2019 12:55:10                          */
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
   where r.fkeyid = object_id('DimAirport') and o.name = 'FK_DIMAIRPO_RELATIONS_DIMSTATEFIPS')
alter table DimAirport
   drop constraint FK_DIMAIRPO_RELATIONS_DIMSTATEFIPS
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
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_FLIGHT DA_DIMDATE')
alter table FactFlightActivity
   drop constraint "FK_FACTFLIG_FLIGHT DA_DIMDATE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_LOCAL ACT_DIMDATE')
alter table FactFlightActivity
   drop constraint "FK_FACTFLIG_LOCAL ACT_DIMDATE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_LOCAL ACT_DIMTIME')
alter table FactFlightActivity
   drop constraint "FK_FACTFLIG_LOCAL ACT_DIMTIME"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_LOCAL ACT_DIMDATE')
alter table FactFlightActivity
   drop constraint "FK_FACTFLIG_LOCAL ACT_DIMDATE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_LOCAL ACT_DIMTIME')
alter table FactFlightActivity
   drop constraint "FK_FACTFLIG_LOCAL ACT_DIMTIME"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_LOCAL SCH_DIMDATE')
alter table FactFlightActivity
   drop constraint "FK_FACTFLIG_LOCAL SCH_DIMDATE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_LOCAL SCH_DIMTIME')
alter table FactFlightActivity
   drop constraint "FK_FACTFLIG_LOCAL SCH_DIMTIME"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_LOCAL SCH_DIMDATE')
alter table FactFlightActivity
   drop constraint "FK_FACTFLIG_LOCAL SCH_DIMDATE"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_LOCAL SCH_DIMTIME')
alter table FactFlightActivity
   drop constraint "FK_FACTFLIG_LOCAL SCH_DIMTIME"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_OPERATING_DIMAIRLI')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_OPERATING_DIMAIRLI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_UNIVERSAL_DIMDATE')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_UNIVERSAL_DIMDATE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_UNIVERSAL_DIMTIME')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_UNIVERSAL_DIMTIME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_UNIVERSAL_DIMDATE')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_UNIVERSAL_DIMDATE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_UNIVERSAL_DIMTIME')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_UNIVERSAL_DIMTIME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_UNIVERSAL_DIMDATE')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_UNIVERSAL_DIMDATE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_UNIVERSAL_DIMTIME')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_UNIVERSAL_DIMTIME
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_UNIVERSAL_DIMDATE')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_UNIVERSAL_DIMDATE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_UNIVERSAL_DIMTIME')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_UNIVERSAL_DIMTIME
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimAirline')
            and   name  = 'Relationship_11_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimAirline.Relationship_11_FK
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
            and   name  = 'Relationship_23_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimAirport.Relationship_23_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimAirport')
            and   name  = 'Relationship_22_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimAirport.Relationship_22_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimAirport')
            and   name  = 'Relationship_13_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimAirport.Relationship_13_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimAirport')
            and   name  = 'Relationship_12_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimAirport.Relationship_12_FK
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
            and   name  = 'Relationship_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimDate.Relationship_3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimDate')
            and   name  = 'Relationship_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimDate.Relationship_2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimDate')
            and   name  = 'Calendars_quarter_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimDate.Calendars_quarter_FK
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
            and   name  = 'Local actual arrival date_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity."Local actual arrival date_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'Universal scheduled arrival date_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity."Universal scheduled arrival date_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'Local actual departure date_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity."Local actual departure date_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'Local scheduled arrival date_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity."Local scheduled arrival date_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'Universal actual departure date_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity."Universal actual departure date_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'Universal scheduled departure date_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity."Universal scheduled departure date_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'Universal actual arrival date_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity."Universal actual arrival date_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'Local scheduled departure date_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity."Local scheduled departure date_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'Universal actual departure time_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity."Universal actual departure time_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'Universal scheduled arrival time_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity."Universal scheduled arrival time_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'Local scheduled departure time_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity."Local scheduled departure time_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'Local actual arrival time_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity."Local actual arrival time_FK"
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
            and   name  = 'Flight Date_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity."Flight Date_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'Diverted_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.Diverted_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'Actual arrival time_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity."Actual arrival time_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'Scheduled arrival time_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity."Scheduled arrival time_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'Actual departure time_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity."Actual departure time_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'Scheduled department time_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity."Scheduled department time_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'LotniskoWylotu_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.LotniskoWylotu_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'LotniskoPrzylotu_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.LotniskoPrzylotu_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'Relationship_5_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.Relationship_5_FK
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
   WordAreaCode         int                  not null,
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
/* Index: Relationship_11_FK                                    */
/*==============================================================*/
create index Relationship_11_FK on DimAirline (
WordAreaCode ASC
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
   StateCode2           varchar(2)           null,
   DstId                int                  not null,
   WordAreaCode2        int                  not null,
   AirportUsDotCode     int                  null,
   AirportSeqId         int                  null,
   AirportCityMarketId  int                  null,
   AirportIata          char(10)             null,
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
/* Index: Relationship_12_FK                                    */
/*==============================================================*/
create index Relationship_12_FK on DimAirport (

)
go

/*==============================================================*/
/* Index: Relationship_13_FK                                    */
/*==============================================================*/
create index Relationship_13_FK on DimAirport (
DstId ASC
)
go

/*==============================================================*/
/* Index: Relationship_22_FK                                    */
/*==============================================================*/
create index Relationship_22_FK on DimAirport (
StateCode ASC
)
go

/*==============================================================*/
/* Index: Relationship_23_FK                                    */
/*==============================================================*/
create index Relationship_23_FK on DimAirport (
StateCode2 ASC
)
go

/*==============================================================*/
/* Table: DimAirportWorldAreaCode                               */
/*==============================================================*/
create table DimAirportWorldAreaCode (
   WordAreaCode2        int                  not null,
   Region               varchar(100)         not null,
   constraint PK_DIMAIRPORTWORLDAREACODE primary key nonclustered (WordAreaCode2)
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
   DayOfWeekNumber      int                  not null,
   QuarterNumber        int                  null,
   Year                 int                  not null,
   Day                  int                  null,
   constraint PK_DIMDATE primary key nonclustered (CalendarKey)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DimDate')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DayOfWeekNumber')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DimDate', 'column', 'DayOfWeekNumber'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '1-9 (B³¹d w Lookup-Table - pominiêto 8  oraz dodano dodatkowoUnknown)',
   'user', @CurrentUser, 'table', 'DimDate', 'column', 'DayOfWeekNumber'
go

/*==============================================================*/
/* Index: Calendars_quarter_FK                                  */
/*==============================================================*/
create index Calendars_quarter_FK on DimDate (
QuarterNumber ASC
)
go

/*==============================================================*/
/* Index: Relationship_2_FK                                     */
/*==============================================================*/
create index Relationship_2_FK on DimDate (

)
go

/*==============================================================*/
/* Index: Relationship_3_FK                                     */
/*==============================================================*/
create index Relationship_3_FK on DimDate (
DayOfWeekNumber ASC
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
   MonthName            varchar(50)          not null
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
   StateCode2           varchar(2)           not null,
   StateName            varchar(20)          not null,
   constraint PK_DIMSTATEFIPS primary key nonclustered (StateCode2)
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
   DateTimeKey          int                  not null,
   DelayGroupKey        int                  null,
   Diverted             int                  null,
   Dim_DateTimeKey      int                  not null,
   AirlineId            int                  not null,
   ActualArrTime        int                  not null,
   CalendarKey          int                  null,
   SchedDepTime         int                  not null,
   Dim_CalendarKey      int                  null,
   SchedArrTime         int                  not null,
   ActualDepTime        int                  not null,
   CancellationReasonKey varchar(5)           null,
   Dim_CalendarKey2     int                  null,
   OriginAirportId      int                  not null,
   Dim_CalendarKey3     int                  null,
   FlightDate           int                  not null,
   Dim_DateTimeKey6     int                  not null,
   DestAirportId        int                  not null,
   Dim_CalendarKey5     int                  null,
   Dim_CalendarKey6     int                  null,
   Dim_CalendarKey7     int                  null,
   ArrTimeBLK           varchar(30)          null,
   DepTimeBLK           varchar(30)          null,
   Dim_DateTimeKey7     int                  not null,
   Dim_CalendarKey8     int                  null,
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
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AirlineId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'AirlineId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Bêdzie to prawdopodobnie Airline Id z openflights
   ',
   'user', @CurrentUser, 'table', 'FactFlightActivity', 'column', 'AirlineId'
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
/* Index: Relationship_5_FK                                     */
/*==============================================================*/
create index Relationship_5_FK on FactFlightActivity (
AirlineId ASC
)
go

/*==============================================================*/
/* Index: LotniskoPrzylotu_FK                                   */
/*==============================================================*/
create index LotniskoPrzylotu_FK on FactFlightActivity (
OriginAirportId ASC
)
go

/*==============================================================*/
/* Index: LotniskoWylotu_FK                                     */
/*==============================================================*/
create index LotniskoWylotu_FK on FactFlightActivity (
DestAirportId ASC
)
go

/*==============================================================*/
/* Index: "Scheduled department time_FK"                        */
/*==============================================================*/
create index "Scheduled department time_FK" on FactFlightActivity (
SchedArrTime ASC
)
go

/*==============================================================*/
/* Index: "Actual departure time_FK"                            */
/*==============================================================*/
create index "Actual departure time_FK" on FactFlightActivity (
SchedDepTime ASC
)
go

/*==============================================================*/
/* Index: "Scheduled arrival time_FK"                           */
/*==============================================================*/
create index "Scheduled arrival time_FK" on FactFlightActivity (
ActualDepTime ASC
)
go

/*==============================================================*/
/* Index: "Actual arrival time_FK"                              */
/*==============================================================*/
create index "Actual arrival time_FK" on FactFlightActivity (
ActualArrTime ASC
)
go

/*==============================================================*/
/* Index: Diverted_FK                                           */
/*==============================================================*/
create index Diverted_FK on FactFlightActivity (
Diverted ASC
)
go

/*==============================================================*/
/* Index: "Flight Date_FK"                                      */
/*==============================================================*/
create index "Flight Date_FK" on FactFlightActivity (
FlightDate ASC
)
go

/*==============================================================*/
/* Index: CancellationCode_FK                                   */
/*==============================================================*/
create index CancellationCode_FK on FactFlightActivity (
CancellationReasonKey ASC
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
DelayGroupKey ASC
)
go

/*==============================================================*/
/* Index: "Local actual arrival time_FK"                        */
/*==============================================================*/
create index "Local actual arrival time_FK" on FactFlightActivity (
Dim_DateTimeKey7 ASC
)
go

/*==============================================================*/
/* Index: "Local scheduled departure time_FK"                   */
/*==============================================================*/
create index "Local scheduled departure time_FK" on FactFlightActivity (
DateTimeKey ASC
)
go

/*==============================================================*/
/* Index: "Universal scheduled arrival time_FK"                 */
/*==============================================================*/
create index "Universal scheduled arrival time_FK" on FactFlightActivity (
Dim_DateTimeKey ASC
)
go

/*==============================================================*/
/* Index: "Universal actual departure time_FK"                  */
/*==============================================================*/
create index "Universal actual departure time_FK" on FactFlightActivity (
Dim_DateTimeKey6 ASC
)
go

/*==============================================================*/
/* Index: "Local scheduled departure date_FK"                   */
/*==============================================================*/
create index "Local scheduled departure date_FK" on FactFlightActivity (
Dim_CalendarKey ASC
)
go

/*==============================================================*/
/* Index: "Universal actual arrival date_FK"                    */
/*==============================================================*/
create index "Universal actual arrival date_FK" on FactFlightActivity (
CalendarKey ASC
)
go

/*==============================================================*/
/* Index: "Universal scheduled departure date_FK"               */
/*==============================================================*/
create index "Universal scheduled departure date_FK" on FactFlightActivity (
Dim_CalendarKey7 ASC
)
go

/*==============================================================*/
/* Index: "Universal actual departure date_FK"                  */
/*==============================================================*/
create index "Universal actual departure date_FK" on FactFlightActivity (
Dim_CalendarKey3 ASC
)
go

/*==============================================================*/
/* Index: "Local scheduled arrival date_FK"                     */
/*==============================================================*/
create index "Local scheduled arrival date_FK" on FactFlightActivity (
Dim_CalendarKey6 ASC
)
go

/*==============================================================*/
/* Index: "Local actual departure date_FK"                      */
/*==============================================================*/
create index "Local actual departure date_FK" on FactFlightActivity (
Dim_CalendarKey5 ASC
)
go

/*==============================================================*/
/* Index: "Universal scheduled arrival date_FK"                 */
/*==============================================================*/
create index "Universal scheduled arrival date_FK" on FactFlightActivity (
Dim_CalendarKey2 ASC
)
go

/*==============================================================*/
/* Index: "Local actual arrival date_FK"                        */
/*==============================================================*/
create index "Local actual arrival date_FK" on FactFlightActivity (
Dim_CalendarKey8 ASC
)
go

alter table DimAirline
   add constraint FK_DIMAIRLI_AIRLINEWO_DIMAIRLI foreign key (WordAreaCode)
      references DimAirlineWorldAreaCode (WordAreaCode)
go

alter table DimAirport
   add constraint FK_DIMAIRPO_AIRPORTWO_DIMAIRPO foreign key (WordAreaCode2)
      references DimAirportWorldAreaCode (WordAreaCode2)
go

alter table DimAirport
   add constraint FK_DIMAIRPO_DST_DIMDST foreign key (DstId)
      references DimDst (DstId)
go

alter table DimAirport
   add constraint FK_DIMAIRPO_STATECODE_DIMSTATE foreign key (StateCode)
      references DimState (StateCode)
go

alter table DimAirport
   add constraint FK_DIMAIRPO_RELATIONS_DIMSTATEFIPS foreign key (StateCode2)
      references DimStateFips (StateCode2)
go

alter table DimDate
   add constraint FK_DIMDATE_CALENDARS_DIMQUART foreign key (QuarterNumber)
      references DimQuarter (QuarterNumber)
go

alter table DimDate
   add constraint FK_DIMDATE_DAYOFWEEK_DIMDAYOF foreign key (DayOfWeekNumber)
      references DimDayOfWeek (DayOfWeekNumber)
go

alter table DimDate
   add constraint FK_DIMDATE_MONTH_DIMMONTH foreign key ()
      references DimMonth
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_ARRAIRPOR_DIMAIRPO foreign key (OriginAirportId)
      references DimAirport (AirportId)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_ARRTIMEBL_DIMBLKTI foreign key (ArrTimeBLK)
      references DimBLKTime (BLKTimeKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_CANCELLAT_DIMCANCE foreign key (CancellationReasonKey)
      references DimCancellationReason (CancellationReasonKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_DELAYGROU_DIMDELAY foreign key (DelayGroupKey)
      references DimDelayGroup (DelayGroupKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_DEPAIRPOR_DIMAIRPO foreign key (DestAirportId)
      references DimAirport (AirportId)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_DEPTIMEBL_DIMBLKTI foreign key (DepTimeBLK)
      references DimBLKTime (BLKTimeKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_DIFFICULT_DIMDIFFI foreign key (Diverted)
      references DimDifficulties (DifficultiesKey)
go

alter table FactFlightActivity
   add constraint "FK_FACTFLIG_FLIGHT DA_DIMDATE" foreign key (FlightDate)
      references DimDate (CalendarKey)
go

alter table FactFlightActivity
   add constraint "FK_FACTFLIG_LOCAL ACT_DIMDATE" foreign key (Dim_CalendarKey8)
      references DimDate (CalendarKey)
go

alter table FactFlightActivity
   add constraint "FK_FACTFLIG_LOCAL ACT_DIMTIME" foreign key (Dim_DateTimeKey7)
      references DimTime (DateTimeKey)
go

alter table FactFlightActivity
   add constraint "FK_FACTFLIG_LOCAL ACT_DIMDATE" foreign key (Dim_CalendarKey5)
      references DimDate (CalendarKey)
go

alter table FactFlightActivity
   add constraint "FK_FACTFLIG_LOCAL ACT_DIMTIME" foreign key (SchedDepTime)
      references DimTime (DateTimeKey)
go

alter table FactFlightActivity
   add constraint "FK_FACTFLIG_LOCAL SCH_DIMDATE" foreign key (Dim_CalendarKey6)
      references DimDate (CalendarKey)
go

alter table FactFlightActivity
   add constraint "FK_FACTFLIG_LOCAL SCH_DIMTIME" foreign key (ActualDepTime)
      references DimTime (DateTimeKey)
go

alter table FactFlightActivity
   add constraint "FK_FACTFLIG_LOCAL SCH_DIMDATE" foreign key (Dim_CalendarKey)
      references DimDate (CalendarKey)
go

alter table FactFlightActivity
   add constraint "FK_FACTFLIG_LOCAL SCH_DIMTIME" foreign key (DateTimeKey)
      references DimTime (DateTimeKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_OPERATING_DIMAIRLI foreign key (AirlineId)
      references DimAirline (AirlineId)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_UNIVERSAL_DIMDATE foreign key (CalendarKey)
      references DimDate (CalendarKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_UNIVERSAL_DIMTIME foreign key (ActualArrTime)
      references DimTime (DateTimeKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_UNIVERSAL_DIMDATE foreign key (Dim_CalendarKey3)
      references DimDate (CalendarKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_UNIVERSAL_DIMTIME foreign key (Dim_DateTimeKey6)
      references DimTime (DateTimeKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_UNIVERSAL_DIMDATE foreign key (Dim_CalendarKey2)
      references DimDate (CalendarKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_UNIVERSAL_DIMTIME foreign key (Dim_DateTimeKey)
      references DimTime (DateTimeKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_UNIVERSAL_DIMDATE foreign key (Dim_CalendarKey7)
      references DimDate (CalendarKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_UNIVERSAL_DIMTIME foreign key (SchedArrTime)
      references DimTime (DateTimeKey)
go

