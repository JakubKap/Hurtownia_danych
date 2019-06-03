
  EXEC sp_rename 'TempFactFlightActivity.DelayGroup', 'DepDelayGroup', 'COLUMN'
  EXEC sp_rename 'FactFlightActivity.DelayGroup', 'DepDelayGroup', 'COLUMN';


  ALTER TABLE TempFactFlightActivity
  ADD ArrDelayGroup int NULL;

Alter table TempFactFlightActivity
    add constraint FK_ArrDelayGroupinFacts
    FOREIGN KEY(ArrDelayGroup) REFERENCES DimDelayGroup (DelayGroupKey)
	GO


	  ALTER TABLE FactFlightActivity
  ADD ArrDelayGroup int NULL;

Alter table FactFlightActivity
    add constraint FK_ArrDelayGroupinFacts2
    FOREIGN KEY(ArrDelayGroup) REFERENCES DimDelayGroup (DelayGroupKey)
	GO