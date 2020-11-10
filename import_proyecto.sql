--https://docs.microsoft.com/en-us/sql/t-sql/statements/restore-statements-transact-sql?view=sql-server-ver15
RESTORE DATABASE $(baseR) FILE = N'$(baseN)' FROM  DISK = N'$(baseNL)' WITH  FILE = 1,  MOVE N'$(baseN)' TO N'$(ruteImp)\$(baseR).mdf',  MOVE N'$(baseN)_log' TO N'$(ruteImp)\$(baseR)_0.ldf',  NOUNLOAD,  STATS = 10
GO
exit
