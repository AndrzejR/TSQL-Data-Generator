declare @sql nvarchar(max)
, @Table nvarchar(255);

declare C cursor for 
	select TABLE_NAME from [DataGenerator].[INFORMATION_SCHEMA].[TABLES] where TABLE_NAME <> 'sysdiagrams';
open C;
fetch next from C into @Table;
while @@FETCH_STATUS = 0
begin
	set @sql = 'select * from ' + @Table;
	execute sp_executesql @sql;
	fetch next from C into @Table;
end
close C;
deallocate C;
