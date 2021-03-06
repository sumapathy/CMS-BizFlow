CREATE OR REPLACE VIEW VW_INCENTIVES_LE_CRED AS

SELECT FD.PROCID AS PROC_ID, 
	x.SEQ_NUM,
	x.START_DATE,
	x.END_DATE, 
	x.WORK_SCHEDULE, 
	x.POS_TITLE, 
	NVL(x.CALCULATED_YEARS,0) AS CALCULATED_YEARS, 
	NVL(x.CALCULATED_MONTHS,0) AS CALCULATED_MONTHS, 
	NVL(x.CREDITABLE_YEARS,0) AS CREDITABLE_YEARS, 
	NVL(x.CREDITABLE_MONTHS,0) AS CREDITABLE_MONTHS
FROM TBL_FORM_DTL FD,
	 XMLTABLE('/formData/items/item[id="creditableNonFederalServices"]/value' PASSING FD.FIELD_DATA COLUMNS
		SEQ_NUM FOR ORDINALITY,
		START_DATE			VARCHAR2(10) PATH './startDate',
		END_DATE			VARCHAR2(10) PATH './endDate',
		WORK_SCHEDULE		VARCHAR2(15) PATH './workSchedule',
		POS_TITLE			VARCHAR2(140) PATH './positionTitle',
		CALCULATED_YEARS	NUMBER(10) PATH './calculatedTime/years',
		CALCULATED_MONTHS	NUMBER(10) PATH './calculatedTime/months',
		CREDITABLE_YEARS	NUMBER(10) PATH './creditableTime/years',
		CREDITABLE_MONTHS	NUMBER(10) PATH './creditableTime/months'
	) X
WHERE FD.FORM_TYPE = 'CMSINCENTIVES'
;
/
