USE CodesanookMeetup
GO

EXEC sp_addrolemember @rolename = 'DB_DataReader',
@membername = 'sql_user'
GO
