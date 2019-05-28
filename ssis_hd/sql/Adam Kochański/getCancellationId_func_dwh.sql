CREATE FUNCTION dbo.getCancellationId(
@CancellationKey varchar(5))
RETURNS int
AS
BEGIN

DECLARE @maxKey int= (SELECT MAX(CancellationID) FROM DimCancellationReason)

IF (SELECT CASE WHEN COUNT(1)!=1 THEN 0 ELSE 1 END 
FROM DimCancellationReason 
WHERE CancellationReasonKey=@CancellationKey)=1 RETURN @maxKey

return (SELECT CancellationID FROM DimCancellationReason WHERE CancellationReasonKey=@CancellationKey)

END