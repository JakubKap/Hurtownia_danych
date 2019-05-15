-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE insertDst
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
GO
