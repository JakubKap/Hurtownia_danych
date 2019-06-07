
 ----DimState----

 INSERT INTO DimState (StateCodeId, StateCode, StateName)
 VALUES 
 (-1, 'UN', 'Unknown');

 UPDATE DimAirport
 SET StateCode = -1
 WHERE StateCode IS NULL;

  ----DimStateFips----

   INSERT INTO DimStateFips(StateFipsCodeId, StateFipsCode, StateName)
   VALUES (-1, 'UN',  'Unknown');

   UPDATE DimAirport
 SET StateFips = -1
 WHERE StateFips IS NULL;

 ----DimDst------

 UPDATE DimAirport
 SET Dst = 3
 WHERE Dst IS NULL;

 ----DimAirportWorldAreaCode------

  UPDATE DimAirport
 SET AirportWorldAreaCode = (SELECT WordAreaCode
  FROM DimAirportWorldAreaCode WHERE Region = 'Unknown')
 WHERE AirportWorldAreaCode IS NULL;


 ---------DimAirline------

  UPDATE DimAirline
 SET AirlineWorldAreaCode = (SELECT WordAreaCode
  FROM DimAirlineWorldAreaCode WHERE Region = 'Unknown')
 WHERE AirlineWorldAreaCode IS NULL;
 
 
 
 
 
 
 ------------
 
 UPDATE DimAirline
  SET AirlineIata = NULL
  WHERE AirlineIata = '-'
  OR  AirlineIata = '--'
  OR AirlineIata = '&T'
  OR AirlineIata = '-.'
  OR AirlineIata = '..'
  OR AirlineIata = '::'
  OR AirlineIata = ';;'
  OR AirlineIata = '??'
  OR AirlineIata LIKE '%\\%'
  OR AirlineIata = '^^'
  OR AirlineIata = '-+'
  OR AirlineIata = '++';