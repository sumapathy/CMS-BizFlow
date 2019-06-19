SET DEFINE OFF;

declare
    V_TABID NUMBER(10);
    V_ORGPROCDEFID number(10);
begin
    select ORGPROCDEFID 
      into V_ORGPROCDEFID
      from procdef 
     where name='SAM Incentives' 
       and ISFINAL='T'
       and envtype='O';


    SELECT MAX(VALUE)+1
      INTO V_TABID
      FROM ID
     WHERE KEYSTR = 'TabDefID';
     
    IF V_TABID IS NULL THEN
        INSERT INTO ID(SVRID, KEYSTR, VALUE) VALUES('0000001001','TabDefID',101);
        V_TABID := 101;
    ELSE
        UPDATE ID
           SET VALUE=V_TABID
         WHERE KEYSTR = 'TabDefID';
    END IF;
     
    V_TABID := 10000+V_TABID;
     
    INSERT INTO tabdef (svrid,tabdefid,method,name,dscpt,url) VALUES ('0000001001',V_TABID,'G', 'Attachment', null, '$$context_path/solutions/cms/incentives/document/attachframe.jsp');
    INSERT INTO tabparamdef (svrid,tabdefid,paramseq,name,value,dscpt) VALUES ('0000001001',V_TABID,1,'$$defaultParam','true','Server ID, Process ID, Type, Authority and Password flag');
    
    Insert into PROCTABDEF (SVRID,ORGPROCDEFID,TYPE,TABDEFID,DISPORDER,SHOW) values ('0000001001',V_ORGPROCDEFID,'M',1,0,'T');
    Insert into PROCTABDEF (SVRID,ORGPROCDEFID,TYPE,TABDEFID,DISPORDER,SHOW) values ('0000001001',V_ORGPROCDEFID,'M',2,1,'T');
    Insert into PROCTABDEF (SVRID,ORGPROCDEFID,TYPE,TABDEFID,DISPORDER,SHOW) values ('0000001001',V_ORGPROCDEFID,'M',3,2,'T');
    Insert into PROCTABDEF (SVRID,ORGPROCDEFID,TYPE,TABDEFID,DISPORDER,SHOW) values ('0000001001',V_ORGPROCDEFID,'M',4,3,'T');
    Insert into PROCTABDEF (SVRID,ORGPROCDEFID,TYPE,TABDEFID,DISPORDER,SHOW) values ('0000001001',V_ORGPROCDEFID,'M',5,4,'F');
    Insert into PROCTABDEF (SVRID,ORGPROCDEFID,TYPE,TABDEFID,DISPORDER,SHOW) values ('0000001001',V_ORGPROCDEFID,'M',V_TABID,5,'T');
    Insert into PROCTABDEF (SVRID,ORGPROCDEFID,TYPE,TABDEFID,DISPORDER,SHOW) values ('0000001001',V_ORGPROCDEFID,'M',6,6,'T');
    Insert into PROCTABDEF (SVRID,ORGPROCDEFID,TYPE,TABDEFID,DISPORDER,SHOW) values ('0000001001',V_ORGPROCDEFID,'M',7,7,'T');
    Insert into PROCTABDEF (SVRID,ORGPROCDEFID,TYPE,TABDEFID,DISPORDER,SHOW) values ('0000001001',V_ORGPROCDEFID,'M',8,8,'T');
    Insert into PROCTABDEF (SVRID,ORGPROCDEFID,TYPE,TABDEFID,DISPORDER,SHOW) values ('0000001001',V_ORGPROCDEFID,'M',9,9,'T');
    Insert into PROCTABDEF (SVRID,ORGPROCDEFID,TYPE,TABDEFID,DISPORDER,SHOW) values ('0000001001',V_ORGPROCDEFID,'M',10,10,'F');
    Insert into PROCTABDEF (SVRID,ORGPROCDEFID,TYPE,TABDEFID,DISPORDER,SHOW) values ('0000001001',V_ORGPROCDEFID,'M',12,11,'F');
    Insert into PROCTABDEF (SVRID,ORGPROCDEFID,TYPE,TABDEFID,DISPORDER,SHOW) values ('0000001001',V_ORGPROCDEFID,'M',13,12,'F');

    COMMIT;
end;
