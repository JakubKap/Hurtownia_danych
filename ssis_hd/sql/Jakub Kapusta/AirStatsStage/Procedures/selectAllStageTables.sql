USE [AirStatsStage]
GO

/****** Object:  StoredProcedure [dbo].[selectAllStageTables]    Script Date: 27.05.2019 20:59:54 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

/****** Script for SelectTopNRows command from SSMS  ******/
CREATE PROCEDURE [dbo].[selectAllStageTables]
AS

SELECT [Code]
      ,[Description]
  FROM [dbo].[AirlineId]
GO

