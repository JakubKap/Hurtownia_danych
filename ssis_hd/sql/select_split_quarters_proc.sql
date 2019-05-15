SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE selectSplitQuarters 
AS
BEGIN
	SET NOCOUNT ON;

	SELECT Code,
	Description, 
	MONTH(SUBSTRING(
		SUBSTRING(
		SUBSTRING(Description,10,100),
		1,
		CHARINDEX('-',SUBSTRING(Description,10,100))-1),
		1,
		CHARINDEX(' ',SUBSTRING(
		SUBSTRING(Description,10,100),
		1,
		CHARINDEX('-',SUBSTRING(Description,10,100))-1))-1)+' 1 2010') as month1,
		SUBSTRING(
		SUBSTRING(
		SUBSTRING(Description,10,100),
		1,
		CHARINDEX('-',SUBSTRING(Description,10,100))-1),
		CHARINDEX(' ',SUBSTRING(
		SUBSTRING(Description,10,100),
		1,
		CHARINDEX('-',SUBSTRING(Description,10,100))-1))+1,
		100) as day1,
	MONTH(SUBSTRING(
		SUBSTRING(
		SUBSTRING(Description,10,100),
		CHARINDEX('-',SUBSTRING(Description,10,100))+1,
		100) ,
		1,
		CHARINDEX(' ',SUBSTRING(
		SUBSTRING(Description,10,100),
		CHARINDEX('-',SUBSTRING(Description,10,100))+1,
		100) )-1)+' 1 2010') as month2,

	SUBSTRING(
		SUBSTRING(
			SUBSTRING(Description,10,100),
			CHARINDEX('-',SUBSTRING(Description,10,100))+1,
			100) ,
		CHARINDEX(' ',SUBSTRING(
			SUBSTRING(Description,10,100),
			CHARINDEX('-',SUBSTRING(Description,10,100))+1,
			100) )+1,
		100) as day2
	FROM Quarters
END