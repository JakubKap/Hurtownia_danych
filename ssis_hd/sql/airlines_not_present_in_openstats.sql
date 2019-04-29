SELECT DISTINCT  AI.Code AS UsDotCode,
CH.Code AS Iata, CH.Description AS Name
FROM AirlineId AS AI
INNER JOIN CarrierHistory AS CH
ON SUBSTRING(RIGHT(AI.Description,4),1,3) 
= SUBSTRING(CH.Code,2,3) 
WHERE NOT EXISTS
	(SELECT A.Iata FROM Airlines AS A
	WHERE A.Iata = CH.Code) 


SELECT SUBSTRING(RIGHT(Description,4),1,3)
FROM AirlineId 

SELECT SUBSTRING(CH.Code,2,3) 
FROM CarrierHistory AS CH