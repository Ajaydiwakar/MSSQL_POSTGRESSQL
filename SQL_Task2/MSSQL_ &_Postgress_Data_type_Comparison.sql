Create table Comparison
(
Microsoft_SQL_Server varchar(150),
Details varchar(150),
PostgresSQL varchar(150)
)



INSERT INTO Comparison values('BIGINT'	, ' 64-bit integer'	,  'BIGINT' );
INSERT INTO Comparison values('BINARY(n)',	'Fixed length byte string' ,	'BYTEA');
INSERT INTO Comparison values('BIT','1, 0 or NULL',	'BOOLEAN')
INSERT INTO Comparison values('CHAR(n)	','Fixed length char string 1 <= n <= 8000',	'CHAR(n)')
INSERT INTO Comparison values('VARCHAR(n)','Variable length char string 1 <= n <= 8000' ,'	VARCHAR(n)')
INSERT INTO Comparison values('VARCHAR(max)','Variable length char string <= 2GB','TEXT')
INSERT INTO Comparison values('VARBINARY(n)','Variable length byte string 1 <= n <= 8000','	BYTEA')
INSERT INTO Comparison values('VARBINARY(max)',	'Variable length byte string  <= 2GB',	'BYTEA')
INSERT INTO Comparison values('NVARCHAR(n)','Variable length Unicode UCS-2 string','VARCHAR(n)')
INSERT INTO Comparison values('NVARCHAR(max)','Variable length Unicode UCS-2 data, <= 2GB','TEXT')
INSERT INTO Comparison values('TEXT','Variable length character data <= 2GB','TEXT')
INSERT INTO Comparison values('NTEXT','	Variable length Unicode UCS-2 data <= 2GB','TEXT')
INSERT INTO Comparison values('DOUBLE PRECISION','Double precision floating point number','DOUBLE PRECISION')
INSERT INTO Comparison values('FLOAT(p)','Floating point number','DOUBLE PRECISION')
INSERT INTO Comparison values('INTEGER','32 bit integer','INTEGER')
INSERT INTO Comparison values('NUMERIC(p,s)','Fixed point number','NUMERIC(p,s)')
INSERT INTO Comparison values('DATE','Date includes year, month and day','DATE')
INSERT INTO Comparison values('DATETIME','Date and Time with fraction','TIMESTAMP(3)')
INSERT INTO Comparison values('DATETIME2(p)','Date and Time with fraction','TIMESTAMP(n)')
INSERT INTO Comparison values('DATETIMEOFFSET(p)','Date and Time with fraction and time zone','TIMESTAMP(p) WITH TIME ZONE')
INSERT INTO Comparison values('SMALLDATETIME','Date and Time','TIMESTAMP(0)')
INSERT INTO Comparison values('TINYINT','8 bit unsigned integer, 0 to 255','SMALLINT')
INSERT INTO Comparison values('UNIQUEIDENTIFIER','16 byte GUID(UUID) data','CHAR(16)')
INSERT INTO Comparison values('ROWVERSION','Automatically updated binary data','BYTEA')
INSERT INTO Comparison values('SMALLMONEY','32 bit currency amount','MONEY')
INSERT INTO Comparison values('IMAGE','Variable length binary data <= 2GB','BYTEA')

Select *from Comparison