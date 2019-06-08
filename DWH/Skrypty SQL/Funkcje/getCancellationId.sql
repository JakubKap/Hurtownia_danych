USE [AirStatsDWH]
GO

/****** Object:  UserDefinedFunction [dbo].[getCancellationId]    Script Date: 08.06.2019 21:38:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE FUNCTION [dbo].[getCancellationId](
@CancellationKey varchar(5))
RETURNS int
AS
BEGIN


DECLARE @maxKey int= (SELECT MAX(CancellationID) FROM DimCancellationReason)

IF @CancellationKey is NULL or @CancellationKey='9' RETURN @maxKey
IF (SELECT CASE WHEN COUNT(1)!=1 THEN 0 ELSE 1 END 
FROM DimCancellationReason 
WHERE CancellationReasonKey=@CancellationKey)=0  RETURN @maxKey

return (SELECT CancellationID FROM DimCancellationReason WHERE CancellationReasonKey=@CancellationKey)

END
GO

