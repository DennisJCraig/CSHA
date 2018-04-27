-------------------------------------------------------------------------------
-- Query to refresh records into table dsz_mfm_cms.dsz_tblroundfindings.
-------------------------------------------------------------------------------

TRUNCATE TABLE dsz_mfm_cms.dsz_tblroundfindings;

INSERT INTO dsz_mfm_cms.dsz_tblroundfindings SELECT IDRoundFinding, NVL(IDCustomer, CAST(IDCustomer AS INT)), NVL(IDCustomerSegment, CAST(IDCustomerSegment AS INT)), IDRound, IDRoundLibrary, IDRoundLibraryItem, NVL(IDRoundStatus, CAST(IDRoundStatus AS INT)), NVL(IDLocation, CAST(IDLocation AS INT)), IDAsset, Comments, NVL(SurveyedCorrect, CAST(SurveyedCorrect AS INT)), NVL(SurveyedTotal, CAST(SurveyedTotal AS INT)), IDWorkOrder, IDUserCreated, date_format(DateCreated,'yyyy-MM-dd HH:mm:ss'), ResolutionNotes, NVL(IDCostCenter, CAST(IDCostCenter AS INT)), LocationOther, ImageList, NVL(NotApplicable, CAST(NotApplicable AS INT)), '${processId}', date_format(CURRENT_TIMESTAMP,'yyyy-MM-dd HH:mm:ss') FROM dlz_mfm_cms.dlz_tblroundfindings;
