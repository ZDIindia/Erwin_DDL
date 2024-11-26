
DROP TABLE CLAIM_DETAILS CASCADE;

DROP TABLE CLAIM_DETAIL CASCADE;

DROP TABLE CLAIM CASCADE;

DROP TABLE MEMBER CASCADE;

DROP TABLE MEMBER_ADDRESS CASCADE;

DROP TABLE PROVIDER CASCADE;

DROP TABLE PROVIDER_SPECIALTY CASCADE;

DROP TABLE PROVIDER_AFFILIATION CASCADE;

CREATE TABLE CLAIM
(
	CLAIM_ID INTEGER NOT NULL ,
	MEMBER_ID INTEGER NOT NULL ,
	PROVIDER_ID INTEGER NOT NULL ,
	CLAIM_DATE DATE NULL ,
	CLAIM_STATUS VARCHAR(20) NULL ,
	CLAIM_AMOUNT DECIMAL(12,2) NULL ,
	PAID_AMOUNT DECIMAL(12,2) NULL ,
	DEL_INDC VARCHAR(20) NULL ,
	ADDRESS_ID INTEGER NOT NULL ,
	AFFILIATION_ID INTEGER NOT NULL ,
	SPECIALTY_ID INTEGER NOT NULL 
);

CREATE TABLE CLAIM_DETAILS
(
	CLAIM_ID INTEGER NOT NULL ,
	NO_OF_CLAIMS INTEGER NULL ,
	PROVIDER_ID INTEGER NOT NULL ,
	MEMBER_ID INTEGER NOT NULL ,
	ADDRESS_ID INTEGER NOT NULL ,
	AFFILIATION_ID INTEGER NOT NULL ,
	SPECIALTY_ID INTEGER NOT NULL ,
	NO_OF_MEMBERS INTEGER NULL 
);

CREATE TABLE CLAIM_DETAIL
(
	CLAIM_DETAIL_ID INTEGER NOT NULL ,
	CLAIM_ID INTEGER NOT NULL ,
	PROCEDURE_CODE VARCHAR(10) NULL ,
	DIAGNOSIS_CODE VARCHAR(10) NULL ,
	SERVICE_DATE DATE NULL ,
	CHARGE_AMOUNT DECIMAL(12,2) NULL ,
	PROVIDER_ID INTEGER NOT NULL ,
	MEMBER_ID INTEGER NOT NULL ,
	ADDRESS_ID INTEGER NOT NULL ,
	AFFILIATION_ID INTEGER NOT NULL ,
	SPECIALTY_ID INTEGER NOT NULL 
);

CREATE TABLE MEMBER
(
	MEMBER_ID INTEGER NOT NULL ,
	MEMBER_NAME VARCHAR(20) NULL ,
	GENDER VARCHAR(1) NULL ,
	DATE_OF_BIRTH DATE NULL ,
	MEMBER_SSN VARCHAR(20) NULL ,
	ADDRESS_ID INTEGER NOT NULL 
);

CREATE TABLE MEMBER_ADDRESS
(
	ADDRESS_ID INTEGER NOT NULL ,
	MEMBER_ID INTEGER NULL ,
	ADDRESS_LINE1 VARCHAR(100) NULL ,
	ADDRESS_LINE2 VARCHAR(100) NULL ,
	CITY VARCHAR(50) NULL ,
	STATE_NAME VARCHAR(50) NULL ,
	ZIP_CODE VARCHAR(10) NULL ,
	COUNTRY VARCHAR(50) NULL ,
	IS_PRIMARY BOOLEAN NULL 
);

CREATE TABLE PROVIDER
(
	PROVIDER_ID INTEGER NOT NULL ,
	FIRST_NAME VARCHAR(50) NULL ,
	LAST_NAME VARCHAR(50) NULL ,
	NPI_NUMBER VARCHAR(20) NULL ,
	SPECIALTY_ID INTEGER NOT NULL ,
	PHONE_NUMBER VARCHAR(15) NULL ,
	EMAIL VARCHAR(100) NULL ,
	CREATED_ON TIMESTAMP NULL ,
	UPDATED_ON TIMESTAMP NULL ,
	AFFILIATION_ID INTEGER NOT NULL 
);

CREATE TABLE PROVIDER_AFFILIATION
(
	AFFILIATION_ID INTEGER NOT NULL ,
	PROVIDER_ID INTEGER NULL ,
	FACILITY_NAME VARCHAR(100) NULL ,
	FACILITY_ADDRESS VARCHAR(255) NULL ,
	START_DATE DATE NULL ,
	END_DATE DATE NULL 
);

CREATE TABLE PROVIDER_SPECIALTY
(
	SPECIALTY_ID INTEGER NOT NULL ,
	SPECIALTY_NAME VARCHAR(50) NULL ,
	SPECIALTY_DESCRIPTION VARCHAR(50) NULL ,
	DEL_INDC VARCHAR(20) NULL ,
	CRE_USR_DT DATE NULL ,
	CRE_USR_ID VARCHAR(20) NULL 
);
