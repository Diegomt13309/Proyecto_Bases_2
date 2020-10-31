use $(baseN);
go
--https://docs.microsoft.com/en-us/sql/t-sql/statements/bulk-insert-transact-sql?view=sql-server-ver15
BULK INSERT $(tablaN) FROM 'C:\$(archivoN)' WITH(FIELDTERMINATOR = ',',ROWTERMINATOR = '\n')
GO
exit