-------------------------------------------------------------------------------------------------------------------------------------
-- Query to refresh records into table doz_mfm_customer.doz_customer_location.
-------------------------------------------------------------------------------------------------------------------------------------

USE doz_mfm_customer;

TRUNCATE TABLE doz_mfm_customer.doz_customer_location;

INSERT INTO doz_mfm_customer.doz_customer_location SELECT distinct lctn.IDLocation AS IDLocation, lctn.IDCustomerSegment AS IDCustomerSegment, lctn.IdCostCenter AS IdCostCenter, cstCntr1.CostCenterDescription AS CostCenterDescription, rnds.IdCostCenter AS IdDepartment, cstCntr2.CostCenterDescription AS DepartmentName, lctn.LocationDescription AS LocationDescription, lctn.HierarchyString AS HierarchyString, custSeg.segmentNotes AS segmentNotes, custSeg.segmentName AS SegmentName FROM dsz_mfm_cms.dsz_Location lctn JOIN dsz_mfm_cms.dsz_tblRounds rnds ON rnds.IDLocation = lctn.IDLocation LEFT OUTER JOIN dsz_mfm_cms.dsz_CostCenter cstCntr1 ON lctn.IDCostCenter = cstCntr1.IDCostCenter LEFT OUTER JOIN dsz_mfm_cms.dsz_CostCenter cstCntr2 ON rnds.IDCostCenter = cstCntr2.IDCostCenter JOIN dsz_mfm_cms.dsz_customersegment custSeg ON rnds.IDCustomerSegment = custSeg.IDCustomerSegment JOIN dsz_mfm_cms.dsz_tblRoundTemplates rndTemp  ON rnds.IDRoundTemplate = rndTemp.IDRoundTemplate WHERE rndTemp.RoundName like 'CSHA%' AND rnds.idRoundStatus>0;