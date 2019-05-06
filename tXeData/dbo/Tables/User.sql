CREATE TABLE [dbo].[User]
(
	[AuthUserId] NVARCHAR(128) PRIMARY KEY, 
    [FirstName] NVARCHAR(50) NULL, 
    [LastName] NVARCHAR(50) NULL, 
    [EmailAddress] NVARCHAR(256) NULL, 
    [CreatedDate] DATETIME2 NULL DEFAULT getutcdate()
)
