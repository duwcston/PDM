USE [master]
GO
/****** Object:  Database [FoodDeliveryApp]    Script Date: 26-02-2023 9:51:49 SA ******/
CREATE DATABASE [FoodDeliveryApp]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'FoodDeliveryApp', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\FoodDeliveryApp.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'FoodDeliveryApp_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.MSSQLSERVER\MSSQL\DATA\FoodDeliveryApp_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FoodDeliveryApp].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FoodDeliveryApp] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FoodDeliveryApp] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FoodDeliveryApp] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FoodDeliveryApp] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FoodDeliveryApp] SET ARITHABORT OFF 
GO
ALTER DATABASE [FoodDeliveryApp] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FoodDeliveryApp] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FoodDeliveryApp] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FoodDeliveryApp] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FoodDeliveryApp] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FoodDeliveryApp] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FoodDeliveryApp] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FoodDeliveryApp] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FoodDeliveryApp] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FoodDeliveryApp] SET  ENABLE_BROKER 
GO
ALTER DATABASE [FoodDeliveryApp] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FoodDeliveryApp] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FoodDeliveryApp] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FoodDeliveryApp] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FoodDeliveryApp] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FoodDeliveryApp] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FoodDeliveryApp] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FoodDeliveryApp] SET RECOVERY FULL 
GO
ALTER DATABASE [FoodDeliveryApp] SET  MULTI_USER 
GO
ALTER DATABASE [FoodDeliveryApp] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FoodDeliveryApp] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FoodDeliveryApp] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FoodDeliveryApp] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
EXEC sys.sp_db_vardecimal_storage_format N'FoodDeliveryApp', N'ON'
GO
USE [FoodDeliveryApp]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 26-02-2023 9:51:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerId] [int] NOT NULL,
	[CustomerName] [nvarchar](50) NULL,
	[Contact_Num] [nvarchar](50) NULL,
	[CustomerAddress] [varchar](50) NULL,
	[Customer_money_account] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[OrderReport]    Script Date: 26-02-2023 9:51:49 SA ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderReport](
	[OrderId] [int] NOT NULL,
	[CustomerId] [int] NOT NULL,
	[FoodId] [int] NOT NULL,
	[DeliveryId] [int] NOT NULL,
	[Value_Status] [nvarchar](20) NULL,
	[Timeline] [datetime] NULL,
	[Quantity] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [Contact_Num], [CustomerAddress], [Customer_money_account]) VALUES (1, N'Ta Trung Hieu', N'0375830154', N'KTX khu B', NULL)
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [Contact_Num], [CustomerAddress], [Customer_money_account]) VALUES (2, N'Ta Trung Hieu', N'0375830154', N'KTX khu B', NULL)
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [Contact_Num], [CustomerAddress], [Customer_money_account]) VALUES (3, N'Ta Trung Hieu', N'0375830154', N'KTX khu B', NULL)
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [Contact_Num], [CustomerAddress], [Customer_money_account]) VALUES (4, N'Ta Trung Hieu', N'0375830154', N'KTX khu B', NULL)
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [Contact_Num], [CustomerAddress], [Customer_money_account]) VALUES (5, N'Ta Trung Hieu', N'0375830154', N'KTX khu B', NULL)
INSERT [dbo].[Customer] ([CustomerId], [CustomerName], [Contact_Num], [CustomerAddress], [Customer_money_account]) VALUES (6, N'Ta Trung Hieu', N'0375830154', N'KTX khu B', NULL)
GO
INSERT [dbo].[OrderReport] ([OrderId], [CustomerId], [FoodId], [DeliveryId], [Value_Status], [Timeline], [Quantity]) VALUES (1, 1, 1, 1, N'Dang giao', NULL, NULL)
INSERT [dbo].[OrderReport] ([OrderId], [CustomerId], [FoodId], [DeliveryId], [Value_Status], [Timeline], [Quantity]) VALUES (2, 2, 2, 2, N'Dang giao', NULL, NULL)
INSERT [dbo].[OrderReport] ([OrderId], [CustomerId], [FoodId], [DeliveryId], [Value_Status], [Timeline], [Quantity]) VALUES (3, 3, 3, 3, N'Dang giao', NULL, NULL)
INSERT [dbo].[OrderReport] ([OrderId], [CustomerId], [FoodId], [DeliveryId], [Value_Status], [Timeline], [Quantity]) VALUES (4, 4, 4, 4, N'Dang giao', NULL, NULL)
INSERT [dbo].[OrderReport] ([OrderId], [CustomerId], [FoodId], [DeliveryId], [Value_Status], [Timeline], [Quantity]) VALUES (5, 5, 5, 5, N'Dang giao', NULL, NULL)
INSERT [dbo].[OrderReport] ([OrderId], [CustomerId], [FoodId], [DeliveryId], [Value_Status], [Timeline], [Quantity]) VALUES (6, 6, 6, 6, N'Dang giao', NULL, NULL)
GO
/****** Object:  Index [UQ__Customer__A4AE64D9CAD078C2]    Script Date: 26-02-2023 9:51:49 SA ******/
ALTER TABLE [dbo].[Customer] ADD UNIQUE NONCLUSTERED 
(
	[CustomerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [UQ__OrderRep__C3905BCE2837546C]    Script Date: 26-02-2023 9:51:49 SA ******/
ALTER TABLE [dbo].[OrderReport] ADD UNIQUE NONCLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT (N'Ta Trung Hieu') FOR [CustomerName]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT (N'0375830154') FOR [Contact_Num]
GO
ALTER TABLE [dbo].[Customer] ADD  DEFAULT (N'KTX khu B') FOR [CustomerAddress]
GO
ALTER TABLE [dbo].[OrderReport] ADD  DEFAULT (N'Dang giao') FOR [Value_Status]
GO
ALTER TABLE [dbo].[OrderReport]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([CustomerId])
GO
USE [master]
GO
ALTER DATABASE [FoodDeliveryApp] SET  READ_WRITE 
GO
