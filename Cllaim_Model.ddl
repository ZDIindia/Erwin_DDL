
DROP TABLE Fact_Claim
go

DROP TABLE Dim_Date
go

DROP TABLE Dim_Provider
go

DROP TABLE Dim_Location
go

DROP TABLE Dim_Diagnosis
go

CREATE TABLE Dim_Date
( 
	Date_ID              int  NOT NULL ,
	Year_No              int  NULL ,
	Quater_No            int  NULL ,
	Month_No             int  NULL ,
	Day_No               int  NULL ,
	Hour_No              int  NULL 
)
go

CREATE TABLE Dim_Diagnosis
( 
	Diagnosis_ID         int  NOT NULL ,
	ICD10Code            varchar(10)  NULL ,
	Description          varchar(255)  NULL 
)
go

CREATE TABLE Dim_Location
( 
	Location_ID          int  NOT NULL ,
	Address              varchar(255)  NULL ,
	City                 varchar(100)  NULL ,
	State_Name           varchar(2)  NULL ,
	ZIPCode              varchar(10)  NULL 
)
go

CREATE TABLE Dim_Provider
( 
	Provider_ID          int  NOT NULL ,
	ProviderName         varchar(255)  NULL ,
	NPI                  int  NULL 
)
go

CREATE TABLE Fact_Claim
( 
	Claim_ID             int  NOT NULL ,
	Provider_ID          int  NOT NULL ,
	Location_ID          int  NOT NULL ,
	Date_ID              int  NOT NULL ,
	Diagnosis_ID         int  NOT NULL ,
	Procedure_ID         int  NULL ,
	TotalPayments        decimal(10,2)  NULL ,
	Beneficiaries        int  NULL ,
	AveragePayment       decimal(10,2)  NULL ,
	Del_Indr             varchar(20)  NULL 
)
go
