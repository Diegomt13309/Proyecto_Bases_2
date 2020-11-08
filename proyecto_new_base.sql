--https://docs.microsoft.com/en-us/sql/ssms/scripting/sqlcmd-use-with-scripting-variables?view=sql-server-ver1trim

create database $(baseN); 
go
SELECT 'Base: $(baseN) creada con exito';
go
exit 

