
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/18/2017 11:53:06
-- Generated from EDMX file: F:\MSIT11730305\LINQ&Lambda\ModelFirst\ModelFirst\MyAppModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Northwind];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_Guest_inherits_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserSet_Guest] DROP CONSTRAINT [FK_Guest_inherits_User];
GO
IF OBJECT_ID(N'[dbo].[FK_Member_inherits_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserSet_Member] DROP CONSTRAINT [FK_Member_inherits_User];
GO
IF OBJECT_ID(N'[dbo].[FK_Admin_inherits_User]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[UserSet_Admin] DROP CONSTRAINT [FK_Admin_inherits_User];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[UserSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserSet];
GO
IF OBJECT_ID(N'[dbo].[UserSet_Guest]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserSet_Guest];
GO
IF OBJECT_ID(N'[dbo].[UserSet_Member]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserSet_Member];
GO
IF OBJECT_ID(N'[dbo].[UserSet_Admin]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserSet_Admin];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'UserSet'
CREATE TABLE [dbo].[UserSet] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nchar(8)  NOT NULL
);
GO

-- Creating table 'UserSet_Guest'
CREATE TABLE [dbo].[UserSet_Guest] (
    [Disable] bit  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'UserSet_Member'
CREATE TABLE [dbo].[UserSet_Member] (
    [Password] varbinary(max)  NOT NULL,
    [Id] int  NOT NULL
);
GO

-- Creating table 'UserSet_Admin'
CREATE TABLE [dbo].[UserSet_Admin] (
    [Id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'UserSet'
ALTER TABLE [dbo].[UserSet]
ADD CONSTRAINT [PK_UserSet]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserSet_Guest'
ALTER TABLE [dbo].[UserSet_Guest]
ADD CONSTRAINT [PK_UserSet_Guest]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserSet_Member'
ALTER TABLE [dbo].[UserSet_Member]
ADD CONSTRAINT [PK_UserSet_Member]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UserSet_Admin'
ALTER TABLE [dbo].[UserSet_Admin]
ADD CONSTRAINT [PK_UserSet_Admin]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Id] in table 'UserSet_Guest'
ALTER TABLE [dbo].[UserSet_Guest]
ADD CONSTRAINT [FK_Guest_inherits_User]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[UserSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'UserSet_Member'
ALTER TABLE [dbo].[UserSet_Member]
ADD CONSTRAINT [FK_Member_inherits_User]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[UserSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Id] in table 'UserSet_Admin'
ALTER TABLE [dbo].[UserSet_Admin]
ADD CONSTRAINT [FK_Admin_inherits_User]
    FOREIGN KEY ([Id])
    REFERENCES [dbo].[UserSet]
        ([Id])
    ON DELETE CASCADE ON UPDATE NO ACTION;
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------