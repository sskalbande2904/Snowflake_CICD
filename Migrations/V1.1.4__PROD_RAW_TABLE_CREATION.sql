CREATE or replace TABLE {{SF_DATABASE}}.{{SF_SCHEMA}}.AUDIT_LOG (
    ID INT autoincrement start 1 increment 1,
    TABLE_NAME VARCHAR(50) ,
    ROW_COUNT VARCHAR(50) ,
    START_TIME VARCHAR(50),
    END_TIME VARCHAR(50)
   );
create or replace TABLE {{SF_DATABASE}}.{{SF_SCHEMA}}."Customers" (
	CUSTOMERID VARCHAR(50) COMMENT 'Unique identifier for each customer',
	NAME VARCHAR(100) COMMENT 'Name of the customer',
	EMAIL VARCHAR(100) COMMENT 'Email address of the customer',
	PHONE VARCHAR(50) COMMENT 'Phone number of the customer',
	MEMBERSHIPSTATUS VARCHAR(50) COMMENT 'Membership status of the customer (e.g., active, inactive)',
	JOINDATE VARCHAR(50) COMMENT 'Date when the customer joined',
	REWARDPOINTS VARCHAR(50) COMMENT 'Reward points accumulated by the customer'
);
create or replace TABLE {{SF_DATABASE}}.{{SF_SCHEMA}}."Employees" (
	EMPLOYEEID VARCHAR(50) COMMENT 'Unique identifier for each employee',
	STOREID VARCHAR(50) COMMENT 'Identifier for the store where the employee works',
	NAME VARCHAR(100) COMMENT 'Name of the employee',
	ROLE VARCHAR(50) COMMENT 'Role of the employee',
	EMAIL VARCHAR(100) COMMENT 'Email address of the employee',
	PHONE VARCHAR(50) COMMENT 'Phone number of the employee',
	HIREDATE VARCHAR(50) COMMENT 'Date when the employee was hired',
	SALARY VARCHAR(50) COMMENT 'Salary of the employee'
);
create or replace TABLE {{SF_DATABASE}}.{{SF_SCHEMA}}."Footfall" (
	FOOTFALLID VARCHAR(50) COMMENT 'Unique identifier for each footfall record',
	STOREID VARCHAR(50) COMMENT 'Identifier for the store where footfall was recorded',
	HOUR VARCHAR(50) COMMENT 'Hour of the day when footfall was recorded',
	FOOTFALLCOUNT VARCHAR(50) COMMENT 'Number of people counted during the hour',
	DATE VARCHAR(50) COMMENT 'Date when footfall was recorded'
);
create or replace TABLE {{SF_DATABASE}}.{{SF_SCHEMA}}."Machines" (
	MACHINEID VARCHAR(50) COMMENT 'Unique identifier for each machine',
	STOREID VARCHAR(50) COMMENT 'Identifier for the store where the machine is located',
	MACHINETYPE VARCHAR(100) COMMENT 'Type of the machine',
	STATUS VARCHAR(50) COMMENT 'Current status of the machine (e.g., active, inactive)',
	LASTMAINTENANCEDATE VARCHAR(50) COMMENT 'Date when the machine was last maintained',
	PURCHASEDATE VARCHAR(50) COMMENT 'Date when the machine was purchased'
);
create or replace TABLE {{SF_DATABASE}}.{{SF_SCHEMA}}.SERVICEPRICING (
	PRICINGID VARCHAR(50) COMMENT 'Unique identifier for each pricing record',
	SERVICETYPE VARCHAR(100) COMMENT 'Type of service for which pricing is defined',
	PRICEPERUNIT VARCHAR(50) COMMENT 'Price per unit of the service',
	EFFECTIVEDATE VARCHAR(50) COMMENT 'Date when the pricing became effective',
	STOREID VARCHAR(50) COMMENT 'Identifier for the store where the pricing applies',
	DISCOUNTPERCENTAGE VARCHAR(50) COMMENT 'Discount percentage applicable to the service'
);
create or replace TABLE {{SF_DATABASE}}.{{SF_SCHEMA}}.SERVICEREQUEST (
	REQUESTID VARCHAR(50) COMMENT 'Unique identifier for each service request',
	CUSTOMERID VARCHAR(50) COMMENT 'Identifier for the customer making the request',
	STOREID VARCHAR(50) COMMENT 'Identifier for the store where the request was made',
	SERVICETYPE VARCHAR(100) COMMENT 'Type of service requested',
	REQUESTDATE VARCHAR(50) COMMENT 'Date when the request was made',
	DESCRIPTION VARCHAR(255) COMMENT 'Description of the service request',
	STATUS VARCHAR(50) COMMENT 'Current status of the request (e.g., open, closed)',
	RESOLUTIONDATE VARCHAR(50) COMMENT 'Date when the request was resolved',
	DELAYFORREASON VARCHAR(255) COMMENT 'Reason for any delay in resolving the request'
);
create or replace TABLE {{SF_DATABASE}}.{{SF_SCHEMA}}.SUPPLIER (
	SUPPLIERID VARCHAR(50) COMMENT 'Unique identifier for each supplier',
	STOREID VARCHAR(50) COMMENT 'Identifier for the store associated with the supplier',
	SUPPLIERNAME VARCHAR(100) COMMENT 'Name of the supplier',
	STORECONTACTPERSON VARCHAR(100) COMMENT 'Contact person at the store for the supplier',
	SUPLIERPHONE VARCHAR(50) COMMENT 'Phone number of the supplier',
	SUPLIEREMAIL VARCHAR(100) COMMENT 'Email address of the supplier',
	SUPLIERADDRESS VARCHAR(200) COMMENT 'Address of the supplier',
	DATEOFSUPPLY VARCHAR(50) COMMENT 'Date when the supply was made',
	NOOFUNITS VARCHAR(50) COMMENT 'Number of units supplied',
	TYPEOFPRODUCT VARCHAR(100) COMMENT 'Type of product supplied',
	AMOUNTPAID VARCHAR(50) COMMENT 'Amount paid for the supply'
);
create or replace TABLE {{SF_DATABASE}}.{{SF_SCHEMA}}."Stores" (
	STOREID VARCHAR(50) COMMENT 'Unique identifier for each store',
	STORENAME VARCHAR(100) COMMENT 'Name of the store',
	CITY VARCHAR(100) COMMENT 'City where the store is located',
	ADDRESS VARCHAR(200) COMMENT 'Address of the store',
	OPENINGTIME VARCHAR(50) COMMENT 'Opening time of the store',
	CLOSINGTIME VARCHAR(50) COMMENT 'Closing time of the store',
	DATE VARCHAR(50) COMMENT 'Date when the store data was recorded',
	NOOFEMPLOYEES VARCHAR(50) COMMENT 'Number of employees in the store',
	NOOFMACHINES VARCHAR(50) COMMENT 'Number of machines in the store',
	NOOFDAMAGEDMACHINES VARCHAR(50) COMMENT 'Number of damaged machines in the store',
	OPERATINGCOST VARCHAR(50) COMMENT 'Operating cost of the store'
);
create or replace TABLE {{SF_DATABASE}}.{{SF_SCHEMA}}.TRANSACTIONS (
	TRANSACTIONID VARCHAR(50) COMMENT 'Unique identifier for each transaction',
	CUSTOMERID VARCHAR(50) COMMENT 'Identifier for the customer involved in the transaction',
	STOREID VARCHAR(50) COMMENT 'Identifier for the store where the transaction occurred',
	MACHINEID VARCHAR(50) COMMENT 'Identifier for the machine used in the transaction',
	SERVICETYPE VARCHAR(100) COMMENT 'Type of service provided in the transaction',
	PAYMENTTYPE VARCHAR(50) COMMENT 'Method of payment used in the transaction',
	MODEOFSERVICE VARCHAR(50) COMMENT 'Mode of service (e.g., online, in-store)',
	AMOUNT VARCHAR(50) COMMENT 'Amount of the transaction',
	TRANSACTIONDATE VARCHAR(50) COMMENT 'Date when the transaction occurred',
	MACHINEDURATION VARCHAR(50) COMMENT 'Duration of machine usage during the transaction',
	RATING VARCHAR(50) COMMENT 'Customer rating for the transaction',
	FEEDBACK VARCHAR(255) COMMENT 'Customer feedback for the transaction'
);









