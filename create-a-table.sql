USE CodesanookMeetup
GO

CREATE TABLE [dbo].[Users] (
    [Id] [INT] NOT NULL PRIMARY KEY IDENTITY(1,1),
    [FirstName] [nvarchar](50) NOT NULL,
    [LastName] [nvarchar](50) NOT NULL,
    [DateOfBirth] [datetime] NULL
)

GO

