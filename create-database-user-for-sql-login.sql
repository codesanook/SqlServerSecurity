USE CodesanookMeetup
GO

CREATE USER [sql-user] FOR LOGIN [sql-user] WITH DEFAULT_SCHEMA = dbo
GO

exec sp_addrolemember @rolename = 'db_owner', @membername = 'web-user'
