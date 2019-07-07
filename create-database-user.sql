USE CodesanookMeetup
GO

CREATE USER [web-user] FOR LOGIN [aaron-pc\web-user] WITH DEFAULT_SCHEMA = dbo
GO

exec sp_addrolemember @rolename = 'db_owner', @membername = 'web-user'
