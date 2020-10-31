
RESTORE DATABASE $(baseR) FILE = N'$(baseN)' FROM  DISK = N'C:\PezRes\PruebaB _respaldo.bak' WITH  FILE = 1,  MOVE N'$(baseN)' TO N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\$(baseR).mdf',  MOVE N'$(baseNL)' TO N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\$(baseR)_0.ldf',  NOUNLOAD,  STATS = 10
GO
exit
