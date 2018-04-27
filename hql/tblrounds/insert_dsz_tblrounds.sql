-------------------------------------------------------------------------------
-- Query to refresh records into table dsz_mfm_cms.dsz_tblrounds.
-------------------------------------------------------------------------------

TRUNCATE TABLE dsz_mfm_cms.dsz_tblrounds;

INSERT INTO dsz_mfm_cms.dsz_tblrounds SELECT IDRound, NVL(IDCustomer, CAST(IDCustomer AS INT)), NVL(IDCustomerSegment, CAST(IDCustomerSegment AS INT)), IDRoundTemplate, NVL(IDLocation, CAST(IDLocation AS INT)), NVL(IDCostCenter, CAST(IDCostCenter AS INT)), IDUserCreated, date_format(DateCreated,'yyyy-MM-dd HH:mm:ss'), NVL(IDRoundStatus, CAST(IDRoundStatus AS INT)), NVL(Deleted, CAST(Deleted AS INT)), date_format(DateFinalized,'yyyy-MM-dd HH:mm:ss'), IDRoundSchedule, '${processId}', date_format(CURRENT_TIMESTAMP,'yyyy-MM-dd HH:mm:ss') FROM dlz_mfm_cms.dlz_tblrounds;
