-------------------------------------------------------------------------------
-- Query to refresh records into table dsz_mfm_cms.dsz_tblcostcentercontacts.
-------------------------------------------------------------------------------

TRUNCATE TABLE dsz_mfm_cms.dsz_tblcostcentercontacts;

INSERT INTO dsz_mfm_cms.dsz_tblcostcentercontacts SELECT IDCostCenterContact, NVL(IDCustomer, CAST(IDCustomer AS INT)), NVL(IDCustomerSegment, CAST(IDCustomerSegment AS INT)), NVL(IDCostCenter, CAST(IDCostCenter AS INT)), IDUser, IDRound, ContactName, ContactPhone, ContactEmail, NVL(IsSafety, CAST(IsSafety AS INT)), '${processId}', date_format(CURRENT_TIMESTAMP,'yyyy-MM-dd HH:mm:ss') FROM dlz_mfm_cms.dlz_tblcostcentercontacts;
