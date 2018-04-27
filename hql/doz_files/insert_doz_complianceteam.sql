-------------------------------------------------------------------------------------------------------------------------------------
-- Query to refresh records into table doz_mfm_customer.doz_compliance_team.
-------------------------------------------------------------------------------------------------------------------------------------

USE doz_mfm_customer;

TRUNCATE TABLE doz_mfm_customer.doz_compliance_team;

INSERT INTO doz_mfm_customer.doz_compliance_team SELECT rndTms.ContactName AS ContactName, rndTms.ContactPhone AS ContactPhone, rndTms.ContactEmail AS ContactEmail, rndTms.idRound AS idRound, rnds.idRoundStatus AS idRoundStatus, rndTemp.RoundName AS RoundName, rndTms.idCustomerSegment AS idCustomerSegment, lctn.IdCostCenter AS IdCostCenter, cstCntr1.CostCenterDescription AS CostCenterDescription, rnds.IdCostCenter AS IdDepartment, cstCntr2.CostCenterDescription AS DepartmentName, rnds.idLocation AS idLocation, rnds.dateCreated AS dateRoundCreated FROM dsz_mfm_cms.dsz_tblRoundTeams rndTms JOIN dsz_mfm_cms.dsz_tblRounds rnds ON rndTms.IdRound = rnds.IdRound JOIN dsz_mfm_cms.dsz_Location lctn ON rnds.IDLocation = lctn.IDLocation LEFT OUTER JOIN dsz_mfm_cms.dsz_CostCenter cstCntr1 ON lctn.IDCostCenter = cstCntr1.IDCostCenter LEFT OUTER JOIN dsz_mfm_cms.dsz_CostCenter cstCntr2 ON rnds.IDCostCenter = cstCntr2.IDCostCenter JOIN dsz_mfm_cms.dsz_tblRoundTemplates rndTemp ON rnds.IDRoundTemplate = rndTemp.IDRoundTemplate WHERE rnds.idRoundStatus>0;