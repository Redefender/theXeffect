CREATE TABLE [dbo].[Habit]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] VARCHAR(50) NOT NULL, 
    [UserId] NVARCHAR(128) NULL, 
    CONSTRAINT FK_Habit_ToUser FOREIGN KEY (UserId) REFERENCES [User] ([AuthUserId])
)
