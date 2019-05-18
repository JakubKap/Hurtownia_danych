USE [AirStatsDWH]
GO
/****** Object:  StoredProcedure [dbo].[insertDifficulties]    Script Date: 18.05.2019 12:28:24 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[insertDifficulties]
@YesNo1 varchar(100),
@YesNo2 varchar(100)
AS
BEGIN
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted)
VALUES (1,@YesNo1,@YesNo1,@YesNo1,@YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted)
VALUES (2,@YesNo1,@YesNo1,@YesNo1,@YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted)
VALUES (3,@YesNo1,@YesNo1,@YesNo2,@YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted)
VALUES (4,@YesNo1,@YesNo1,@YesNo2,@YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted)
VALUES (5,@YesNo1,@YesNo2,@YesNo1,@YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted)
VALUES (6,@YesNo1,@YesNo2,@YesNo1,@YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted)
VALUES (7,@YesNo1,@YesNo2,@YesNo2,@YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted)
VALUES (8,@YesNo1,@YesNo2,@YesNo2,@YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted)
VALUES (9,@YesNo2,@YesNo1,@YesNo1,@YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted)
VALUES (10,@YesNo2,@YesNo1,@YesNo1,@YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted)
VALUES (11,@YesNo2,@YesNo1,@YesNo2,@YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted)
VALUES (12,@YesNo2,@YesNo1,@YesNo2,@YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted)
VALUES (13,@YesNo2,@YesNo2,@YesNo1,@YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted)
VALUES (14,@YesNo2,@YesNo2,@YesNo1,@YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted)
VALUES (15,@YesNo2,@YesNo2,@YesNo2,@YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted)
VALUES (16,@YesNo2,@YesNo2,@YesNo2,@YesNo2)


END
