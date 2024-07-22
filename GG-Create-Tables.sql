USE master;
GO

IF EXISTS(SELECT name FROM sys.databases WHERE name = 'GG_DB')
     DROP DATABASE GG_DB
GO

CREATE DATABASE GG_DB;
GO
USE GG_DB;
GO

CREATE TABLE [OWNER](
	OwnerID			Int				NOT NULL IDENTITY(1,1),
	OwnerName		Char(50)		NOT NULL,
	OwnerEmail		VarChar(100)	NULL,
	OwnerType		Char(12)		NULL,
	);

CREATE TABLE [PROPERTY](
	PropertyID		Int				NOT NULL IDENTITY(1,1),
	PropertyName	Char(50)		NOT NULL,
	Street			Char(35)		NOT NULL,
	City			Char(35)		NOT NULL,
	[State]			Char(2)			NOT NULL,
	ZIP				Char(10)		NOT NULL,
	OwnerID			Int				NOT NULL,
	);

CREATE TABLE EMPLOYEE(
	EmployeeID		Int				NOT NULL IDENTITY(1,1),
	LastName		Char(25)		NOT NULL,
	FirstName		Char(25)		NOT NULL,
	CellPhone		Char(12)		NOT NULL,
	ExperienceLevel	Char(15)		NOT NULL,
	);

CREATE TABLE [SERVICE](
	PropertyID		Int				NOT NULL,
	EmployeeID		Int				NOT NULL,
	ServiceDate		DateTime		NOT NULL,
	HoursWorked		Numeric (4,2)	NULL,
	);

/********************************************************************************/

-- *******************************************
-- *** Now create constraints before inserting data
-- *******************************************