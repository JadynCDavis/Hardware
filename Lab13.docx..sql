BACKUP DATABASE [Lab10_HSD] TO  
DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER01\MSSQL\Backup\HSD_BACKUP.BAK' 
WITH NOFORMAT, INIT,  NAME = N'Lab10_HSD-Full Database Backup', 
SKIP, NOREWIND, NOUNLOAD, COMPRESSION,  STATS = 10
GO

--7
DELETE FROM [CONTACT];
SELECT * FROM [Lab10_HSD]. [dbo]. [CONTACT];