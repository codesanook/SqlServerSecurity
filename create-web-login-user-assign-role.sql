USE MASTER
GO

CREATE LOGIN [aaron-mac-pro\web_user] FROM WINDOWS WITH DEFAULT_DATABASE = CodesanookMeetup
GO

USE CodesanookMeetup
GO

CREATE USER web_user FOR LOGIN [aaron-mac-pro\web_user] WITH DEFAULT_SCHEMA = dbo
GO

EXEC sp_addrolemember @rolename = 'DB_DataReader', @membername = 'web_user'
GO