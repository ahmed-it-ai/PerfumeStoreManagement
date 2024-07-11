
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 12/21/2023 13:46:52
-- Generated from EDMX file: C:\Users\cw\Desktop\PTM\PTM\PTM\App_Code\Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Database];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_bottle_ToTable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[bottleOfBranch] DROP CONSTRAINT [FK_bottle_ToTable];
GO
IF OBJECT_ID(N'[dbo].[FK_bottleOfBranch_ToTable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[bottleOfBranch] DROP CONSTRAINT [FK_bottleOfBranch_ToTable];
GO
IF OBJECT_ID(N'[dbo].[FK_branch_ToTable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[branch] DROP CONSTRAINT [FK_branch_ToTable];
GO
IF OBJECT_ID(N'[dbo].[FK_employee_ToTable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[employee] DROP CONSTRAINT [FK_employee_ToTable];
GO
IF OBJECT_ID(N'[dbo].[FK_invoice_ToTable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[invoice] DROP CONSTRAINT [FK_invoice_ToTable];
GO
IF OBJECT_ID(N'[dbo].[FK_invoice_ToTable_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[invoice] DROP CONSTRAINT [FK_invoice_ToTable_1];
GO
IF OBJECT_ID(N'[dbo].[FK_invoice_ToTable_2]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[invoice] DROP CONSTRAINT [FK_invoice_ToTable_2];
GO
IF OBJECT_ID(N'[dbo].[FK_oil_of_branch_ToTable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[oil_of_branch] DROP CONSTRAINT [FK_oil_of_branch_ToTable];
GO
IF OBJECT_ID(N'[dbo].[FK_oil_of_branch_ToTable_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[oil_of_branch] DROP CONSTRAINT [FK_oil_of_branch_ToTable_1];
GO
IF OBJECT_ID(N'[dbo].[FK_pay_process_ToTable]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[pay_process] DROP CONSTRAINT [FK_pay_process_ToTable];
GO
IF OBJECT_ID(N'[dbo].[FK_pay_process_ToTable_1]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[pay_process] DROP CONSTRAINT [FK_pay_process_ToTable_1];
GO
IF OBJECT_ID(N'[dbo].[FK_pay_process_ToTable_3]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[pay_process] DROP CONSTRAINT [FK_pay_process_ToTable_3];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[bottle]', 'U') IS NOT NULL
    DROP TABLE [dbo].[bottle];
GO
IF OBJECT_ID(N'[dbo].[bottleOfBranch]', 'U') IS NOT NULL
    DROP TABLE [dbo].[bottleOfBranch];
GO
IF OBJECT_ID(N'[dbo].[branch]', 'U') IS NOT NULL
    DROP TABLE [dbo].[branch];
GO
IF OBJECT_ID(N'[dbo].[client]', 'U') IS NOT NULL
    DROP TABLE [dbo].[client];
GO
IF OBJECT_ID(N'[dbo].[employee]', 'U') IS NOT NULL
    DROP TABLE [dbo].[employee];
GO
IF OBJECT_ID(N'[dbo].[invoice]', 'U') IS NOT NULL
    DROP TABLE [dbo].[invoice];
GO
IF OBJECT_ID(N'[dbo].[oil]', 'U') IS NOT NULL
    DROP TABLE [dbo].[oil];
GO
IF OBJECT_ID(N'[dbo].[oil_of_branch]', 'U') IS NOT NULL
    DROP TABLE [dbo].[oil_of_branch];
GO
IF OBJECT_ID(N'[dbo].[pay_process]', 'U') IS NOT NULL
    DROP TABLE [dbo].[pay_process];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'bottle'
CREATE TABLE [dbo].[bottle] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(18)  NULL,
    [price] int  NULL
);
GO

-- Creating table 'bottleOfBranch'
CREATE TABLE [dbo].[bottleOfBranch] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CountOfBottle] nchar(18)  NULL,
    [bottleId] int  NULL,
    [BranchId] int  NULL
);
GO

-- Creating table 'branch'
CREATE TABLE [dbo].[branch] (
    [Id] int  NOT NULL,
    [Name] nchar(18)  NULL,
    [manager] int  NULL
);
GO

-- Creating table 'client'
CREATE TABLE [dbo].[client] (
    [Id] int  NOT NULL,
    [Name_] nchar(15)  NULL,
    [phone] nchar(11)  NULL
);
GO

-- Creating table 'employee'
CREATE TABLE [dbo].[employee] (
    [Id] int  NOT NULL,
    [Name] nchar(18)  NULL,
    [jop_name] nchar(18)  NULL,
    [start_Date] datetime  NULL,
    [salary] int  NULL,
    [branch_id] int  NULL,
    [password] nchar(18)  NULL,
    [userName] nchar(18)  NULL
);
GO

-- Creating table 'invoice'
CREATE TABLE [dbo].[invoice] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [TotaleCash] int  NULL,
    [DateInvoice] datetime  NULL,
    [seller_id] int  NULL,
    [bransh_id] int  NULL,
    [client_id] int  NULL
);
GO

-- Creating table 'oil'
CREATE TABLE [dbo].[oil] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name_] nchar(18)  NULL,
    [price] int  NULL
);
GO

-- Creating table 'oil_of_branch'
CREATE TABLE [dbo].[oil_of_branch] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [id_oil] int  NULL,
    [id_branch] int  NULL,
    [weight] int  NULL
);
GO

-- Creating table 'pay_process'
CREATE TABLE [dbo].[pay_process] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [oil_id] int  NULL,
    [Quantity_of_oil] int  NULL,
    [price] int  NULL,
    [invoice_id] int  NULL,
    [bottle_id] int  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'bottle'
ALTER TABLE [dbo].[bottle]
ADD CONSTRAINT [PK_bottle]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'bottleOfBranch'
ALTER TABLE [dbo].[bottleOfBranch]
ADD CONSTRAINT [PK_bottleOfBranch]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'branch'
ALTER TABLE [dbo].[branch]
ADD CONSTRAINT [PK_branch]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'client'
ALTER TABLE [dbo].[client]
ADD CONSTRAINT [PK_client]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'employee'
ALTER TABLE [dbo].[employee]
ADD CONSTRAINT [PK_employee]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'invoice'
ALTER TABLE [dbo].[invoice]
ADD CONSTRAINT [PK_invoice]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'oil'
ALTER TABLE [dbo].[oil]
ADD CONSTRAINT [PK_oil]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'oil_of_branch'
ALTER TABLE [dbo].[oil_of_branch]
ADD CONSTRAINT [PK_oil_of_branch]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'pay_process'
ALTER TABLE [dbo].[pay_process]
ADD CONSTRAINT [PK_pay_process]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [bottleId] in table 'bottleOfBranch'
ALTER TABLE [dbo].[bottleOfBranch]
ADD CONSTRAINT [FK_bottleOfBranch_ToTable]
    FOREIGN KEY ([bottleId])
    REFERENCES [dbo].[bottle]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_bottleOfBranch_ToTable'
CREATE INDEX [IX_FK_bottleOfBranch_ToTable]
ON [dbo].[bottleOfBranch]
    ([bottleId]);
GO

-- Creating foreign key on [BranchId] in table 'bottleOfBranch'
ALTER TABLE [dbo].[bottleOfBranch]
ADD CONSTRAINT [FK_bottle_ToTable]
    FOREIGN KEY ([BranchId])
    REFERENCES [dbo].[branch]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_bottle_ToTable'
CREATE INDEX [IX_FK_bottle_ToTable]
ON [dbo].[bottleOfBranch]
    ([BranchId]);
GO

-- Creating foreign key on [bottle_id] in table 'pay_process'
ALTER TABLE [dbo].[pay_process]
ADD CONSTRAINT [FK_pay_process_ToTable_1]
    FOREIGN KEY ([bottle_id])
    REFERENCES [dbo].[bottleOfBranch]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_pay_process_ToTable_1'
CREATE INDEX [IX_FK_pay_process_ToTable_1]
ON [dbo].[pay_process]
    ([bottle_id]);
GO

-- Creating foreign key on [manager] in table 'branch'
ALTER TABLE [dbo].[branch]
ADD CONSTRAINT [FK_branch_ToTable]
    FOREIGN KEY ([manager])
    REFERENCES [dbo].[employee]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_branch_ToTable'
CREATE INDEX [IX_FK_branch_ToTable]
ON [dbo].[branch]
    ([manager]);
GO

-- Creating foreign key on [branch_id] in table 'employee'
ALTER TABLE [dbo].[employee]
ADD CONSTRAINT [FK_employee_ToTable]
    FOREIGN KEY ([branch_id])
    REFERENCES [dbo].[branch]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_employee_ToTable'
CREATE INDEX [IX_FK_employee_ToTable]
ON [dbo].[employee]
    ([branch_id]);
GO

-- Creating foreign key on [bransh_id] in table 'invoice'
ALTER TABLE [dbo].[invoice]
ADD CONSTRAINT [FK_invoice_ToTable_1]
    FOREIGN KEY ([bransh_id])
    REFERENCES [dbo].[branch]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_invoice_ToTable_1'
CREATE INDEX [IX_FK_invoice_ToTable_1]
ON [dbo].[invoice]
    ([bransh_id]);
GO

-- Creating foreign key on [id_branch] in table 'oil_of_branch'
ALTER TABLE [dbo].[oil_of_branch]
ADD CONSTRAINT [FK_oil_of_branch_ToTable]
    FOREIGN KEY ([id_branch])
    REFERENCES [dbo].[branch]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_oil_of_branch_ToTable'
CREATE INDEX [IX_FK_oil_of_branch_ToTable]
ON [dbo].[oil_of_branch]
    ([id_branch]);
GO

-- Creating foreign key on [client_id] in table 'invoice'
ALTER TABLE [dbo].[invoice]
ADD CONSTRAINT [FK_invoice_ToTable_2]
    FOREIGN KEY ([client_id])
    REFERENCES [dbo].[client]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_invoice_ToTable_2'
CREATE INDEX [IX_FK_invoice_ToTable_2]
ON [dbo].[invoice]
    ([client_id]);
GO

-- Creating foreign key on [seller_id] in table 'invoice'
ALTER TABLE [dbo].[invoice]
ADD CONSTRAINT [FK_invoice_ToTable]
    FOREIGN KEY ([seller_id])
    REFERENCES [dbo].[employee]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_invoice_ToTable'
CREATE INDEX [IX_FK_invoice_ToTable]
ON [dbo].[invoice]
    ([seller_id]);
GO

-- Creating foreign key on [invoice_id] in table 'pay_process'
ALTER TABLE [dbo].[pay_process]
ADD CONSTRAINT [FK_pay_process_ToTable]
    FOREIGN KEY ([invoice_id])
    REFERENCES [dbo].[invoice]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_pay_process_ToTable'
CREATE INDEX [IX_FK_pay_process_ToTable]
ON [dbo].[pay_process]
    ([invoice_id]);
GO

-- Creating foreign key on [id_oil] in table 'oil_of_branch'
ALTER TABLE [dbo].[oil_of_branch]
ADD CONSTRAINT [FK_oil_of_branch_ToTable_1]
    FOREIGN KEY ([id_oil])
    REFERENCES [dbo].[oil]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_oil_of_branch_ToTable_1'
CREATE INDEX [IX_FK_oil_of_branch_ToTable_1]
ON [dbo].[oil_of_branch]
    ([id_oil]);
GO

-- Creating foreign key on [oil_id] in table 'pay_process'
ALTER TABLE [dbo].[pay_process]
ADD CONSTRAINT [FK_pay_process_ToTable_3]
    FOREIGN KEY ([oil_id])
    REFERENCES [dbo].[oil_of_branch]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_pay_process_ToTable_3'
CREATE INDEX [IX_FK_pay_process_ToTable_3]
ON [dbo].[pay_process]
    ([oil_id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------