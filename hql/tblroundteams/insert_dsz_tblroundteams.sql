-------------------------------------------------------------------------------
-- Query to refresh records into table dsz_mfm_cms.dsz_tblroundteams.
-------------------------------------------------------------------------------

TRUNCATE TABLE dsz_mfm_cms.dsz_tblroundteams;

INSERT INTO dsz_mfm_cms.dsz_tblroundteams SELECT IDRoundTeam, NVL(IDCustomer, CAST(IDCustomer AS INT)), NVL(IDCustomerSegment, CAST(IDCustomerSegment AS INT)), IDRound, IDUser, IDUserCreated, date_format(DateCreated,'yyyy-MM-dd HH:mm:ss'), ContactName, ContactPhone, ContactEmail, '${processId}', date_format(CURRENT_TIMESTAMP,'yyyy-MM-dd HH:mm:ss') FROM dlz_mfm_cms.dlz_tblroundteams;
