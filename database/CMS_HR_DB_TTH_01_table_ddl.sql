--=============================================================================
-- Time To Hire Pilot Weekly Data Table
--=============================================================================

--------------------------------------------
-- Backout statement
--------------------------------------------
/*
-- Time To Hire Pilot Weekly Data Table
DROP TABLE HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT;
*/

SET DEFINE OFF;

--------------------------------------------------------
-- DDL for Table CMS_TIME_TO_HIRE_WEEKLY_PILOT
--------------------------------------------------------
CREATE TABLE HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT
(
	DATA_PULLED_ON        DATE,
	WEEK_OF               DATE,
	COMPONENT             VARCHAR2(151),
	REQUEST_NUMBER        VARCHAR2(20),
	PROCESS_ID            NUMBER(10),
	ACTION_ACTIVE_PRIOR_STRAT_CON NUMBER(10),
	STRAT_CON_START       DATE,
	STRAT_CON_END         DATE,
	ACHIEVED_STRAT_CON    NUMBER(10),
	MISSED_STRAT_CON      NUMBER(10),
	CLASS_START           DATE,
	CLASS_END             DATE,
	ACHIEVED_CLASS        NUMBER(10),
	MISSED_CLASS          NUMBER(10),
	QUALS_START           DATE,
	QUALS_END             DATE,
	ACHIEVED_QUALS        NUMBER(10),
	MISSED_QUALS          NUMBER(10),
	SELECTION_START       DATE,
	SELECTION_END         DATE,
	ACHIEVED_SELECTION    NUMBER(10),
	MISSED_SELECTION      NUMBER(10)
	TENT_OFFER_START      DATE,          
    TENT_OFFER_END        DATE, 
    ACHIEVED_TENT_OFFER   NUMBER(10),
    MISSED_TENT_OFFER     NUMBER(10),
    OFCL_OFFER_START      DATE,
    OFCL_OFFER_END        DATE,
    ACHIEVED_OFCL_OFFER   NUMBER(10),
    MISSED_OFCL_OFFER     NUMBER(10)
       
);

COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.DATA_PULLED_ON IS 'The date that the data was saved on the Time to Hire table';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.WEEK_OF IS 'Indicates the start of the week that the data shows a snapshot of ';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.COMPONENT IS 'The second sub-organization';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.REQUEST_NUMBER IS 'The NEIL request number';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.PROCESS_ID IS 'The process ID from Strategic Consultation';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.STRAT_CON_START IS 'The start date of Strategic Consultation. This is the date entered into NEIL';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.STRAT_CON_END IS 'The end date of Strategic Consultation. This is the date HR approves StratCon';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.MISSED_STRAT_CON IS 'The flag to represent that the request did not meet the Strategic Consultation target goal';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.ACHIEVED_STRAT_CON IS 'The flag to represent that the request met the Strategic Consultation target goal';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.CLASS_START IS 'The start date of Classification, Job Analysis, Assessment. This is the date HR approves StratCon';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.CLASS_END IS 'The end date of Classification, Job Analysis, Assessment. This is the Announcement Open Date in USA Staffing';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.ACHIEVED_CLASS IS 'The flag to represent that the request met the Classification, Job Analysis, Assessment target goal';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.MISSED_CLASS IS 'The flag to represent that the request did not meet the Classification, Job Analysis, Assessment target goal';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.QUALS_START IS 'The start date of Qualifications, Certificate Issuance. This is the Announcement Close Date in USA Staffing';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.QUALS_END IS 'The end date of Qualifications, Certificate Issuance. This is the Certificate Review Sent Date in USA Staffing';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.MISSED_QUALS IS 'The flag to represent that the request did not meet the Qualifications, Certificate Issuance target goal';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.ACHIEVED_QUALS IS 'The flag to represent that the request met the Qualifications, Certificate Issuance target goal';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.SELECTION_START IS 'The start date of Interviews and Selection. This is the Certificate Review Sent Date in USA Staffing';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.SELECTION_END IS 'The end date of Interviews and Selection. This is the Certificate Review Return Date in USA Staffing';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.MISSED_SELECTION IS 'The flag to represent that the request did not meet the Interviews and Selection target goal';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.ACHIEVED_SELECTION IS 'The flag to represent that the request met the Interviews and Selection target goal';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.ACTION_ACTIVE_PRIOR_STRAT_CON IS 'The number of active actions prior to Strategic Consultation meeting';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.TENT_OFFER_START IS 'The start date of Tentative Offer. This is the Certificate Review Return Date in USA Staffing';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.TENT_OFFER_END IS 'The end date of Tentative Offer. This is the Send Tentative Offer Date in USA Staffing';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.MISSED_TENT_OFFER IS 'The flag to represent that the request did not meet the Tentative Offer target goal';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.ACHIEVED_TENT_OFFER IS 'The flag to represent that the request met the Tentative Offer target goal';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.OFCL_OFFER_START IS 'The start date of Official Offer. This is the Send Tentative Offer Date in USA Staffing';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.OFCL_OFFER_END IS 'The end date of Official Offer. This is the Official Offer Complete Date in USA Staffing';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.MISSED_OFCL_OFFER IS 'The flag to represent that the request did not meet the Official Offer target goal';
COMMENT ON COLUMN HHS_CMS_HR.CMS_TIME_TO_HIRE_WEEKLY_PILOT.ACHIEVED_OFCL_OFFER IS 'The flag to represent that the request met the Official Offer target goal';
