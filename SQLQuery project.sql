CREATE TABLE Course1(
	MerID CHAR(8) NOT NULL,
	Price_number int NOT NULL,
	Title VARCHAR(30) NOT NULL,
	PubID CHAR(8) NOT NULL,
	Amount INT NOT NULL,
	PRIMARY KEY(MerID),
);

CREATE TABLE Books1(
	MerID CHAR(8) NOT NULL,
	ISBN CHAR(13) NOT NULL,
	Category VARCHAR(30) NOT NULL,
	PRIMARY KEY(MerID),
);

CREATE TABLE BookAuthors1(
	MerID CHAR(8) NOT NULL,
	Author VARCHAR(30) NOT NULL,
	PRIMARY KEY(MerID, Author),
);

CREATE TABLE Teacher(
	MerID CHAR(8) NOT NULL,
	Genre VARCHAR(30) NOT NULL,
	PRIMARY KEY(MerID)
);

CREATE TABLE teacherDepart(
	MerID CHAR(8) NOT NULL,
	Artist VARCHAR(30) NOT NULL,
	PRIMARY KEY(MerID, Artist)
);

CREATE TABLE SchoolInfo(
	WareID CHAR(8) NOT NULL,
	Capacity INT NOT NULL DEFAULT 5000000,
	State VARCHAR(30) NOT NULL,
	City VARCHAR(30) NOT NULL,
	Street VARCHAR(30) NOT NULL,
	ZIP CHAR(5) NOT NULL,
	PRIMARY KEY(WareID)
);

CREATE TABLE Principal(
	PubID CHAR(8) NOT NULL,
	Pname VARCHAR(30) NOT NULL,
	Phone CHAR(10) NOT NULL,
State VARCHAR(30) NOT NULL,
City VARCHAR(30) NOT NULL,
Street VARCHAR(30) NOT NULL,
ZIP CHAR(5) NOT NULL,
PRIMARY KEY (PubID)
);

CREATE TABLE Staff(
TransID CHAR(8) NOT NULL,
MerID CHAR(8) NOT NULL,
Account CHAR(8) NOT NULL,
Amount INT NOT NULL,
SDate DATE, 
PRIMARY KEY (TransID),
);

CREATE TABLE Student(
Pwd VARCHAR(30) NOT NULL,
Name VARCHAR(30),
Email VARCHAR(30) NOT NULL,
Gender CHAR(1),
PRIMARY KEY (Pwd)
);

INSERT INTO Books1(
	MerID,
	ISBN,
	Category
	)
VALUES (
	'M0000200',
	'738246671',
	'Computer Science'
	);
select * from Books1

INSERT INTO Course1(
	MerID,
	Price_number,
	Title,
	PubID,
	Amount
	)
VALUES (
	'M0000200',
	42.5,
	'Computer',
	'P2000015',
	300
	);

INSERT INTO Course(
	MerID,
	Price_number,
	Title,
	PubID,
	Amount
	)
VALUES (
	'M0000500',
	42.5,
	'Mathematics',
	'P3000015',
	400
	);

 --2. Insert a new teacher

INSERT INTO Teacher(
	MerID,
	Genre
	)
VALUES (
	'M0000201',
	'Mrs.Amir'
	);
select * from Teacher

INSERT INTO Course(
	MerID,
	Price_number,
	Title,
	PubID,
	Amount
	)
VALUES (
	'M0000201',
	77.5,
	'Science',
	'P2000015',
	300
	);

select * from Course1

 --3. Insert a new author

INSERT INTO BookAuthors1(
	MerID,
	Author
	)
VALUES (
	'M0000200',
	'Charles Keith'
	);
select * from BookAuthors1

 --4. Insert a new depart

INSERT INTO teacherDepart(
	MerID,
	Artist
	)
VALUES (
	'M0000201',
	'Science'
	);
select * from teacherDepart

 --5. Insert principal

INSERT INTO Principal(
	PubID,
	Pname,
	Phone,
	State,
	City,
	Street,
	ZIP
	)
VALUES (
	'P2000088',
	'Miss Hira',
	'6146786521',
	'Pakistan',
	'Karachi',
	'Gulistan-e-Johar',
	'94104'
	);
select * from Principal


INSERT INTO Student(
	Pwd,
	Name,
	Email,
	Gender)
VALUES (
	'1543892432',
	'Nimra Khan',
	'NiKhan@gmail.com',
	'F'
	);
select * from Student

 --6. Insert a SchoolInfo

INSERT INTO SchoolInfo(
	WareID,
	Capacity,
	State,
	City,
	Street,
	ZIP
	)
VALUES (
	'W0000042',
	50000,
	'Pakistan',
	'Karachi',
	'1152 N High St',
	'43201'
	);
select * from SchoolInfo

 --7. Insert a staff record

INSERT INTO Staff (
	TransID,
	MerID,
	Account,
	Amount,
	SDate
	)
VALUES (
	'T0000150',
	'M0000060',
	'A0000023',
	300,
	'8/19/17'
	);
select * from Staff

--deletion

DELETE 
FROM BookAuthors
WHERE BookAuthors.Author = 'AU000151';

DELETE 
FROM BookAuthors1
WHERE BookAuthors1.MerID = 'M0000200';

DELETE
FROM Staff
WHERE Staff.MerID = 'M0000200';

DELETE
FROM Books1
WHERE Books1.MerID = 'M0000200';

DELETE
FROM Course1
WHERE Course1.MerID = 'M0000500';

DELETE 
FROM Teacher
WHERE Teacher.MerID = 'M0000201';

DELETE 
FROM teacherDepart
WHERE teacherDepart.MerID = 'M00000201'

DELETE 
FROM SchoolInfo
WHERE SchoolInfo.Capacity = '5000'

DELETE 
FROM Principal
WHERE Principal.City = 'Karachi'

DELETE 
FROM Student
WHERE Student.Gender = 'Female'

CREATE VIEW ConsumptionOnBook209
AS SELECT Title, Price_number 
FROM Course C, Books B

SELECT Title, Price_number as 'Money_spent_on_Books' from Course


