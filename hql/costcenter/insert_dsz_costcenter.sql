-------------------------------------------------------------------------------
-- Query to refresh records into table dsz_mfm_cms.dsz_costcenter.
-------------------------------------------------------------------------------

TRUNCATE TABLE dsz_mfm_cms.dsz_costcenter;

INSERT INTO dsz_mfm_cms.dsz_costcenter SELECT NVL(IDCostCenter, CAST(IDCostCenter AS INT)), NVL(IDCustomer, CAST(IDCustomer AS INT)), NVL(IDCustomerSegment, CAST(IDCustomerSegment AS INT)), CostCenterCode, CostCenterDescription, NVL(CostCenterVisible, CAST(CostCenterVisible AS INT)), NVL(CostCenterSearchable, CAST(CostCenterSearchable AS INT)), IDUserCreated, date_format(DateCreated,'yyyy-MM-dd HH:mm:ss'), IDUserUpdated, NVL(Level, CAST(Level AS INT)), NVL(IDParent, CAST(IDParent AS INT)), Hierarchy, ContactName, Phone, Email, Notes, date_format(DateUpdated,'yyyy-MM-dd HH:mm:ss'), SystemOfOrigin, ForeignKey, NVL(IsDelete, CAST(IsDelete AS INT)), '${processId}', date_format(CURRENT_TIMESTAMP,'yyyy-MM-dd HH:mm:ss') FROM dlz_mfm_cms.dlz_costcenter;
