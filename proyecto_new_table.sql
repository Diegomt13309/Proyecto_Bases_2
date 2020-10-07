
CREATE TABLE $(base).dbo.$(tablaN) (
--falta definir el nombre de las columnas, para usar el excel
    Species varchar(50),
    Yyear int,
    Vvariable varchar(50),
    Units varchar(20),
    Magnitude varchar(20),
	Source varchar(30),
	Data_Value float,
	Flag varchar(1)
); 
go
exit 
