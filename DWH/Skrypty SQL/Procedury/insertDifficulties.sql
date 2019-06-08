USE [AirStatsDWH]
GO

/****** Object:  StoredProcedure [dbo].[insertDifficulties]    Script Date: 08.06.2019 21:27:33 ******/
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

DECLARE @YesNo3 varchar(100)='Unknown'

INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (1, @YesNo1, @YesNo1, @YesNo1, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (2, @YesNo1, @YesNo1, @YesNo1, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (3, @YesNo1, @YesNo1, @YesNo1, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (4, @YesNo1, @YesNo1, @YesNo2, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (5, @YesNo1, @YesNo1, @YesNo2, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (6, @YesNo1, @YesNo1, @YesNo2, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (7, @YesNo1, @YesNo1, @YesNo3, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (8, @YesNo1, @YesNo1, @YesNo3, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (9, @YesNo1, @YesNo1, @YesNo3, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (10, @YesNo1, @YesNo2, @YesNo1, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (11, @YesNo1, @YesNo2, @YesNo1, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (12, @YesNo1, @YesNo2, @YesNo1, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (13, @YesNo1, @YesNo2, @YesNo2, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (14, @YesNo1, @YesNo2, @YesNo2, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (15, @YesNo1, @YesNo2, @YesNo2, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (16, @YesNo1, @YesNo2, @YesNo3, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (17, @YesNo1, @YesNo2, @YesNo3, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (18, @YesNo1, @YesNo2, @YesNo3, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (19, @YesNo1, @YesNo3, @YesNo1, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (20, @YesNo1, @YesNo3, @YesNo1, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (21, @YesNo1, @YesNo3, @YesNo1, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (22, @YesNo1, @YesNo3, @YesNo2, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (23, @YesNo1, @YesNo3, @YesNo2, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (24, @YesNo1, @YesNo3, @YesNo2, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (25, @YesNo1, @YesNo3, @YesNo3, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (26, @YesNo1, @YesNo3, @YesNo3, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (27, @YesNo1, @YesNo3, @YesNo3, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (28, @YesNo2, @YesNo1, @YesNo1, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (29, @YesNo2, @YesNo1, @YesNo1, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (30, @YesNo2, @YesNo1, @YesNo1, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (31, @YesNo2, @YesNo1, @YesNo2, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (32, @YesNo2, @YesNo1, @YesNo2, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (33, @YesNo2, @YesNo1, @YesNo2, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (34, @YesNo2, @YesNo1, @YesNo3, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (35, @YesNo2, @YesNo1, @YesNo3, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (36, @YesNo2, @YesNo1, @YesNo3, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (37, @YesNo2, @YesNo2, @YesNo1, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (38, @YesNo2, @YesNo2, @YesNo1, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (39, @YesNo2, @YesNo2, @YesNo1, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (40, @YesNo2, @YesNo2, @YesNo2, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (41, @YesNo2, @YesNo2, @YesNo2, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (42, @YesNo2, @YesNo2, @YesNo2, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (43, @YesNo2, @YesNo2, @YesNo3, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (44, @YesNo2, @YesNo2, @YesNo3, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (45, @YesNo2, @YesNo2, @YesNo3, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (46, @YesNo2, @YesNo3, @YesNo1, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (47, @YesNo2, @YesNo3, @YesNo1, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (48, @YesNo2, @YesNo3, @YesNo1, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (49, @YesNo2, @YesNo3, @YesNo2, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (50, @YesNo2, @YesNo3, @YesNo2, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (51, @YesNo2, @YesNo3, @YesNo2, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (52, @YesNo2, @YesNo3, @YesNo3, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (53, @YesNo2, @YesNo3, @YesNo3, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (54, @YesNo2, @YesNo3, @YesNo3, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (55, @YesNo3, @YesNo1, @YesNo1, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (56, @YesNo3, @YesNo1, @YesNo1, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (57, @YesNo3, @YesNo1, @YesNo1, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (58, @YesNo3, @YesNo1, @YesNo2, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (59, @YesNo3, @YesNo1, @YesNo2, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (60, @YesNo3, @YesNo1, @YesNo2, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (61, @YesNo3, @YesNo1, @YesNo3, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (62, @YesNo3, @YesNo1, @YesNo3, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (63, @YesNo3, @YesNo1, @YesNo3, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (64, @YesNo3, @YesNo2, @YesNo1, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (65, @YesNo3, @YesNo2, @YesNo1, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (66, @YesNo3, @YesNo2, @YesNo1, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (67, @YesNo3, @YesNo2, @YesNo2, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (68, @YesNo3, @YesNo2, @YesNo2, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (69, @YesNo3, @YesNo2, @YesNo2, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (70, @YesNo3, @YesNo2, @YesNo3, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (71, @YesNo3, @YesNo2, @YesNo3, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (72, @YesNo3, @YesNo2, @YesNo3, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (73, @YesNo3, @YesNo3, @YesNo1, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (74, @YesNo3, @YesNo3, @YesNo1, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (75, @YesNo3, @YesNo3, @YesNo1, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (76, @YesNo3, @YesNo3, @YesNo2, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (77, @YesNo3, @YesNo3, @YesNo2, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (78, @YesNo3, @YesNo3, @YesNo2, @YesNo3)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (79, @YesNo3, @YesNo3, @YesNo3, @YesNo1)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (80, @YesNo3, @YesNo3, @YesNo3, @YesNo2)
INSERT INTO DimDifficulties (DifficultiesKey,ArrDel15,Cancelled,DepDel15,Diverted) VALUES (81, @YesNo3, @YesNo3, @YesNo3, @YesNo3)



END
GO

