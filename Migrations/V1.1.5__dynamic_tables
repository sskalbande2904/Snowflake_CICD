create or replace dynamic table {{SF_DATABASE}}.{{SF_TRANSFORMATION_SCHEMA}}.REVENUE(
	STORENAME,
	STOREID,
	TRANSACTIONDATE,
	AMOUNT,
    MODEOFSERVICE,
	OPERATING_COST
) target_lag = '30 minutes' refresh_mode = AUTO initialize = ON_CREATE warehouse = PROD_SERVICE_WH
 as
select s.storename,s.storeid,t.transactiondate, t.amount,s.operatingcost,t.MODEOFSERVICE,
from PROD_DB.PROD_RAW_SCHEMA."Stores" s
left join PROD_DB.PROD_RAW_SCHEMA."Machines"  m
on s.storeid = m.storeid
left join PROD_DB.PROD_raw_schema.transactions t
on s.storeid = t.storeid

group by all;


create or replace dynamic table {{SF_DATABASE}}.{{SF_TRANSFORMATION_SCHEMA}}.SERVICEMETRICS(
	STORENAME,
	STOREID,
	TRANSACTIONDATE,
	TRANSACTIONID,
	AMOUNT,
    MODEOFSERVICE,
	SERVICETYPE
) target_lag = '30 minutes' refresh_mode = AUTO initialize = ON_CREATE warehouse = PROD_SERVICE_WH
 as
--Service type vs metric selected

select s.storename,s.storeid,t.transactiondate, t.transactionid,t.amount,t.servicetype,t.MODEOFSERVICE,
from PROD_DB.PROD_RAW_SCHEMA."Stores" s
left join PROD_DB.PROD_RAW_SCHEMA."Machines"  m
on s.storeid = m.storeid
left join PROD_DB.PROD_raw_schema.transactions t
on s.storeid = t.storeid

group by all;


create or replace dynamic table {{SF_DATABASE}}.{{SF_TRANSFORMATION_SCHEMA}}.STORE_INSIGHTS(
	STORENAME,
	STOREID,
	TRANSACTIONDATE,
	MACHINEID,
	STATUS,
	AMOUNT,
	MODEOFSERVICE,
	EMPLOYEEID
) target_lag = '30 minutes' refresh_mode = AUTO initialize = ON_CREATE warehouse = PROD_SERVICE_WH
 as

--store vs metrics
select s.storename,s.storeid,t.transactiondate, m.machineid,m.status,t.amount,t.modeofservice, e.employeeid
from PROD_DB.PROD_RAW_SCHEMA."Stores" s
left join PROD_DB.PROD_RAW_SCHEMA."Machines"  m
on s.storeid = m.storeid
left join PROD_DB.PROD_raw_schema.transactions t
on s.storeid = t.storeid
left join PROD_DB.PROD_RAW_SCHEMA."Employees" e
on s.storeid = e.storeid

group by all;

create or replace dynamic table {{SF_DATABASE}}.{{SF_TRANSFORMATION_SCHEMA}}.STORE_RATINGS(
	STORENAME,
	TRANSACTIONDATE,
    MODEOFSERVICE,
	RATING
) target_lag = '30 minutes' refresh_mode = AUTO initialize = ON_CREATE warehouse = PROD_SERVICE_WH
 as

--- store ratings
select s.storename,t.transactiondate,t.rating,t.MODEOFSERVICE
from PROD_DB.PROD_RAW_SCHEMA."Stores" s
left join PROD_DB.PROD_raw_schema.transactions t
on s.storeid = t.storeid

group by all;
