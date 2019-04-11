/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2012                    */
/* Created on:     11.04.2019 23:42:26                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimAirline') and o.name = 'FK_DIMAIRLI_RELATIONS_DIMAIRLI')
alter table DimAirline
   drop constraint FK_DIMAIRLI_RELATIONS_DIMAIRLI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimAirline') and o.name = 'FK_DIMAIRLI_RELATIONS_DIMWORLD')
alter table DimAirline
   drop constraint FK_DIMAIRLI_RELATIONS_DIMWORLD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimAirline') and o.name = 'FK_DIMAIRLI_RELATIONS_DIMAIRLI')
alter table DimAirline
   drop constraint FK_DIMAIRLI_RELATIONS_DIMAIRLI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimAirlineIataCode') and o.name = 'FK_DIMAIRLI_RELATIONS_DIMAIRLI')
alter table DimAirlineIataCode
   drop constraint FK_DIMAIRLI_RELATIONS_DIMAIRLI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimAirlineUsDotCode') and o.name = 'FK_DIMAIRLI_RELATIONS_DIMAIRLI')
alter table DimAirlineUsDotCode
   drop constraint FK_DIMAIRLI_RELATIONS_DIMAIRLI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimAirport') and o.name = 'FK_DIMAIRPO_RELATIONS_DIMWORLD')
alter table DimAirport
   drop constraint FK_DIMAIRPO_RELATIONS_DIMWORLD
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimAirport') and o.name = 'FK_DIMAIRPO_RELATIONS_DIMDST')
alter table DimAirport
   drop constraint FK_DIMAIRPO_RELATIONS_DIMDST
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimAirport') and o.name = 'FK_DIMAIRPO_RELATIONS_DIMAIRPO')
alter table DimAirport
   drop constraint FK_DIMAIRPO_RELATIONS_DIMAIRPO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimAirport') and o.name = 'FK_DIMAIRPO_RELATIONS_DIMAIRPO')
alter table DimAirport
   drop constraint FK_DIMAIRPO_RELATIONS_DIMAIRPO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimAirport') and o.name = 'FK_DIMAIRPO_RELATIONS_DIMAIRPO')
alter table DimAirport
   drop constraint FK_DIMAIRPO_RELATIONS_DIMAIRPO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimAirport') and o.name = 'FK_DIMAIRPO_RELATIONS_DIMAIRPO')
alter table DimAirport
   drop constraint FK_DIMAIRPO_RELATIONS_DIMAIRPO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimAirport') and o.name = 'FK_DIMAIRPO_RELATIONS_DIMSTATE')
alter table DimAirport
   drop constraint FK_DIMAIRPO_RELATIONS_DIMSTATE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimAirport') and o.name = 'FK_DIMAIRPO_RELATIONS_DIMSTATE')
alter table DimAirport
   drop constraint FK_DIMAIRPO_RELATIONS_DIMSTATE
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimAirportCityMarketId') and o.name = 'FK_DIMAIRPO_RELATIONS_DIMAIRPO')
alter table DimAirportCityMarketId
   drop constraint FK_DIMAIRPO_RELATIONS_DIMAIRPO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimAirportIataCode') and o.name = 'FK_DIMAIRPO_RELATIONS_DIMAIRPO')
alter table DimAirportIataCode
   drop constraint FK_DIMAIRPO_RELATIONS_DIMAIRPO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimAirportSeqId') and o.name = 'FK_DIMAIRPO_RELATIONS_DIMAIRPO')
alter table DimAirportSeqId
   drop constraint FK_DIMAIRPO_RELATIONS_DIMAIRPO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimAirportUsDotCode') and o.name = 'FK_DIMAIRPO_RELATIONS_DIMAIRPO')
alter table DimAirportUsDotCode
   drop constraint FK_DIMAIRPO_RELATIONS_DIMAIRPO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimCalendar') and o.name = 'FK_DIMCALEN_CALENDARS_DIMQUART')
alter table DimCalendar
   drop constraint FK_DIMCALEN_CALENDARS_DIMQUART
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimCalendar') and o.name = 'FK_DIMCALEN_RELATIONS_DIMMONTH')
alter table DimCalendar
   drop constraint FK_DIMCALEN_RELATIONS_DIMMONTH
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimCalendar') and o.name = 'FK_DIMCALEN_RELATIONS_DIMDAYOF')
alter table DimCalendar
   drop constraint FK_DIMCALEN_RELATIONS_DIMDAYOF
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimDateTime') and o.name = 'FK_DIMDATET_DATE_DIMCALEN')
alter table DimDateTime
   drop constraint FK_DIMDATET_DATE_DIMCALEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimQuarter') and o.name = 'FK_DIMQUART_QUARTER_E_DIMCALEN')
alter table DimQuarter
   drop constraint FK_DIMQUART_QUARTER_E_DIMCALEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('DimQuarter') and o.name = 'FK_DIMQUART_QUARTER_S_DIMCALEN')
alter table DimQuarter
   drop constraint FK_DIMQUART_QUARTER_S_DIMCALEN
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_ACTUAL AR_DIMDATET')
alter table FactFlightActivity
   drop constraint "FK_FACTFLIG_ACTUAL AR_DIMDATET"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_ACTUAL DE_DIMDATET')
alter table FactFlightActivity
   drop constraint "FK_FACTFLIG_ACTUAL DE_DIMDATET"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_ARRDEL15_DIMINDIC')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_ARRDEL15_DIMINDIC
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
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_CANCELLED_DIMINDIC')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_CANCELLED_DIMINDIC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_DELAYGROU_DIMDELAY')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_DELAYGROU_DIMDELAY
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_DEPDEL15_DIMINDIC')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_DEPDEL15_DIMINDIC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_DEPTIMEBL_DIMBLKTI')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_DEPTIMEBL_DIMBLKTI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_DIVERTED_DIMINDIC')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_DIVERTED_DIMINDIC
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_FLIGHT DA_DIMCALEN')
alter table FactFlightActivity
   drop constraint "FK_FACTFLIG_FLIGHT DA_DIMCALEN"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_LOTNISKOP_DIMAIRPO')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_LOTNISKOP_DIMAIRPO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_LOTNISKOW_DIMAIRPO')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_LOTNISKOW_DIMAIRPO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_RELATIONS_DIMAIRLI')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_RELATIONS_DIMAIRLI
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_SCHEDULED_DIMDATET')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_SCHEDULED_DIMDATET
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_SCHEDULED_DIMDATET')
alter table FactFlightActivity
   drop constraint FK_FACTFLIG_SCHEDULED_DIMDATET
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_WHEELS OF_DIMDATET')
alter table FactFlightActivity
   drop constraint "FK_FACTFLIG_WHEELS OF_DIMDATET"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('FactFlightActivity') and o.name = 'FK_FACTFLIG_WHEELS ON_DIMDATET')
alter table FactFlightActivity
   drop constraint "FK_FACTFLIG_WHEELS ON_DIMDATET"
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
            from  sysindexes
           where  id    = object_id('DimAirline')
            and   name  = 'Relationship_10_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimAirline.Relationship_10_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimAirline')
            and   name  = 'Relationship_8_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimAirline.Relationship_8_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimAirline')
            and   type = 'U')
   drop table DimAirline
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimAirlineIataCode')
            and   name  = 'Relationship_7_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimAirlineIataCode.Relationship_7_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimAirlineIataCode')
            and   type = 'U')
   drop table DimAirlineIataCode
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimAirlineUsDotCode')
            and   name  = 'Relationship_9_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimAirlineUsDotCode.Relationship_9_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimAirlineUsDotCode')
            and   type = 'U')
   drop table DimAirlineUsDotCode
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
            and   name  = 'Relationship_21_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimAirport.Relationship_21_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimAirport')
            and   name  = 'Relationship_19_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimAirport.Relationship_19_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimAirport')
            and   name  = 'Relationship_17_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimAirport.Relationship_17_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimAirport')
            and   name  = 'Relationship_15_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimAirport.Relationship_15_FK
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
            from  sysindexes
           where  id    = object_id('DimAirportCityMarketId')
            and   name  = 'Relationship_16_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimAirportCityMarketId.Relationship_16_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimAirportCityMarketId')
            and   type = 'U')
   drop table DimAirportCityMarketId
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimAirportIataCode')
            and   name  = 'Relationship_14_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimAirportIataCode.Relationship_14_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimAirportIataCode')
            and   type = 'U')
   drop table DimAirportIataCode
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimAirportSeqId')
            and   name  = 'Relationship_18_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimAirportSeqId.Relationship_18_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimAirportSeqId')
            and   type = 'U')
   drop table DimAirportSeqId
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimAirportUsDotCode')
            and   name  = 'Relationship_20_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimAirportUsDotCode.Relationship_20_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimAirportUsDotCode')
            and   type = 'U')
   drop table DimAirportUsDotCode
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimBLKTime')
            and   type = 'U')
   drop table DimBLKTime
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimCalendar')
            and   name  = 'Relationship_3_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimCalendar.Relationship_3_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimCalendar')
            and   name  = 'Relationship_2_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimCalendar.Relationship_2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimCalendar')
            and   name  = 'Calendars_quarter_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimCalendar.Calendars_quarter_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimCalendar')
            and   type = 'U')
   drop table DimCalendar
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimCancellationReason')
            and   type = 'U')
   drop table DimCancellationReason
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimDateTime')
            and   name  = 'Date_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimDateTime.Date_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimDateTime')
            and   type = 'U')
   drop table DimDateTime
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
           where  id = object_id('DimDst')
            and   type = 'U')
   drop table DimDst
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimIndicator')
            and   type = 'U')
   drop table DimIndicator
go

if exists (select 1
            from  sysobjects
           where  id = object_id('DimMonth')
            and   type = 'U')
   drop table DimMonth
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimQuarter')
            and   name  = 'Quarter_end_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimQuarter.Quarter_end_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('DimQuarter')
            and   name  = 'Quarter_start_FK'
            and   indid > 0
            and   indid < 255)
   drop index DimQuarter.Quarter_start_FK
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
           where  id = object_id('DimWorldAreaCode')
            and   type = 'U')
   drop table DimWorldAreaCode
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
            and   name  = 'Wheels Off_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity."Wheels Off_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'Wheels on_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity."Wheels on_FK"
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
            and   name  = 'DepDel15_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.DepDel15_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'Cancelled_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.Cancelled_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('FactFlightActivity')
            and   name  = 'ArrDel15_FK'
            and   indid > 0
            and   indid < 255)
   drop index FactFlightActivity.ArrDel15_FK
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
   IataAirlineCode      varchar(4)           not null,
   WordAreaCode         int                  not null,
   UsDotAirlineCode     int                  not null,
   ICAO                 varchar(4)           null,
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
/* Index: Relationship_8_FK                                     */
/*==============================================================*/
create index Relationship_8_FK on DimAirline (
IataAirlineCode ASC
)
go

