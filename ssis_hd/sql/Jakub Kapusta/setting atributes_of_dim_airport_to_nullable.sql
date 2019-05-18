ALTER TABLE DimAirport
ALTER COLUMN Dst int NULL;
ALTER TABLE DimAirport
ALTER COLUMN AirportWorldAreaCode int NULL;
ALTER TABLE DimAirport
ALTER COLUMN CityName varchar(100) NULL;
ALTER TABLE DimAirport
ALTER COLUMN Latitude decimal(22,20) NULL;
ALTER TABLE DimAirport
ALTER COLUMN Longitude decimal(23,20) NULL;
ALTER TABLE DimAirport
ALTER COLUMN Altitude int NULL;
ALTER TABLE DimAirport
ALTER COLUMN Timezone float NULL;
ALTER TABLE DimAirport
ALTER COLUMN TzDatabase varchar(30) NULL;