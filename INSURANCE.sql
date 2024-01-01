-- CREATING INSURANCE DATABASE
CREATE DATABASE INSURANCE;

-- USING INSURANCE DATABASE
USE INSURANCE;

-- CREATE PERSON TABLE
CREATE TABLE PERSON(
DRIVER_ID INT PRIMARY KEY,
DNAME VARCHAR(30),
ADDRESS VARCHAR(200)
);


-- CREATE CAR TABLE
CREATE TABLE CAR(
REG_NO VARCHAR(20) PRIMARY KEY,
MODEL VARCHAR(50),
YEAR INT
);


-- CREATE ACCINDENT TABLE
CREATE TABLE ACCIDENT(
REPORT_NO INT PRIMARY KEY,
ACC_DATE DATE,
LOCATION VARCHAR(100)
);

-- CREATE OWNS TABLE
CREATE TABLE OWNS(
DRIVER_ID INT ,
REG_NO VARCHAR(20),
PRIMARY KEY(DRIVER_ID,REG_NO),
FOREIGN KEY (DRIVER_ID) REFERENCES PERSON (DRIVER_ID),
FOREIGN KEY (REG_NO) REFERENCES CAR(REG_NO)
);

-- CREATE PARTICIPATED TABELE
CREATE TABLE PARTICIPATED(
DRIVER_ID INT ,
REG_NO VARCHAR(20),
REPORT_NO INT,
DAMAGE_AMOUNT INT,
PRIMARY KEY(DRIVER_ID,REG_NO,REPORT_NO),
FOREIGN KEY(DRIVER_ID) REFERENCES PERSON(DRIVER_ID),
FOREIGN KEY(REG_NO) REFERENCES CAR(REG_NO),
FOREIGN KEY(REPORT_NO) REFERENCES ACCIDENT(REPORT_NO)
);


-- INSERT DATA INTO PERSON TABLE
INSERT INTO PERSON (DRIVER_ID,DNAME,ADDRESS)
VALUES
(101,'DRIVER 1','RANCHI'),
(102,'DRIVER 2','MUMBAI'),
(103,'DRIVER 3','KOLKATA'),
(104,'DRIVER 4','CHENNAI'),
(105,'DRIVER 5','BENGALURU');

-- INSERT DATA INTO CAR TABLE
INSERT INTO CAR(REG_NO,MODEL,YEAR)
VALUES
('R01','SEDAN','2001'),
('R02','SPORTS','2002'),
('R03','XUV','2003'),
('R04','HATCHBACK','2004'),
('R05','SUV','2005');

-- INSERT DATA INTO ACCIDENT TABLE
INSERT INTO ACCIDENT(REPORT_NO,ACC_DATE,LOCATION)
VALUES
(111,'2020-12-11','MADRASS'),
(112,'2020-12-12','MUMBAI'),
(113,'2020-12-13','KOLKATA'),
(114,'2020-12-14','MYSORE'),
(115,'2020-12-15','DELHI');


-- INSERT DATA INTO OWNS TABLE
INSERT INTO OWNS(DRIVER_ID,REG_NO)
VALUES
(101,'R01'),
(102,'R02'),
(103,'R03'),
(104,'R04'),
(105,'R05');

-- INSERT DATA INTO PARTICIAPTED TABLE
INSERT INTO PARTICIPATED (DRIVER_ID,REG_NO,REPORT_NO,DAMAGE_AMOUNT)
VALUES
(101,'R01',111,9999),
(102,'R02',112,8888),
(103,'R03',113,7777),
(104,'R04',114,6666),
(105,'R05',115,5555);