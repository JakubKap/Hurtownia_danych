USE [AirStatsStage]
GO
/****** Object:  StoredProcedure [dbo].[deleteAllData]    Script Date: 08.06.2019 20:42:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/****** Script for SelectTopNRows command from SSMS  ******/

CREATE PROCEDURE [dbo].[deleteAllData]
AS
DELETE
  FROM [AirStatsStage].[dbo].[AirlineId]
  WHERE 1=1;

  DELETE
  FROM [AirStatsStage].[dbo].[Airlines]
  WHERE 1=1;

  DELETE
  FROM [AirStatsStage].[dbo].[Airport]
  WHERE 1=1;

  DELETE
  FROM [AirStatsStage].[dbo].[AirportId]
  WHERE 1=1;

  DELETE
  FROM [AirStatsStage].[dbo].[Airports]
  WHERE 1=1;

  DELETE
  FROM [AirStatsStage].[dbo].[AirportSeqId]
  WHERE 1=1;

  DELETE
  FROM [AirStatsStage].[dbo].[Cancellation]
  WHERE 1=1;

    DELETE
  FROM [AirStatsStage].[dbo].[CarrierHistory]
  WHERE 1=1;

    DELETE
  FROM [AirStatsStage].[dbo].[CityMarketId]
  WHERE 1=1;

    DELETE
  FROM [AirStatsStage].[dbo].[DepArrBlk]
  WHERE 1=1;

    DELETE
  FROM [AirStatsStage].[dbo].[DistanceGroup250]
  WHERE 1=1;

    DELETE
  FROM [AirStatsStage].[dbo].[FactFlightActivity]
  WHERE 1=1;

    DELETE
  FROM [AirStatsStage].[dbo].[Months]
  WHERE 1=1;

    DELETE
  FROM [AirStatsStage].[dbo].[OnTimeDelayGroups]
  WHERE 1=1;

    DELETE
  FROM [AirStatsStage].[dbo].[Quarters]
  WHERE 1=1;

    DELETE
  FROM [AirStatsStage].[dbo].[StateAbrAviation]
  WHERE 1=1;


    DELETE
  FROM [AirStatsStage].[dbo].[StateFips]
  WHERE 1=1;

    DELETE
  FROM [AirStatsStage].[dbo].[UniqueCarriers]
  WHERE 1=1;

    DELETE
  FROM [AirStatsStage].[dbo].[Weekdays]
  WHERE 1=1;

    DELETE
  FROM [AirStatsStage].[dbo].[WorldAreaCode]
  WHERE 1=1;

    DELETE
  FROM [AirStatsStage].[dbo].[YesNoResp]
  WHERE 1=1;
