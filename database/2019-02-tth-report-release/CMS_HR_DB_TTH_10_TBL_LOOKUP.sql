UPDATE HHS_CMS_HR.TBL_LOOKUP
SET TBL_CATEGORY = 'IN'
WHERE TBL_LTYPE = 'Incentives-Locality'
AND TBL_CATEGORY IS NULL;
COMMIT;
