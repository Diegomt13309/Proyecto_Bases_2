--https://docs.microsoft.com/en-us/sql/t-sql/statements/backup-transact-sql?view=sql-server-ver15
BACKUP DATABASE $(baseN)
 TO DISK = 'C:\$(directN)\export\$(baseN)_respaldo.bak'
    WITH FORMAT;
GO
exit


