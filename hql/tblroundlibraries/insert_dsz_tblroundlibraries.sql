-------------------------------------------------------------------------------
-- Query to refresh records into table dsz_mfm_cms.dsz_tblroundlibraries.
-------------------------------------------------------------------------------

TRUNCATE TABLE dsz_mfm_cms.dsz_tblroundlibraries;

INSERT INTO dsz_mfm_cms.dsz_tblroundlibraries SELECT IDRoundLibrary, NVL(IDCustomer, CAST(IDCustomer AS INT)), NVL(IDCustomerSegment, CAST(IDCustomerSegment AS INT)), LibraryName, IDUserCreated, date_format(DateCreated,'yyyy-MM-dd HH:mm:ss'), IDUserUpdated, date_format(DateUpdated,'yyyy-MM-dd HH:mm:ss'), NVL(Deleted, CAST(Deleted AS INT)), IDIcon, NVL(DisplayOrder, CAST(DisplayOrder AS INT)), '${processId}', date_format(CURRENT_TIMESTAMP,'yyyy-MM-dd HH:mm:ss') FROM dlz_mfm_cms.dlz_tblroundlibraries;
