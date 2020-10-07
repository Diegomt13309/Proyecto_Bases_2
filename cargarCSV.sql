use $(baseN);
go
BULK INSERT $(tablaN) FROM 'C:\$(archivoN)' WITH(FIELDTERMINATOR = ',',ROWTERMINATOR = '\n')
GO