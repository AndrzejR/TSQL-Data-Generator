create table Table1 (
	Table1ID int primary key identity
	, Attribute1 int
	, Attribute2 nvarchar(255)
);

create table Table2 (
	Table2ID int primary key identity
	, Table1ID int foreign key references Table1 (Table1ID)
	, Attribute1 int
	, Attribute2 nvarchar(255)
);
