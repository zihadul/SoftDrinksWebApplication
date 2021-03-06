USE [master]
GO
/****** Object:  Database [SoftDrinksDB]    Script Date: 08/08/2015 12:08:28 ******/
CREATE DATABASE [SoftDrinksDB] ON  PRIMARY 
( NAME = N'SoftDrinksDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\SoftDrinksDB.mdf' , SIZE = 2048KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'SoftDrinksDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10.SQLEXPRESS\MSSQL\DATA\SoftDrinksDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [SoftDrinksDB] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SoftDrinksDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SoftDrinksDB] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [SoftDrinksDB] SET ANSI_NULLS OFF
GO
ALTER DATABASE [SoftDrinksDB] SET ANSI_PADDING OFF
GO
ALTER DATABASE [SoftDrinksDB] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [SoftDrinksDB] SET ARITHABORT OFF
GO
ALTER DATABASE [SoftDrinksDB] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [SoftDrinksDB] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [SoftDrinksDB] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [SoftDrinksDB] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [SoftDrinksDB] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [SoftDrinksDB] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [SoftDrinksDB] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [SoftDrinksDB] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [SoftDrinksDB] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [SoftDrinksDB] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [SoftDrinksDB] SET  DISABLE_BROKER
GO
ALTER DATABASE [SoftDrinksDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [SoftDrinksDB] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [SoftDrinksDB] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [SoftDrinksDB] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [SoftDrinksDB] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [SoftDrinksDB] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [SoftDrinksDB] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [SoftDrinksDB] SET  READ_WRITE
GO
ALTER DATABASE [SoftDrinksDB] SET RECOVERY SIMPLE
GO
ALTER DATABASE [SoftDrinksDB] SET  MULTI_USER
GO
ALTER DATABASE [SoftDrinksDB] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [SoftDrinksDB] SET DB_CHAINING OFF
GO
USE [SoftDrinksDB]
GO
/****** Object:  Table [dbo].[UserTBL]    Script Date: 08/08/2015 12:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserTBL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Password] [varchar](50) NOT NULL,
	[Address] [text] NOT NULL,
	[UserType] [varchar](50) NOT NULL,
 CONSTRAINT [PK_UserTBL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[UserTBL] ON
INSERT [dbo].[UserTBL] ([Id], [Name], [Email], [Password], [Address], [UserType]) VALUES (1, N'Rajon', N'rajon@mail.com', N'12345', N'Pirgonj, Rangpur', N'Administrator')
SET IDENTITY_INSERT [dbo].[UserTBL] OFF
/****** Object:  Table [dbo].[DrinksTBL]    Script Date: 08/08/2015 12:08:29 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DrinksTBL](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[Flavors] [varchar](50) NOT NULL,
	[Price] [decimal](18, 0) NOT NULL,
	[OriginCountry] [varchar](50) NOT NULL,
	[Quantity] [varchar](50) NOT NULL,
	[Review] [text] NOT NULL,
	[Image] [varchar](50) NULL,
 CONSTRAINT [PK_DrinksTBL] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[DrinksTBL] ON
INSERT [dbo].[DrinksTBL] ([Id], [Name], [Type], [Flavors], [Price], [OriginCountry], [Quantity], [Review], [Image]) VALUES (1, N'Coca-Cola Classic', N'Soft Drinks', N'Caffeine', CAST(20 AS Decimal(18, 0)), N'America', N'250ml', N'Coca Cola Classic is the world''s most popular caffeinated soft drink and it is made by the Coca Cola Company, one of the largest companies in the world. ', N'../images/DrinksImages/coca-cola-classic.jpg')
INSERT [dbo].[DrinksTBL] ([Id], [Name], [Type], [Flavors], [Price], [OriginCountry], [Quantity], [Review], [Image]) VALUES (2, N'Pepsi Cola', N'Soft Drinks', N'Caffeine', CAST(30 AS Decimal(18, 0)), N'America', N'300ml', N'It has come to our attention that Pepsi Cola has a different formulation in the UK and other markets and thus has a lower caffeine content there. It contains 37.6mg per 12 fluid ounce (355ml) can.', N'../images/DrinksImages/pepsi-cola.jpg')
INSERT [dbo].[DrinksTBL] ([Id], [Name], [Type], [Flavors], [Price], [OriginCountry], [Quantity], [Review], [Image]) VALUES (3, N'Fanta', N'Soft Drinks', N'Orange', CAST(30 AS Decimal(18, 0)), N'America', N'300ml', N'Fanta Soda made by Coca-Cola comes in over 70 flavors around the world, but their most popular flavor is Fanta Orange.', N'../images/DrinksImages/fanta-soft-drinks.jpg')
INSERT [dbo].[DrinksTBL] ([Id], [Name], [Type], [Flavors], [Price], [OriginCountry], [Quantity], [Review], [Image]) VALUES (4, N'Organic Pear', N'Juice', N'Pear', CAST(60 AS Decimal(18, 0)), N'India', N'1 Litter', N'This company''s environmental policies, practices and performance place it among the best 50% of companies rated by GoodGuide.', N'../images/DrinksImages/Pear.jpg')
INSERT [dbo].[DrinksTBL] ([Id], [Name], [Type], [Flavors], [Price], [OriginCountry], [Quantity], [Review], [Image]) VALUES (5, N'Mum Drinking Water', N'Water', N'Natural', CAST(30 AS Decimal(18, 0)), N'Bangladesh', N'1.5 Litter', N'As we know that now-a days people of Bangladesh are becoming very health conscious and pure drinking water is one of the main component to become healthy and sound.', N'../images/DrinksImages/mum.jpg')
INSERT [dbo].[DrinksTBL] ([Id], [Name], [Type], [Flavors], [Price], [OriginCountry], [Quantity], [Review], [Image]) VALUES (7, N'Sada', N'Soft Drinks', N'Natural', CAST(50 AS Decimal(18, 0)), N'England', N'250 ml', N'It most commonly occurs as a crystalline heptahydrate, which readily effloresces to form a white powder, the monohydrate. Pure sodium carbonate is a white, odourless powder that is hygroscopic (absorbs moisture from the air), has an alkaline taste, and forms a strongly alkaline water solution.', N'../Images/DrinksImages/soda.jpg')
SET IDENTITY_INSERT [dbo].[DrinksTBL] OFF
