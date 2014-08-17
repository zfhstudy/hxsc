
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 07/06/2014 01:09:15
-- Generated from EDMX file: E:\Work\海峡书城\FzCompany.HXSC\FzCompany.HXSC.EfModel\HXSCEFModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [HXSC];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Bill]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Bill];
GO
IF OBJECT_ID(N'[dbo].[Item]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Item];
GO
IF OBJECT_ID(N'[dbo].[OrderD]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OrderD];
GO
IF OBJECT_ID(N'[dbo].[OrderH]', 'U') IS NOT NULL
    DROP TABLE [dbo].[OrderH];
GO
IF OBJECT_ID(N'[dbo].[UserInfo]', 'U') IS NOT NULL
    DROP TABLE [dbo].[UserInfo];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Item'
CREATE TABLE [dbo].[Item] (
    [Itemid] int IDENTITY(1,1) NOT NULL,
    [Itemna] varchar(50)  NULL,
    [Directoryid] int  NULL,
    [Isbn] varchar(50)  NULL,
    [Languageid] int  NULL,
    [Code] varchar(50)  NULL,
    [Cnmarc] varchar(250)  NULL,
    [Cip] varchar(250)  NULL,
    [Originalna] varchar(250)  NULL,
    [Originallanguageid] int  NULL,
    [Originalprice] float  NULL,
    [Originalcountryid] int  NULL,
    [Press] varchar(250)  NULL,
    [Price] float  NULL,
    [Editiontiem] datetime  NULL,
    [Firsteditiontime] datetime  NULL,
    [Edition] int  NULL,
    [Timex] int  NULL,
    [Volume] int  NULL,
    [Volumesize] int  NULL,
    [Author] varchar(250)  NULL,
    [Translator] varchar(250)  NULL,
    [Compilingmethodid] int  NULL,
    [Chief] varchar(250)  NULL,
    [Wordsnumber] int  NULL,
    [Pagenumber] int  NULL,
    [Editorcharge] varchar(250)  NULL,
    [Booknumber] int  NULL,
    [Editorcopy] varchar(250)  NULL,
    [Deitorplanning] varchar(250)  NULL,
    [Deitoracquiring] varchar(250)  NULL,
    [PlateDesign] varchar(250)  NULL,
    [CoverDesign] varchar(250)  NULL,
    [OverallDesign] varchar(250)  NULL,
    [Published] varchar(250)  NULL,
    [Reader] varchar(250)  NULL,
    [Draw] varchar(250)  NULL,
    [Typesetting] varchar(250)  NULL,
    [Printing] varchar(250)  NULL,
    [Createtime] datetime  NULL,
    [ShelfTime] datetime  NULL,
    [Maxnumber] int  NULL,
    [Number] int  NULL,
    [Start] int  NULL,
    [Undertime] datetime  NULL,
    [Coverurl] varchar(250)  NULL,
    [Filerul] varchar(250)  NULL,
    [Itemkey] varchar(250)  NULL,
    [Ebook] bit  NULL
);
GO

-- Creating table 'OrderD'
CREATE TABLE [dbo].[OrderD] (
    [Orderhid] varchar(50)  NOT NULL,
    [Serial] int  NULL,
    [Itemid] int  NULL,
    [Number] int  NULL,
    [Price] float  NULL,
    [Amt] float  NULL,
    [Discount] float  NULL,
    [Realamt] float  NULL,
    [Start] int  NULL,
    [Createtime] datetime  NULL
);
GO

-- Creating table 'OrderH'
CREATE TABLE [dbo].[OrderH] (
    [OrderhId] varchar(32)  NOT NULL,
    [UserId] varchar(32)  NULL,
    [CreateTime] datetime  NULL,
    [Start] int  NULL,
    [Amt] float  NULL,
    [Discount] float  NULL,
    [Realamt] float  NULL,
    [Phone] varchar(20)  NULL,
    [ReceiveAddress] varchar(250)  NULL,
    [Express] varchar(50)  NULL,
    [ExpressNo] varchar(15)  NULL,
    [ExpressTime] datetime  NULL,
    [Source] varchar(15)  NULL
);
GO

-- Creating table 'UserInfo'
CREATE TABLE [dbo].[UserInfo] (
    [Userid] varchar(50)  NOT NULL,
    [Userna] varchar(20)  NULL,
    [UserName] varchar(20)  NULL,
    [Pwd] varchar(50)  NULL,
    [Verification] varchar(20)  NULL,
    [Birthday] datetime  NULL,
    [CreateTime] datetime  NULL,
    [Start] int  NULL,
    [ImageUrl] varchar(250)  NULL,
    [Balance] float  NULL,
    [Sex] varchar(2)  NULL,
    [CountryId] int  NULL,
    [ProvinceId] int  NULL,
    [CityId] int  NULL,
    [RegionId] int  NULL,
    [Street] varchar(250)  NULL,
    [WorkId] int  NULL,
    [WorkDetail] varchar(250)  NULL,
    [Phone] varchar(50)  NULL
);
GO

-- Creating table 'Bill'
CREATE TABLE [dbo].[Bill] (
    [Billid] int IDENTITY(1,1) NOT NULL,
    [Createtime] datetime  NOT NULL,
    [Amt] float  NOT NULL,
    [Isexpend] bit  NOT NULL,
    [Bank] varchar(50)  NOT NULL,
    [Countryid] int  NOT NULL,
    [Orderid] varchar(50)  NOT NULL,
    [Purpose] varchar(50)  NOT NULL,
    [Source] varchar(50)  NOT NULL,
    [Userid] varchar(50)  NOT NULL
);
GO

-- Creating table 'Favorites'
CREATE TABLE [dbo].[Favorites] (
    [FavoritesId] int IDENTITY(1,1) NOT NULL,
    [Userid] nvarchar(50)  NOT NULL,
    [ItemId] int  NOT NULL,
    [Createtime] datetime  NOT NULL,
    [State] int  NOT NULL,
    [DelTime] datetime  NOT NULL,
    [Source] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Itemid] in table 'Item'
ALTER TABLE [dbo].[Item]
ADD CONSTRAINT [PK_Item]
    PRIMARY KEY CLUSTERED ([Itemid] ASC);
GO

-- Creating primary key on [Orderhid] in table 'OrderD'
ALTER TABLE [dbo].[OrderD]
ADD CONSTRAINT [PK_OrderD]
    PRIMARY KEY CLUSTERED ([Orderhid] ASC);
GO

-- Creating primary key on [OrderhId] in table 'OrderH'
ALTER TABLE [dbo].[OrderH]
ADD CONSTRAINT [PK_OrderH]
    PRIMARY KEY CLUSTERED ([OrderhId] ASC);
GO

-- Creating primary key on [Userid] in table 'UserInfo'
ALTER TABLE [dbo].[UserInfo]
ADD CONSTRAINT [PK_UserInfo]
    PRIMARY KEY CLUSTERED ([Userid] ASC);
GO

-- Creating primary key on [Billid] in table 'Bill'
ALTER TABLE [dbo].[Bill]
ADD CONSTRAINT [PK_Bill]
    PRIMARY KEY CLUSTERED ([Billid] ASC);
GO

-- Creating primary key on [FavoritesId] in table 'Favorites'
ALTER TABLE [dbo].[Favorites]
ADD CONSTRAINT [PK_Favorites]
    PRIMARY KEY CLUSTERED ([FavoritesId] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------