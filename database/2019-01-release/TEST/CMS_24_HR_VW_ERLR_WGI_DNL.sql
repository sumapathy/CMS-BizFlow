--------------------------------------------------------
--  DDL for VW_ERLR_WGI_DNL
--------------------------------------------------------
CREATE OR REPLACE VIEW VW_ERLR_WGI_DNL
AS
SELECT
    WD.ERLR_CASE_NUMBER
    , EC.ERLR_JOB_REQ_NUMBER
    , EC.PROCID    
    , EC.ERLR_CASE_CREATE_DT
    , WGI_DTR_DENIAL_ISSUED_DT
	, CASE WHEN WD.WGI_DTR_EMP_REQ_RECON = '1'  THEN 'Yes' ELSE 'No' END AS WGI_DTR_EMP_REQ_RECON
	, WGI_DTR_RECON_REQ_DT
	, WGI_DTR_RECON_ISSUE_DT
	, CASE WHEN WD.WGI_DTR_DENIED = '1'  THEN 'Yes' ELSE 'No' END AS WGI_DTR_DENIED
	, WGI_DTR_DENIAL_ISSUE_TO_EMP_DT
	, WGI_RVW_REDTR_NOTI_ISSUED_DT
	, CASE WHEN WD.WGI_REVIEW_DTR_FAVORABLE = '1'  THEN 'Yes' ELSE 'No' END AS WGI_REVIEW_DTR_FAVORABLE
	, CASE WHEN WD.WGI_REVIEW_EMP_REQ_RECON = '1'  THEN 'Yes' ELSE 'No' END AS WGI_REVIEW_EMP_REQ_RECON
	, WGI_REVIEW_RECON_REQ_DT
	, WGI_REVIEW_RECON_ISSUE_DT
	, CASE WHEN WD.WGI_REVIEW_DENIED = '1'  THEN 'Yes' ELSE 'No' END AS WGI_REVIEW_DENIED
	, CASE WHEN WD.WGI_EMP_APPEAL_DECISION = '1'  THEN 'Yes' ELSE 'No' END AS WGI_EMP_APPEAL_DECISION    
FROM
	ERLR_WGI_DNL WD
    LEFT OUTER JOIN ERLR_CASE EC ON WD.ERLR_CASE_NUMBER = EC.ERLR_CASE_NUMBER
;
/