/*==============================================================*/
/* Index: Relationship_10_FK                                    */
/*==============================================================*/
create index Relationship_10_FK on DimAirline (
UsDotAirlineCode ASC
)
go

/*==============================================================*/
/* Index: Relationship_11_FK                                    */
/*==============================================================*/
create index Relationship_11_FK on DimAirline (
WordAreaCode ASC
)
go

/*==============================================================*/
/* Table: DimAirlineIataCode                                    */
/*==============================================================*/
create table DimAirlineIataCode (
   IataAirlineCode      varchar(4)           not null,
   AirlineId            int                  null,
   AirlineName          varchar(100)         not null,
   constraint PK_DIMAIRLINEIATACODE primary key nonclustered (IataAirlineCode)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DimAirlineIataCode')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AirlineId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DimAirlineIataCode', 'column', 'AirlineId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Bêdzie to prawdopodobnie Airline Id z openflights
   ',
   'user', @CurrentUser, 'table', 'DimAirlineIataCode', 'column', 'AirlineId'
go

/*==============================================================*/
/* Index: Relationship_7_FK                                     */
/*==============================================================*/
create index Relationship_7_FK on DimAirlineIataCode (
AirlineId ASC
)
go

/*==============================================================*/
/* Table: DimAirlineUsDotCode                                   */
/*==============================================================*/
create table DimAirlineUsDotCode (
   UsDotAirlineCode     int                  not null,
   AirlineId            int                  null,
   AirlineName          varchar(100)         not null,
   constraint PK_DIMAIRLINEUSDOTCODE primary key nonclustered (UsDotAirlineCode)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DimAirlineUsDotCode')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'AirlineId')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DimAirlineUsDotCode', 'column', 'AirlineId'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   'Bêdzie to prawdopodobnie Airline Id z openflights
   ',
   'user', @CurrentUser, 'table', 'DimAirlineUsDotCode', 'column', 'AirlineId'
go

/*==============================================================*/
/* Index: Relationship_9_FK                                     */
/*==============================================================*/
create index Relationship_9_FK on DimAirlineUsDotCode (
AirlineId ASC
)
go

/*==============================================================*/
/* Table: DimAirport                                            */
/*==============================================================*/
create table DimAirport (
   AirportId            int                  not null,
   AirlineSeqId         int                  not null,
   StateCode            varchar(2)           null,
   UsDotAirportCode     int                  not null,
   StateCode2           varchar(2)           null,
   DstId                int                  not null,
   ArilineCityMarketId  int                  not null,
   WordAreaCode         int                  not null,
   IATA                 varchar(3)           not null,
   ICAO                 varchar(4)           null,
   CityName             varchar(100)         not null,
   StateName            varchar(20)          null,
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
WordAreaCode ASC
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
/* Index: Relationship_15_FK                                    */
/*==============================================================*/
create index Relationship_15_FK on DimAirport (
IATA ASC
)
go

/*==============================================================*/
/* Index: Relationship_17_FK                                    */
/*==============================================================*/
create index Relationship_17_FK on DimAirport (
ArilineCityMarketId ASC
)
go

/*==============================================================*/
/* Index: Relationship_19_FK                                    */
/*==============================================================*/
create index Relationship_19_FK on DimAirport (
AirlineSeqId ASC
)
go

/*==============================================================*/
/* Index: Relationship_21_FK                                    */
/*==============================================================*/
create index Relationship_21_FK on DimAirport (
UsDotAirportCode ASC
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
/* Table: DimAirportCityMarketId                                */
/*==============================================================*/
create table DimAirportCityMarketId (
   ArilineCityMarketId  int                  not null,
   AirportId            int                  null,
   AirportName          varchar(100)         not null,
   constraint PK_DIMAIRPORTCITYMARKETID primary key nonclustered (ArilineCityMarketId)
)
go

/*==============================================================*/
/* Index: Relationship_16_FK                                    */
/*==============================================================*/
create index Relationship_16_FK on DimAirportCityMarketId (
AirportId ASC
)
go

/*==============================================================*/
/* Table: DimAirportIataCode                                    */
/*==============================================================*/
create table DimAirportIataCode (
   IATA                 varchar(3)           not null,
   AirportId            int                  null,
   AirportName          varchar(100)         not null,
   constraint PK_DIMAIRPORTIATACODE primary key nonclustered (IATA)
)
go

if exists (select 1 from  sys.extended_properties
           where major_id = object_id('DimAirportIataCode') and minor_id = 0)
begin 
   declare @CurrentUser sysname 
select @CurrentUser = user_name() 
execute sp_dropextendedproperty 'MS_Description',  
   'user', @CurrentUser, 'table', 'DimAirportIataCode' 
 
end 


select @CurrentUser = user_name() 
execute sp_addextendedproperty 'MS_Description',  
   'Origin w transstats', 
   'user', @CurrentUser, 'table', 'DimAirportIataCode'
go

/*==============================================================*/
/* Index: Relationship_14_FK                                    */
/*==============================================================*/
create index Relationship_14_FK on DimAirportIataCode (
AirportId ASC
)
go

/*==============================================================*/
/* Table: DimAirportSeqId                                       */
/*==============================================================*/
create table DimAirportSeqId (
   AirlineSeqId         int                  not null,
   AirportId            int                  null,
   AirportName          varchar(100)         not null,
   constraint PK_DIMAIRPORTSEQID primary key nonclustered (AirlineSeqId)
)
go

/*==============================================================*/
/* Index: Relationship_18_FK                                    */
/*==============================================================*/
create index Relationship_18_FK on DimAirportSeqId (
AirportId ASC
)
go

/*==============================================================*/
/* Table: DimAirportUsDotCode                                   */
/*==============================================================*/
create table DimAirportUsDotCode (
   UsDotAirportCode     int                  not null,
   AirportId            int                  null,
   AirportName          varchar(100)         not null,
   constraint PK_DIMAIRPORTUSDOTCODE primary key nonclustered (UsDotAirportCode)
)
go

/*==============================================================*/
/* Index: Relationship_20_FK                                    */
/*==============================================================*/
create index Relationship_20_FK on DimAirportUsDotCode (
AirportId ASC
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
/* Table: DimCalendar                                           */
/*==============================================================*/
create table DimCalendar (
   CalendarKey          int                  not null,
   DayOfWeekNumber      int                  not null,
   QuarterNumber        int                  null,
   Year                 int                  not null,
   Day                  int                  null,
   constraint PK_DIMCALENDAR primary key nonclustered (CalendarKey)
)
go

if exists(select 1 from sys.extended_properties p where
      p.major_id = object_id('DimCalendar')
  and p.minor_id = (select c.column_id from sys.columns c where c.object_id = p.major_id and c.name = 'DayOfWeekNumber')
)
begin
   declare @CurrentUser sysname
select @CurrentUser = user_name()
execute sp_dropextendedproperty 'MS_Description', 
   'user', @CurrentUser, 'table', 'DimCalendar', 'column', 'DayOfWeekNumber'

end


select @CurrentUser = user_name()
execute sp_addextendedproperty 'MS_Description', 
   '1-9 (B³¹d w Lookup-Table - pominiêto 8  oraz dodano dodatkowoUnknown)',
   'user', @CurrentUser, 'table', 'DimCalendar', 'column', 'DayOfWeekNumber'
go

/*==============================================================*/
/* Index: Calendars_quarter_FK                                  */
/*==============================================================*/
create index Calendars_quarter_FK on DimCalendar (
QuarterNumber ASC
)
go



/*==============================================================*/
/* Index: Relationship_3_FK                                     */
/*==============================================================*/
create index Relationship_3_FK on DimCalendar (
DayOfWeekNumber ASC
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
/* Table: DimDateTime                                           */
/*==============================================================*/
create table DimDateTime (
   DateTimeKey          int                  not null,
   CalendarKey          int                  null,
   Hour                 int                  not null,
   Minute               int                  not null,
   constraint PK_DIMDATETIME primary key nonclustered (DateTimeKey)
)
go

/*==============================================================*/
/* Index: Date_FK                                               */
/*==============================================================*/
create index Date_FK on DimDateTime (
CalendarKey ASC
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
/* Table: DimIndicator                                          */
/*==============================================================*/
create table DimIndicator (
   IndicatorKey         int                  not null,
   Indication           varchar(50)          not null,
   constraint PK_DIMINDICATOR primary key nonclustered (IndicatorKey)
)
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
   EndDate              int                  not null,
   StartDate            int                  not null,
   Description          varchar(100)         not null,
   constraint PK_DIMQUARTER primary key nonclustered (QuarterNumber)
)
go

/*==============================================================*/
/* Index: Quarter_start_FK                                      */
/*==============================================================*/
create index Quarter_start_FK on DimQuarter (
StartDate ASC
)
go

/*==============================================================*/
/* Index: Quarter_end_FK                                        */
/*==============================================================*/
create index Quarter_end_FK on DimQuarter (
EndDate ASC
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
/* Table: DimWorldAreaCode                                      */
/*==============================================================*/
create table DimWorldAreaCode (
   WordAreaCode         int                  not null,
   Region               varchar(100)         not null,
   constraint PK_DIMWORLDAREACODE primary key nonclustered (WordAreaCode)
)
go

/*==============================================================*/
/* Table: FactFlightActivity                                    */
/*==============================================================*/
create table FactFlightActivity (
   FlightId             int                  not null,
   DelayGroupKey        int                  null,
   Diverted             int                  null,
   WheelsOff            int                  null,
   ArrDel15             int                  null,
   WheelsOn             int                  null,
   AirlineId            int                  not null,
   ActualArrTime        int                  not null,
   SchedDepTime         int                  not null,
   SchedArrTime         int                  not null,
   ActualDepTime        int                  not null,
   CancellationReasonKey varchar(5)           null,
   OriginAirportId      int                  not null,
   FlightDate           int                  not null,
   DestAirportId        int                  not null,
   Cancelled            int                  null,
   ArrTimeBLK           varchar(30)          null,
   DepTimeBLK           varchar(30)          null,
   DepDel15             int                  null,
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
/* Index: ArrDel15_FK                                           */
/*==============================================================*/
create index ArrDel15_FK on FactFlightActivity (
DepDel15 ASC
)
go

/*==============================================================*/
/* Index: Cancelled_FK                                          */
/*==============================================================*/
create index Cancelled_FK on FactFlightActivity (
ArrDel15 ASC
)
go

/*==============================================================*/
/* Index: DepDel15_FK                                           */
/*==============================================================*/
create index DepDel15_FK on FactFlightActivity (
Cancelled ASC
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
/* Index: "Wheels on_FK"                                        */
/*==============================================================*/
create index "Wheels on_FK" on FactFlightActivity (
WheelsOff ASC
)
go

/*==============================================================*/
/* Index: "Wheels Off_FK"                                       */
/*==============================================================*/
create index "Wheels Off_FK" on FactFlightActivity (
WheelsOn ASC
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

alter table DimAirline
   add constraint FK_DIMAIRLI_RELATIONS_DIMAIRLI foreign key (UsDotAirlineCode)
      references DimAirlineUsDotCode (UsDotAirlineCode)
go

alter table DimAirline
   add constraint FK_DIMAIRLI_RELATIONS_DIMWORLD foreign key (WordAreaCode)
      references DimWorldAreaCode (WordAreaCode)
go






alter table DimAirport
   add constraint FK_DIMAIRPO_RELATIONS_DIMWORLD foreign key (WordAreaCode)
      references DimWorldAreaCode (WordAreaCode)
go

alter table DimAirport
   add constraint FK_DIMAIRPO_RELATIONS_DIMDST foreign key (DstId)
      references DimDst (DstId)
go

alter table DimAirport
   add constraint FK_DIMAIRPO_RELATIONS_DIMAIRPO foreign key (IATA)
      references DimAirportIataCode (IATA)
go





alter table DimAirport
   add constraint FK_DIMAIRPO_RELATIONS_DIMSTATE foreign key (StateCode)
      references DimState (StateCode)
go



alter table DimCalendar
   add constraint FK_DIMCALEN_CALENDARS_DIMQUART foreign key (QuarterNumber)
      references DimQuarter (QuarterNumber)
go



alter table DimCalendar
   add constraint FK_DIMCALEN_RELATIONS_DIMDAYOF foreign key (DayOfWeekNumber)
      references DimDayOfWeek (DayOfWeekNumber)
go

alter table DimDateTime
   add constraint FK_DIMDATET_DATE_DIMCALEN foreign key (CalendarKey)
      references DimCalendar (CalendarKey)
go

alter table DimQuarter
   add constraint FK_DIMQUART_QUARTER_E_DIMCALEN foreign key (EndDate)
      references DimCalendar (CalendarKey)
go

alter table DimQuarter
   add constraint FK_DIMQUART_QUARTER_S_DIMCALEN foreign key (StartDate)
      references DimCalendar (CalendarKey)
go

alter table FactFlightActivity
   add constraint "FK_FACTFLIG_ACTUAL AR_DIMDATET" foreign key (ActualArrTime)
      references DimDateTime (DateTimeKey)
go

alter table FactFlightActivity
   add constraint "FK_FACTFLIG_ACTUAL DE_DIMDATET" foreign key (SchedDepTime)
      references DimDateTime (DateTimeKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_ARRDEL15_DIMINDIC foreign key (DepDel15)
      references DimIndicator (IndicatorKey)
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
   add constraint FK_FACTFLIG_CANCELLED_DIMINDIC foreign key (ArrDel15)
      references DimIndicator (IndicatorKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_DELAYGROU_DIMDELAY foreign key (DelayGroupKey)
      references DimDelayGroup (DelayGroupKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_DEPDEL15_DIMINDIC foreign key (Cancelled)
      references DimIndicator (IndicatorKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_DEPTIMEBL_DIMBLKTI foreign key (DepTimeBLK)
      references DimBLKTime (BLKTimeKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_DIVERTED_DIMINDIC foreign key (Diverted)
      references DimIndicator (IndicatorKey)
go

alter table FactFlightActivity
   add constraint "FK_FACTFLIG_FLIGHT DA_DIMCALEN" foreign key (FlightDate)
      references DimCalendar (CalendarKey)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_LOTNISKOP_DIMAIRPO foreign key (OriginAirportId)
      references DimAirport (AirportId)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_LOTNISKOW_DIMAIRPO foreign key (DestAirportId)
      references DimAirport (AirportId)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_RELATIONS_DIMAIRLI foreign key (AirlineId)
      references DimAirline (AirlineId)
go

alter table FactFlightActivity
   add constraint FK_FACTFLIG_SCHEDULED_DIMDATET foreign key (ActualDepTime)
      references DimDateTime (DateTimeKey)
go



alter table FactFlightActivity
   add constraint "FK_FACTFLIG_WHEELS OF_DIMDATET" foreign key (WheelsOn)
      references DimDateTime (DateTimeKey)
go

alter table FactFlightActivity
   add constraint "FK_FACTFLIG_WHEELS ON_DIMDATET" foreign key (WheelsOff)
      references DimDateTime (DateTimeKey)
go

