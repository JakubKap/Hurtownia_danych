USE [AirStatsDWH]
GO
/****** Object:  StoredProcedure [dbo].[insertDst]    Script Date: 18.05.2019 12:29:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertDst]
AS
BEGIN

INSERT INTO DimDst (DstId,DstType)
VALUES ('E','Europe')
INSERT INTO DimDst (DstId,DstType)
VALUES ('A','US/Canada')
INSERT INTO DimDst (DstId,DstType)
VALUES ('S','South America')
INSERT INTO DimDst (DstId,DstType)
VALUES ('O','Australia')
INSERT INTO DimDst (DstId,DstType)
VALUES ('Z','New Zealand')
INSERT INTO DimDst (DstId,DstType)
VALUES ('N','None')
INSERT INTO DimDst (DstId,DstType)
VALUES ('U','Unknown')

END
