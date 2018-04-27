-------------------------------------------------------------------------------
-- Query to refresh records into table dsz_mfm_cms.dsz_status.
-------------------------------------------------------------------------------

TRUNCATE TABLE dsz_mfm_cms.dsz_status;

INSERT INTO dsz_mfm_cms.dsz_status SELECT NVL(IDStatus, CAST(IDStatus AS INT)), NVL(IDCustomer, CAST(IDCustomer AS INT)), NVL(IDCustomerSegment, CAST(IDCustomerSegment AS INT)), NVL(IDCMSModule, CAST(IDCMSModule AS INT)), NVL(IDCMSStatus, CAST(IDCMSStatus AS INT)), StatusDescription, NVL(StatusVisible, CAST(StatusVisible AS INT)), NVL(StatusSearchable, CAST(StatusSearchable AS INT)), NVL(Level, CAST(Level AS INT)), NVL(IDParent, CAST(IDParent AS INT)), IDUserCreated, date_format(DateCreated,'yyyy-MM-dd HH:mm:ss'), IDUserUpdated, date_format(DateUpdated,'yyyy-MM-dd HH:mm:ss'), Hierarchy, NVL(AllowEdits, CAST(AllowEdits AS INT)), HierarchyString, ForeignKey, '${processId}', date_format(CURRENT_TIMESTAMP,'yyyy-MM-dd HH:mm:ss') FROM dlz_mfm_cms.dlz_status;
