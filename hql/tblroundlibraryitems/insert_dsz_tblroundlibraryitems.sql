-------------------------------------------------------------------------------
-- Query to refresh records into table dsz_mfm_cms.dsz_tblroundlibraryitems.
-------------------------------------------------------------------------------

TRUNCATE TABLE dsz_mfm_cms.dsz_tblroundlibraryitems;

INSERT INTO dsz_mfm_cms.dsz_tblroundlibraryitems SELECT IDRoundLibraryItem, NVL(IDCustomer, CAST(IDCustomer AS INT)), NVL(IDCustomerSegment, CAST(IDCustomerSegment AS INT)), IDRoundLibrary, NVL(IDCMSCategory, CAST(IDCMSCategory AS INT)), LibraryItem, IDCodeLibrary, Notes, NVL(DisplayOrder, CAST(DisplayOrder AS INT)), NVL(IDCostCenterResponsible, CAST(IDCostCenterResponsible AS INT)), NVL(CreateWorkOrder, CAST(CreateWorkOrder AS INT)), WODescription, NVL(IDWOPriority, CAST(IDWOPriority AS INT)), NVL(IDWOCategory, CAST(IDWOCategory AS INT)), NVL(IDWOTrade, CAST(IDWOTrade AS INT)), NVL(IDWOStatus, CAST(IDWOStatus AS INT)), date_format(WODateAvailable,'yyyy-MM-dd HH:mm:ss'), date_format(WODateNeededBy,'yyyy-MM-dd HH:mm:ss'), IDUserCreated, date_format(DateCreated,'yyyy-MM-dd HH:mm:ss'), IDUserUpdated, date_format(DateUpdated,'yyyy-MM-dd HH:mm:ss'), NVL(Deleted, CAST(Deleted AS INT)), ResolutionNotes, '${processId}', date_format(CURRENT_TIMESTAMP,'yyyy-MM-dd HH:mm:ss') FROM dlz_mfm_cms.dlz_tblroundlibraryitems;
