CREATE IF NOT EXIST TABLE {SF_DATABASE}.PROD_RAW_SCHEMA.AUDIT_LOG_TEST (
    ID INT autoincrement start 1 increment 1,
    TABLE_NAME VARCHAR(50) ,
    ROW_COUNT VARCHAR(50) ,
    START_TIME VARCHAR(50),
    END_TIME VARCHAR(50)
   );
