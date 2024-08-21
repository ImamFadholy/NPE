USE [master]
GO
/****** Object:  Database [Dust_RRP]    Script Date: 8/20/2024 11:57:30 AM ******/
CREATE DATABASE [Dust_RRP]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PMIDRipperWeigherLU2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\PMIDRipperWeigherLU2.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PMIDRipperWeigherLU2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\PMIDRipperWeigherLU2_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Dust_RRP] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Dust_RRP].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Dust_RRP] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Dust_RRP] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Dust_RRP] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Dust_RRP] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Dust_RRP] SET ARITHABORT OFF 
GO
ALTER DATABASE [Dust_RRP] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Dust_RRP] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Dust_RRP] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Dust_RRP] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Dust_RRP] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Dust_RRP] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Dust_RRP] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Dust_RRP] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Dust_RRP] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Dust_RRP] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Dust_RRP] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Dust_RRP] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Dust_RRP] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Dust_RRP] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Dust_RRP] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Dust_RRP] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Dust_RRP] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Dust_RRP] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Dust_RRP] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Dust_RRP] SET  MULTI_USER 
GO
ALTER DATABASE [Dust_RRP] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Dust_RRP] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Dust_RRP] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Dust_RRP] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Dust_RRP]
GO
/****** Object:  Table [dbo].[Dust_Berat]    Script Date: 8/20/2024 11:57:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dust_Berat](
	[Berat] [decimal](10, 2) NULL,
	[Runtime] [datetime] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dust_CigCode]    Script Date: 8/20/2024 11:57:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dust_CigCode](
	[CigCodeID] [int] NULL,
	[CP] [varchar](100) NULL,
	[FACode] [varchar](100) NULL,
	[CigCode] [varchar](100) NULL,
	[ProdDesc] [varchar](100) NULL,
	[RTC] [datetime] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dust_CigWeigher]    Script Date: 8/20/2024 11:57:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dust_CigWeigher](
	[CigWeigherID] [int] IDENTITY(1,1) NOT NULL,
	[LinkUp] [varchar](200) NULL,
	[CigCode] [varchar](200) NULL,
	[FACode] [varchar](200) NULL,
	[Berat] [decimal](20, 2) NULL,
	[Tanggal] [date] NULL,
	[Grup] [varchar](20) NULL,
	[Shift] [int] NULL,
	[RTC] [datetime] NULL,
	[ComputerName] [varchar](200) NULL,
	[PONumber] [varchar](200) NULL,
	[Resource] [varchar](200) NULL,
	[Tipe] [varchar](100) NULL,
	[CutFillterCode] [varchar](100) NULL,
	[RipperShortCode] [varchar](100) NULL,
	[ProdDesc] [varchar](200) NULL,
 CONSTRAINT [PK_Dust_CigWeigher] PRIMARY KEY CLUSTERED 
(
	[CigWeigherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dust_Config]    Script Date: 8/20/2024 11:57:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dust_Config](
	[ComputerName] [varchar](200) NULL,
	[ScannerPort] [int] NULL,
	[WeigherPort] [int] NULL,
	[MinLimit] [decimal](10, 2) NULL,
	[ButtonPort] [int] NULL,
	[BeratDos] [int] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dust_DeleteHistory]    Script Date: 8/20/2024 11:57:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dust_DeleteHistory](
	[HistoryID] [int] NULL,
	[ModeLU] [int] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dust_FillStation]    Script Date: 8/20/2024 11:57:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dust_FillStation](
	[FillStationID] [int] IDENTITY(1,1) NOT NULL,
	[Deskripsi] [varchar](200) NULL,
 CONSTRAINT [PK_Dust_FillStationID] PRIMARY KEY CLUSTERED 
(
	[FillStationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dust_ItemCodeCF]    Script Date: 8/20/2024 11:57:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dust_ItemCodeCF](
	[ItemCodeCFID] [int] IDENTITY(1,1) NOT NULL,
	[Deskripsi] [varchar](200) NULL,
 CONSTRAINT [PK_Dust_ItemCodeCF] PRIMARY KEY CLUSTERED 
(
	[ItemCodeCFID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dust_MasterCPDesign]    Script Date: 8/20/2024 11:57:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dust_MasterCPDesign](
	[MasterCPDesignID] [int] IDENTITY(1,1) NOT NULL,
	[MasterCPID] [int] NULL,
	[Value] [varchar](200) NULL,
	[TopPos] [int] NULL,
	[LeftPos] [int] NULL,
	[Font] [varchar](200) NULL,
	[FontSize] [int] NULL,
	[AddedHeight] [int] NULL,
	[Vertical] [int] NULL,
	[Width] [int] NULL,
	[Height] [int] NULL,
	[ImgAddress] [varchar](200) NULL,
 CONSTRAINT [PK_Dust_MasterCPDesign] PRIMARY KEY CLUSTERED 
(
	[MasterCPDesignID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dust_RejectTipe]    Script Date: 8/20/2024 11:57:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dust_RejectTipe](
	[RejectTipeID] [int] IDENTITY(1,1) NOT NULL,
	[Deskripsi] [varchar](200) NULL,
 CONSTRAINT [PK_Dust_Ripper_RejectTipe] PRIMARY KEY CLUSTERED 
(
	[RejectTipeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dust_Remark]    Script Date: 8/20/2024 11:57:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dust_Remark](
	[RemarkID] [int] IDENTITY(1,1) NOT NULL,
	[RipperID] [int] NULL,
	[Deskripsi] [varchar](200) NULL,
 CONSTRAINT [PK_Dust_Remark] PRIMARY KEY CLUSTERED 
(
	[RemarkID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dust_Resource]    Script Date: 8/20/2024 11:57:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dust_Resource](
	[ResourceID] [int] IDENTITY(1,1) NOT NULL,
	[Deskripsi] [varchar](200) NULL,
 CONSTRAINT [PK_Dust_Resource] PRIMARY KEY CLUSTERED 
(
	[ResourceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dust_Ripper]    Script Date: 8/20/2024 11:57:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dust_Ripper](
	[RipperID] [int] IDENTITY(1,1) NOT NULL,
	[Deskripsi] [varchar](200) NULL,
	[FillStation] [varchar](200) NULL,
	[Kode] [varchar](100) NULL,
	[ProdDesc] [varchar](200) NULL,
 CONSTRAINT [PK_Dust_RIpper] PRIMARY KEY CLUSTERED 
(
	[RipperID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dust_RipperShort]    Script Date: 8/20/2024 11:57:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dust_RipperShort](
	[RipperShortID] [int] IDENTITY(1,1) NOT NULL,
	[Deskripsi] [varchar](100) NULL,
	[Kode] [varchar](50) NULL,
 CONSTRAINT [PK_Dust_Ripper_RipperShort] PRIMARY KEY CLUSTERED 
(
	[RipperShortID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dust_RipperWeigher]    Script Date: 8/20/2024 11:57:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dust_RipperWeigher](
	[RipperWeigherID] [int] IDENTITY(1,1) NOT NULL,
	[RipperCode] [varchar](100) NULL,
	[ProductionNumber] [varchar](100) NULL,
	[BoxNo] [int] NULL,
	[BarcodeDate] [datetime] NULL,
	[WLSNumber] [varchar](100) NULL,
	[LocalDestination] [varchar](100) NULL,
	[FillStation] [varchar](100) NULL,
	[NetWeight] [decimal](18, 2) NULL,
	[GrossWeight] [decimal](18, 2) NULL,
	[ComputerName] [varchar](50) NULL,
	[Remark] [varchar](200) NULL,
	[FlashPoint] [varchar](200) NULL,
	[ProdDesc] [varchar](200) NULL,
	[ProductionDesc] [varchar](200) NULL,
 CONSTRAINT [PK_Dust_RipperWeigher] PRIMARY KEY CLUSTERED 
(
	[RipperWeigherID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Dust_RipperWeigherPrinted]    Script Date: 8/20/2024 11:57:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dust_RipperWeigherPrinted](
	[RipperWeigherPrinted] [int] IDENTITY(1,1) NOT NULL,
	[RipperWeigherID] [int] NULL,
 CONSTRAINT [PK_Dust_RipperWeigherPrinted] PRIMARY KEY CLUSTERED 
(
	[RipperWeigherPrinted] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Dust_WLS]    Script Date: 8/20/2024 11:57:31 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Dust_WLS](
	[WLSID] [int] IDENTITY(1,1) NOT NULL,
	[Deskripsi] [varchar](100) NULL,
 CONSTRAINT [PK_Dust_WLS] PRIMARY KEY CLUSTERED 
(
	[WLSID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
USE [master]
GO
ALTER DATABASE [Dust_RRP] SET  READ_WRITE 
GO
