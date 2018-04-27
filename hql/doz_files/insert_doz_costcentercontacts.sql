-------------------------------------------------------------------------------------------------------------------------------------
-- Query to refresh records into table doz_mfm_customer.doz_cost_center_contacts.
-------------------------------------------------------------------------------------------------------------------------------------
USE doz_mfm_customer;

TRUNCATE TABLE doz_mfm_customer.doz_cost_center_contacts;

insert into doz_mfm_customer.doz_cost_center_contacts  SELECT cstCntrCnts.ContactName AS ContactName, cstCntrCnts.ContactPhone AS ContactPhone, cstCntrCnts.ContactEmail AS ContactEmail, CASE   WHEN cstCntrCnts.isSafety = 1 THEN 'Safety Officer'   ELSE 'Department Contact' END AS Position, cstCntrCnts.idRound AS idRound, rnds.idRoundStatus AS idRoundStatus, rndTemp.RoundName AS RoundName, cstCntrCnts.idCustomerSegment AS idCustomerSegment, rnds.idLocation AS idLocation, rnds.datecreated AS dateRoundCreated FROM dsz_mfm_cms.dsz_tblCostCenterContacts cstCntrCnts JOIN dsz_mfm_cms.dsz_tblRounds rnds ON cstCntrCnts.IdRound = rnds.IdRound JOIN dsz_mfm_cms.dsz_tblRoundTemplates rndTemp ON rnds.IDRoundTemplate = rndTemp.IDRoundTemplate LEFT OUTER JOIN dsz_mfm_cms.dsz_tblRoundTeams rndTms ON cstCntrCnts.IdRound = rndTms.IdRound;