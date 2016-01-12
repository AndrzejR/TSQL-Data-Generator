declare @cnt int = 1000
, @rand1 float
, @rand2 float;


declare @i int = 0;
while @i < @cnt
begin

set @rand1 = rand()
set @rand2 = rand()

-- turn rand into an int
declare @att1 int;
set @att1 = cast(@rand1 * 2147483647 as int)

-- turn rand into a string
declare @att2 nvarchar(255);
set @att2 = 'a'


insert into dbo.Table1 (Attribute1, Attribute2)
values (@att1, @att2)
set @i += 1

end
