CREATE or replace TABLE {{SF_DATABASE}}.{{SF_SCHEMA}}.AUDIT_LOG (
    ID INT autoincrement start 1 increment 1,
    TABLE_NAME VARCHAR(50) ,
    ROW_COUNT VARCHAR(50) ,
    START_TIME VARCHAR(50),
    END_TIME VARCHAR(50)
   );
