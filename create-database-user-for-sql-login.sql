USE CodesanookMeetup
GO

CREATE USER [sql_user] FOR LOGIN [sql_user] WITH DEFAULT_SCHEMA = dbo
GO

exec sp_addrolemember @rolename = 'db_owner', @membername = 'web-user'
