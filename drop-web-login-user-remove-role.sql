USE CodesanookMeetup
GO

EXEC sp_droprolemember @rolename = 'DB_DataReader', @membername ='web_user'
GO

DROP USER web_user 
GO

USE MASTER
GO

DROP LOGIN [aaron-mac-pro\web_user];  
GO
