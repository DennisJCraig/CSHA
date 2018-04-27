-------------------------------------------------------------------------------
-- Query to refresh records into table dsz_mfm_cms.dsz_tblroundtemplates.
-------------------------------------------------------------------------------

TRUNCATE TABLE dsz_mfm_cms.dsz_tblroundtemplates;

INSERT INTO dsz_mfm_cms.dsz_tblroundtemplates SELECT IDRoundTemplate, NVL(IDCustomer, CAST(IDCustomer AS INT)), NVL(IDCustomerSegment, CAST(IDCustomerSegment AS INT)), RoundName, Note, IDUserCreated, date_format(DateCreated,'yyyy-MM-dd HH:mm:ss'), IDUserUpdated, date_format(DateUpdated,'yyyy-MM-dd HH:mm:ss'), NVL(Deleted, CAST(Deleted AS INT)), NVL(IDCategory, CAST(IDCategory AS INT)), '${processId}', date_format(CURRENT_TIMESTAMP,'yyyy-MM-dd HH:mm:ss') FROM dlz_mfm_cms.dlz_tblroundtemplates;
