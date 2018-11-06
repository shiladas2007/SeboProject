USE [SeboDB]
GO
/****** Object:  Database [SeboDB]    Script Date: 2018-11-06 4:09:26 AM ******/
IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = N'SeboDB')
BEGIN
CREATE DATABASE [SeboDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'SeboDB', FILENAME = N'C:\Users\yanka.DESKTOP-AE00BP4\SeboDB.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'SeboDB_log', FILENAME = N'C:\Users\yanka.DESKTOP-AE00BP4\SeboDB_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
END
GO
ALTER DATABASE [SeboDB] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [SeboDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [SeboDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [SeboDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [SeboDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [SeboDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [SeboDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [SeboDB] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [SeboDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [SeboDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [SeboDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [SeboDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [SeboDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [SeboDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [SeboDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [SeboDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [SeboDB] SET  ENABLE_BROKER 
GO
ALTER DATABASE [SeboDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [SeboDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [SeboDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [SeboDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [SeboDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [SeboDB] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [SeboDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [SeboDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [SeboDB] SET  MULTI_USER 
GO
ALTER DATABASE [SeboDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [SeboDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [SeboDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [SeboDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [SeboDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [SeboDB] SET QUERY_STORE = OFF
GO
USE [SeboDB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
USE [SeboDB]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 2018-11-06 4:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[__EFMigrationsHistory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 2018-11-06 4:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoleClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 2018-11-06 4:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 2018-11-06 4:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 2018-11-06 4:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 2018-11-06 4:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 2018-11-06 4:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 2018-11-06 4:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserTokens]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Book]    Script Date: 2018-11-06 4:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Book]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Book](
	[BookId] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](100) NOT NULL,
	[Description] [nvarchar](1000) NULL,
	[ISBN] [nvarchar](13) NOT NULL,
	[Publisher] [nvarchar](40) NOT NULL,
	[Edition] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [float] NOT NULL,
	[Visualizations] [int] NOT NULL,
	[QuantitySold] [int] NOT NULL,
	[Blocked] [bit] NOT NULL,
	[IsWaitList] [bit] NOT NULL,
	[CreationDate] [datetime2](7) NOT NULL,
	[BookConditionId] [int] NOT NULL,
	[StudyAreaId] [int] NOT NULL,
	[SellerId] [int] NOT NULL,
	[BuyerUserId] [int] NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[BookCondition]    Script Date: 2018-11-06 4:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[BookCondition]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[BookCondition](
	[BookConditionId] [int] IDENTITY(1,1) NOT NULL,
	[Condition] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_BookCondition] PRIMARY KEY CLUSTERED 
(
	[BookConditionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Claim]    Script Date: 2018-11-06 4:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Claim]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Claim](
	[ClaimId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Status] [nvarchar](max) NOT NULL,
	[OrderId] [int] NOT NULL,
	[UserId] [int] NOT NULL,
 CONSTRAINT [PK_Claim] PRIMARY KEY CLUSTERED 
(
	[ClaimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[ClaimMediation]    Script Date: 2018-11-06 4:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ClaimMediation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[ClaimMediation](
	[ClaimMediationId] [int] IDENTITY(1,1) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Action] [nvarchar](max) NOT NULL,
	[ClaimId] [int] NOT NULL,
 CONSTRAINT [PK_ClaimMediation] PRIMARY KEY CLUSTERED 
(
	[ClaimMediationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Course]    Script Date: 2018-11-06 4:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Course]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Course](
	[CourseId] [int] IDENTITY(1,1) NOT NULL,
	[CourseName] [nvarchar](100) NOT NULL,
	[StudyAreaId] [int] NOT NULL,
	[InstitutionId] [int] NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Institution]    Script Date: 2018-11-06 4:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Institution]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Institution](
	[InstitutionId] [int] IDENTITY(1,1) NOT NULL,
	[InstitutionName] [nvarchar](40) NOT NULL,
 CONSTRAINT [PK_Institution] PRIMARY KEY CLUSTERED 
(
	[InstitutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[InstitutionBranch]    Script Date: 2018-11-06 4:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[InstitutionBranch]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[InstitutionBranch](
	[InstitutionBranchId] [int] IDENTITY(1,1) NOT NULL,
	[InstitutionBranchName] [nvarchar](40) NOT NULL,
	[InstitutionId] [int] NOT NULL,
 CONSTRAINT [PK_InstitutionBranch] PRIMARY KEY CLUSTERED 
(
	[InstitutionBranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Localization]    Script Date: 2018-11-06 4:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Localization]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Localization](
	[LocalizationId] [int] IDENTITY(1,1) NOT NULL,
	[PostalCode] [nvarchar](3) NOT NULL,
	[PlaceName] [nvarchar](170) NOT NULL,
	[Province] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Localization] PRIMARY KEY CLUSTERED 
(
	[LocalizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Order]    Script Date: 2018-11-06 4:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Order]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Order](
	[OrderId] [int] IDENTITY(1,1) NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [int] NOT NULL,
	[PaymentForm] [nvarchar](max) NULL,
	[CreationDate] [datetime2](7) NOT NULL,
	[PaymentDate] [datetime2](7) NOT NULL,
	[ReleaseDate] [datetime2](7) NOT NULL,
	[CancelationDate] [datetime2](7) NOT NULL,
	[CanfirmationDate] [datetime2](7) NOT NULL,
	[Status] [nvarchar](max) NULL,
	[IsConfirmedByBuyer] [bit] NOT NULL,
	[BookId] [int] NOT NULL,
	[BuyerId] [int] NOT NULL,
	[SellerId] [int] NOT NULL,
	[UserId] [int] NULL,
 CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED 
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[StudyArea]    Script Date: 2018-11-06 4:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[StudyArea]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[StudyArea](
	[StudyAreaId] [int] IDENTITY(1,1) NOT NULL,
	[StudyAreaName] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_StudyArea] PRIMARY KEY CLUSTERED 
(
	[StudyAreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[User]    Script Date: 2018-11-06 4:09:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[User](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[FirstName] [nvarchar](30) NOT NULL,
	[MiddleName] [nvarchar](30) NULL,
	[LastName] [nvarchar](30) NOT NULL,
	[UserType] [int] NOT NULL,
	[Address] [nvarchar](90) NULL,
	[Number] [nvarchar](max) NULL,
	[AddressComplement] [nvarchar](max) NULL,
	[Age] [int] NOT NULL,
	[Email] [nvarchar](70) NOT NULL,
	[Phone] [nvarchar](max) NOT NULL,
	[Creditcard] [float] NOT NULL,
	[CreditcardSecurityCode] [float] NOT NULL,
	[CredicardExpirationDate] [datetime2](7) NOT NULL,
	[LocalizationId] [int] NOT NULL,
	[InstitutionBranchId] [int] NOT NULL,
	[CourseId] [int] NULL,
	[Discriminator] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
END
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20181105065502_[Migration-Initial]', N'2.1.3-rtm-32065')
SET IDENTITY_INSERT [dbo].[BookCondition] ON 

INSERT [dbo].[BookCondition] ([BookConditionId], [Condition]) VALUES (1, N'New')
INSERT [dbo].[BookCondition] ([BookConditionId], [Condition]) VALUES (2, N'Like New')
INSERT [dbo].[BookCondition] ([BookConditionId], [Condition]) VALUES (3, N'Very Good Condition')
INSERT [dbo].[BookCondition] ([BookConditionId], [Condition]) VALUES (4, N'Good Condition')
INSERT [dbo].[BookCondition] ([BookConditionId], [Condition]) VALUES (5, N'Acceptable Condition')
SET IDENTITY_INSERT [dbo].[BookCondition] OFF
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (1, N'ACE (Academic and Career Entrance) - Certificate', 1006, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (2, N'Addiction and Mental Health Worker', 5, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (3, N'Advanced Business Management - Alcoholic Beverages (Optional Co-op)', 1006, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (4, N'Advanced Television and Film – Script to Screen', 12, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (5, N'Advertising - Account Management', 19, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (6, N'Advertising - Creative & Digital Strategy', 19, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (7, N'Advertising and Marketing Communications Management', 19, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (8, N'Advertising – Media Management', 19, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (9, N'Aerospace Manufacturing Engineering Technician', 1005, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (10, N'Aerospace Manufacturing Engineering Technology', 1005, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (11, N'Airframe Assembly', 1005, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (12, N'Animation - 3D', 12, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (13, N'Architectural Technician', 1004, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (14, N'Architectural Technology (Fast-Track)', 1004, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (15, N'Architectural Technology (Optional Co-op)', 1004, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (16, N'Art and Design Fundamentals', 1004, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (17, N'Arts Education and Community Engagement', 1006, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (18, N'Arts Management', 12, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (19, N'Auto Body Repair Technician', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (20, N'Auto Body Repair Techniques', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (21, N'Auto Body Repairer', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (22, N'Automotive - Motive Power Technician', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (23, N'Automotive Parts & Service Operations', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (24, N'Automotive Service Technician', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (25, N'Automotive Service Technician Canadian Tire (MAP 32)', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (26, N'Automotive Service Technician Co-op Apprenticeship (Partnered with Fiat Chrysler Automobiles (FCA))', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (27, N'Automotive Service Technician Co-op Diploma Apprenticeship (Partnered with Trillium Automobile Deale', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (28, N'Automotive Service Technician Ford Asset (MAP 32)', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (29, N'Automotive Service Technician General Motors of Canada ASEP (MAP 32)', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (30, N'Automotive Service Technician Honda AHAP (MAP 32)', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (31, N'Automotive Service Technician Pre-Apprenticeship', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (32, N'Automotive Service Technician Toyota (MAP 32)', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (33, N'Aviation Technician – Aircraft Maintenance', 1005, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (34, N'Aviation Technician – Avionics Maintenance', 1005, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (35, N'Aviation Technology - Aircraft Maintenance & Management', 1005, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (36, N'Aviation Technology - Avionics Maintenance & Management', 1005, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (37, N'Bachelor of Information Technology (Computer and Communication Networks), Honours', 4, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (38, N'Bachelor of Public Relations Management, Honours', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (39, N'Bachelor of Science in Nursing (BScN) Collaborative Nursing Degree', 5, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (40, N'Baking and Pastry Arts Management', 15, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (41, N'Baking Skills', 15, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (42, N'Biomedical Engineering Technology (Fast-Track) (Optional Co-op)', 1007, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (43, N'Biomedical Engineering Technology (Optional Co-op)', 1007, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (44, N'Biotechnology', 1007, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (45, N'Biotechnology (Fast-Track)', 1007, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (46, N'Biotechnology - Advanced (Fast-Track)', 1007, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (47, N'Biotechnology - Advanced (Optional Co-op)', 1007, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (48, N'Bookkeeping', 3, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (49, N'Bridging to University Nursing', 5, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (50, N'Bridging to University Nursing - Flexible', 5, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (51, N'Bridging to University Nursing - IEN', 5, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (52, N'Broadcasting - Radio, Television, Film & Digital Media', 1009, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (53, N'Business', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (54, N'Business - International Business', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (55, N'Business - Supply Chain and Operations', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (56, N'Business Accounting', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (57, N'Business Administration - Leadership and Management (Optional Co-op)', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (58, N'Business Administration - Supply Chain and Operations Management (Optional Co-op)', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (59, N'Business Administration – Accounting (3 Semesters)', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (60, N'Business Administration – Accounting (Optional Co-op)', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (61, N'Business Administration – Finance (Optional Co-op)', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (62, N'Business Administration – Human Resources (Optional Co-op)', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (63, N'Business Administration – International Business (Optional Co-op)', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (64, N'Business Administration – Marketing (Optional Co-op)', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (65, N'Business Foundations', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (66, N'Business – Marketing', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (67, N'College Preparation', 1006, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (68, N'Child and Youth Care', 5, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (69, N'Children s Media', 1009, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (70, N'Communications and Media Fundamentals', 1009, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (71, N'Communications – Professional Writing', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (72, N'Community and Child Studies Foundations', 5, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (73, N'Community and Justice Services', 2, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (74, N'Community Development Work', 1006, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (75, N'Computer Repair and Maintenance', 1011, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (76, N'Computer Systems Technician – Networking', 4, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (77, N'Computer Systems Technician – Networking (Fast-Track)', 4, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (78, N'Computer Systems Technology – Networking (Fast-Track) (Optional Co-op)', 4, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (79, N'Computer Systems Technology – Networking (Optional Co-op)', 4, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (80, N'Construction Management', 1004, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (81, N'Contact Centre Operations', 1006, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (82, N'Contemporary Journalism', 1009, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (83, N'Court Support Services', 2, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (84, N'Culinary Management', 15, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (85, N'Culinary Skills', 15, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (86, N'Cybersecurity', 4, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (87, N'Dance – Performance', 12, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (88, N'Developmental Services Worker', 1006, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (89, N'Digital Visual Effects', 1009, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (90, N'Early Childhood Education (Ashtonbee Campus)', 5, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (91, N'Early Childhood Education (Progress Campus)', 5, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (92, N'Electrical Engineering Technician', 1010, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (93, N'Electrical Engineering Technology', 1010, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (94, N'Electrical Engineering Technology (PTY)', 1010, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (95, N'Electrician, Construction Maintenance', 1010, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (96, N'Electrician: Construction and Maintenance - Electrical Engineering Technician', 1010, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (97, N'Electro-Mechanical Engineering Technician - Automation and Robotics', 1012, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (98, N'Electro-Mechanical Engineering Technician – Automation and Robotics (Fast-Track)', 1012, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (99, N'Electro-Mechanical Engineering Technology – Automation and Robotics (Fast Track) (Optional Co-op)', 1012, 1)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (100, N'Electro-Mechanical Engineering Technology – Automation and Robotics (Optional Co-op)', 1012, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (101, N'Electronics Engineering Technician', 1011, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (102, N'Electronics Engineering Technician (Fast-Track)', 1011, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (103, N'Electronics Engineering Technology (Fast-Track) (Optional Co-op)', 1011, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (104, N'Electronics Engineering Technology (Optional Co-op)', 1011, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (105, N'Energy Systems Engineering Technician', 1013, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (106, N'Energy Systems Engineering Technician (Fast-Track)', 1013, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (107, N'Energy Systems Engineering Technology (Fast Track) (Optional Co-op)', 1013, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (108, N'Energy Systems Engineering Technology (Optional Co-op)', 1013, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (109, N'English Language Learning', 6, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (110, N'Environmental Technician', 9, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (111, N'Environmental Technician (Fast-Track)', 9, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (112, N'Environmental Technology (Co-op)', 9, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (113, N'Environmental Technology (Co-op) (Fast-Track)', 9, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (114, N'Environmental Technology (Fast-Track) (Optional Co-op)', 9, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (115, N'Environmental Technology (Optional Co-op)', 9, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (116, N'Esthetician', 1006, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (117, N'Event Management', 1006, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (118, N'Fashion Business and Management', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (119, N'Financial Planning', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (120, N'Financial Services', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (121, N'Fine Arts Studio', 12, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (122, N'Fitness and Health Promotion', 15, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (123, N'Food and Beverage Management', 15, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (124, N'Food Media', 15, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (125, N'Food Science Technology (Fast Track) (Optional Co-op)', 15, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (126, N'Food Science Technology (Optional Co-op)', 15, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (127, N'Food Service Worker', 15, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (128, N'Food Tourism', 15, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (129, N'Game – Art', 4, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (130, N'Game – Development', 4, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (131, N'Game – Programming (Fast Track) (Optional Co-op)', 4, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (132, N'Game – Programming (Optional Co-op)', 4, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (133, N'General Arts', 12, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (134, N'General Arts and Science – English for Academic Purposes', 12, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (135, N'Global Business Management', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (136, N'Graphic Design', 12, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (137, N'Health Informatics Technology (Fast-Track) (Optional Co-op)', 4, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (138, N'Health Informatics Technology (Optional Co-op)', 4, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (139, N'Health Studies and Communications Skills', 1006, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (140, N'Healthcare Environmental Services Management', 1006, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (141, N'Heating, Refrigeration and Air Conditioning Technician', 1006, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (142, N'Hospitality - Hotel Operations Management', 3, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (143, N'Hospitality and Tourism Administration', 3, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (144, N'Hospitality Foundations', 3, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (145, N'Hotel, Resort and Restaurant Management', 3, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (146, N'Human Resources Management (Optional Co-op)', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (147, N'Insurance Management', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (148, N'Interactive Media Management', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (149, N'International Business Management', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (150, N'International Business Management - Transnational', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (151, N'International Development', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (152, N'Journalism', 1014, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (153, N'Journalism – Arts and Entertainment', 1014, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (154, N'Law Clerk', 1006, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (155, N'Liberal Arts', 12, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (156, N'Liberal Arts to Trent University', 12, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (157, N'Liberal Arts to University of Toronto Scarborough', 12, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (158, N'Liberal Arts to York University', 12, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (159, N'Lifestyle Media', 1009, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (160, N'Marketing - Corporate Account Management (Optional Co-op)', 19, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (161, N'Marketing - Digital Engagement Strategy (Optional Co-op)', 19, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (162, N'Marketing - Research & Analytics (Optional Co-op)', 19, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (163, N'Marketing Management', 19, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (164, N'Massage Therapy', 1006, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (165, N'Massage Therapy - Compressed', 1006, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (166, N'Mechanical Engineering Technician – Design', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (167, N'Mechanical Engineering Technician – Design (Fast-Track)', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (168, N'Mechanical Engineering Technology – Design (Fast Track) (Optional Co-op)', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (169, N'Mechanical Engineering Technology – Design (Optional Co-op)', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (170, N'Mechanical Engineering Technology – Industrial (Fast Track) (Optional Co-op)', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (171, N'Mechanical Engineering Technology – Industrial (Optional Co-op)', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (172, N'Medical Laboratory Technician', 5, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (173, N'Mobile Applications Development', 4, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (174, N'Motive Power - Heavy Duty Equipment Technician', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (175, N'Motive Power - Truck and Coach Technician', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (176, N'Motorcycle and Powersports Product Repair Techniques', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (177, N'Motorcycle Technician', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (178, N'Museum and Cultural Management', 12, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (179, N'Music Industry Arts and Performance', 12, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (180, N'Nutrition and Food Service Management', 5, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (181, N'Occupational Therapist Assistant & Physiotherapist Assistant', 5, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (182, N'Office Administration – Executive', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (183, N'Office Administration – General', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (184, N'Office Administration – Health Services', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (185, N'Office Administration – Legal', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (186, N'Paralegal', 2, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (187, N'Paramedic', 5, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (188, N'Performing Arts Fundamentals', 12, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (189, N'Personal Support Worker', 5, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (190, N'Pharmacy Technician', 5, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (191, N'Photography', 12, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (192, N'Police Foundations', 1006, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (193, N'Practical Nursing', 5, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (194, N'Practical Nursing (Flexible)', 5, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (195, N'Practical Nursing for Internationally Educated Nurses', 5, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (196, N'Pre-Business (Business Studies)', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (197, N'Pre-Health Sciences Pathway to Certificates and Diplomas', 5, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (198, N'Pre-Service Firefighter Education and Training', 1006, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (199, N'Product Design and Development', 17, 1)
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (200, N'Project Management', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (201, N'Project Management (Pickering Learning Site)', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (202, N'Public Relations – Corporate Communications', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (203, N'Publishing - Book, Magazine and Electronic', 1014, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (204, N'Recreation and Leisure Services', 1006, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (205, N'Refrigeration & Air Conditioning Systems Mechanic', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (206, N'Refrigeration and Air Conditioning Mechanic - Heating, Refrigeration and Air Conditioning Technician', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (207, N'Social Service Worker', 1006, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (208, N'Software Engineering Technician', 4, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (209, N'Software Engineering Technician (Fast-Track)', 4, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (210, N'Software Engineering Technology (Fast-Track) (Optional Co-op)', 4, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (211, N'Software Engineering Technology (Optional Co-op)', 4, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (212, N'Special Event Planning', 1006, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (213, N'Sports Journalism', 1014, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (214, N'Strategic Management', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (215, N'Strategic Management – Accounting', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (216, N'Supply Chain Management - Logistics', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (217, N'Technology Foundations (ICET)', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (218, N'Television & Film - Business', 12, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (219, N'Theatre Arts and Performance', 12, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (220, N'Tourism - Travel Services Management', 3, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (221, N'Trades Foundations - Motive Power', 17, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (222, N'Truck and Coach Technician ATS MAP 32', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (223, N'Truck and Coach Technician – Mack/Volvo MAP 32', 1, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (224, N'Workplace Wellness and Health Promotion (Morningside Campus)', 5, 1)
INSERT [dbo].[Course] ([CourseId], [CourseName], [StudyAreaId], [InstitutionId]) VALUES (225, N'Workplace Wellness and Health Promotion (Pickering Learning Site)', 5, 1)
SET IDENTITY_INSERT [dbo].[Course] OFF
SET IDENTITY_INSERT [dbo].[Institution] ON 

INSERT [dbo].[Institution] ([InstitutionId], [InstitutionName]) VALUES (1, N'Centennial College')
INSERT [dbo].[Institution] ([InstitutionId], [InstitutionName]) VALUES (2, N'Seneca')
INSERT [dbo].[Institution] ([InstitutionId], [InstitutionName]) VALUES (3, N'George Brown')
SET IDENTITY_INSERT [dbo].[Institution] OFF
SET IDENTITY_INSERT [dbo].[InstitutionBranch] ON 

INSERT [dbo].[InstitutionBranch] ([InstitutionBranchId], [InstitutionBranchName], [InstitutionId]) VALUES (1, N'Progress', 1)
INSERT [dbo].[InstitutionBranch] ([InstitutionBranchId], [InstitutionBranchName], [InstitutionId]) VALUES (2, N'Ashtonbee Campus', 1)
INSERT [dbo].[InstitutionBranch] ([InstitutionBranchId], [InstitutionBranchName], [InstitutionId]) VALUES (3, N'Downsview Campus', 1)
INSERT [dbo].[InstitutionBranch] ([InstitutionBranchId], [InstitutionBranchName], [InstitutionId]) VALUES (4, N'Morningside Campus', 1)
INSERT [dbo].[InstitutionBranch] ([InstitutionBranchId], [InstitutionBranchName], [InstitutionId]) VALUES (5, N'Story Arts Centre', 1)
INSERT [dbo].[InstitutionBranch] ([InstitutionBranchId], [InstitutionBranchName], [InstitutionId]) VALUES (6, N'Eglinton Learning Site', 1)
INSERT [dbo].[InstitutionBranch] ([InstitutionBranchId], [InstitutionBranchName], [InstitutionId]) VALUES (7, N'Pickering Learning Site', 1)
INSERT [dbo].[InstitutionBranch] ([InstitutionBranchId], [InstitutionBranchName], [InstitutionId]) VALUES (1002, N'Jane Campus', 2)
INSERT [dbo].[InstitutionBranch] ([InstitutionBranchId], [InstitutionBranchName], [InstitutionId]) VALUES (1003, N'King Campus', 2)
INSERT [dbo].[InstitutionBranch] ([InstitutionBranchId], [InstitutionBranchName], [InstitutionId]) VALUES (1004, N'Markham', 2)
INSERT [dbo].[InstitutionBranch] ([InstitutionBranchId], [InstitutionBranchName], [InstitutionId]) VALUES (1005, N'Newmarket', 2)
INSERT [dbo].[InstitutionBranch] ([InstitutionBranchId], [InstitutionBranchName], [InstitutionId]) VALUES (1006, N'Newnham Campus', 2)
INSERT [dbo].[InstitutionBranch] ([InstitutionBranchId], [InstitutionBranchName], [InstitutionId]) VALUES (1007, N'Peterborough Campus', 2)
INSERT [dbo].[InstitutionBranch] ([InstitutionBranchId], [InstitutionBranchName], [InstitutionId]) VALUES (1008, N'Seneca@York Campus', 2)
INSERT [dbo].[InstitutionBranch] ([InstitutionBranchId], [InstitutionBranchName], [InstitutionId]) VALUES (1009, N'Vaughan Campus', 2)
INSERT [dbo].[InstitutionBranch] ([InstitutionBranchId], [InstitutionBranchName], [InstitutionId]) VALUES (1010, N'Yorkgate Campus', 2)
INSERT [dbo].[InstitutionBranch] ([InstitutionBranchId], [InstitutionBranchName], [InstitutionId]) VALUES (1011, N'St. James Campus', 3)
INSERT [dbo].[InstitutionBranch] ([InstitutionBranchId], [InstitutionBranchName], [InstitutionId]) VALUES (1012, N'Casa Loma Campus', 3)
INSERT [dbo].[InstitutionBranch] ([InstitutionBranchId], [InstitutionBranchName], [InstitutionId]) VALUES (1013, N' Waterfront Campus', 3)
INSERT [dbo].[InstitutionBranch] ([InstitutionBranchId], [InstitutionBranchName], [InstitutionId]) VALUES (1014, N'Ryerson Location', 3)
INSERT [dbo].[InstitutionBranch] ([InstitutionBranchId], [InstitutionBranchName], [InstitutionId]) VALUES (1015, N'Sunnybrook', 3)
INSERT [dbo].[InstitutionBranch] ([InstitutionBranchId], [InstitutionBranchName], [InstitutionId]) VALUES (1016, N'George Brown Theatre', 3)
INSERT [dbo].[InstitutionBranch] ([InstitutionBranchId], [InstitutionBranchName], [InstitutionId]) VALUES (1017, N' Student Residence', 3)
SET IDENTITY_INSERT [dbo].[InstitutionBranch] OFF
SET IDENTITY_INSERT [dbo].[Localization] ON 

INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1, N'T0A', N'Eastern Alberta (St. Paul)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (2, N'T0B', N'Wainwright Region (Tofield)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (3, N'T0C', N'Central Alberta (Stettler)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (4, N'T0E', N'Western Alberta (Jasper)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (5, N'T0G', N'North Central Alberta (Slave Lake)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (6, N'T0H', N'Northwestern Alberta (High Level)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (7, N'T0J', N'Southeastern Alberta (Drumheller)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (8, N'T0K', N'International Border Region (Cardston)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (9, N'T0L', N'Kananaskis Country (Claresholm)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (10, N'T0M', N'Central Foothills (Sundre)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (11, N'T0P', N'Northeastern Alberta (Fort Chipewyan)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (12, N'T0V', N'Remote Northeast (Fitzgerald)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (13, N'T1A', N'Medicine Hat Central', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (14, N'T1B', N'Medicine Hat South', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (15, N'T1C', N'Medicine Hat North', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (16, N'T1G', N'Taber', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (17, N'T1H', N'Lethbridge North', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (18, N'T1J', N'Lethbridge West and Central', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (19, N'T1K', N'Lethbridge Southeast', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (20, N'T1L', N'Banff', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (21, N'T1M', N'Coaldale', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (22, N'T1P', N'Strathmore', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (23, N'T1R', N'Brooks', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (24, N'T1S', N'Okotoks', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (25, N'T1V', N'High River', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (26, N'T1W', N'Canmore', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (27, N'T1X', N'Chestermere', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (28, N'T1Y', N'Calgary (Rundle / Whitehorn / Monterey Park)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (29, N'T2A', N'Calgary (Penbrooke Meadows / Marlborough)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (30, N'T2B', N'Calgary (Forest Lawn / Dover / Erin Woods)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (31, N'T2C', N'Calgary (Lynnwood Ridge / Ogden / Foothills Industrial / Great Plains)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (32, N'T2E', N'Calgary (Bridgeland / Greenview / Zoo / YYC)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (33, N'T2G', N'Calgary (Inglewood / Burnsland / Chinatown / East Victoria Park / Saddledome)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (34, N'T2H', N'Calgary (Highfield / Burns Industrial)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (35, N'T2J', N'Calgary (Queensland Downs / Lake Bonavista / Willow Park / Acadia)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (36, N'T2K', N'Calgary (Thornecliffe / Tuxedo)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (37, N'T2L', N'Calgary (Brentwood / Collingwood / Nose Hill)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (38, N'T2M', N'Calgary (Mount Pleasant / Capitol Hill / Banff Trail)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (39, N'T2N', N'Calgary (Kensington / Westmont / Parkdale / University)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (40, N'T2P', N'Calgary (City Centre / Calgary Tower)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (41, N'T2R', N'Calgary (Connaught / West Victoria Park)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (42, N'T2S', N'Calgary (Elbow Park / Britannia / Parkhill / Mission)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (43, N'T2T', N'Calgary South (Altadore / Bankview / Richmond)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (44, N'T2V', N'Calgary (Oak Ridge / Haysboro / Kingsland / Windsor Park)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (45, N'T2W', N'Calgary (Braeside / Woodbine)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (46, N'T2X', N'Calgary (Midnapore / Sundance)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (47, N'T2Y', N'Calgary (Millrise / Somerset / Bridlewood / Evergreen)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (48, N'T2Z', N'Calgary (Douglas Glen / McKenzie Lake / Copperfield / East Shepard)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (49, N'T3A', N'Calgary (Dalhousie / Edgemont / Hamptons / Hidden Valley)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (50, N'T3B', N'Calgary (Montgomery / Bowness / Silver Springs / Greenwood)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (51, N'T3C', N'Calgary (Rosscarrock / Wildwood / Shaganappi / Sunalta)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (52, N'T3E', N'Calgary (Lakeview / Glendale / Killarney / Glamorgan)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (53, N'T3G', N'Calgary (Hawkwood / Arbour Lake / Royal Oak / Rocky Ridge)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (54, N'T3H', N'Calgary (Discovery Ridge / Signal Hill / Aspen Woods / Patterson / Cougar Ridge)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (55, N'T3J', N'Calgary (Martindale / Taradale / Falconridge / Saddle Ridge)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (56, N'T3K', N'Calgary (Sandstone / Harvest Hills / Coventry Hills / Panorama Hills / Beddington)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (57, N'T3L', N'Calgary (Tuscany / Scenic Acres)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (58, N'T3M', N'Calgary (Cranston)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (59, N'T3N', N'Calgary Northeast', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (60, N'T3P', N'Calgary (Symons Valley)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (61, N'T3R', N'Calgary Northwest', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (62, N'T3Z', N'Redwood Meadows', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (63, N'T4A', N'Airdrie East', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (64, N'T4B', N'Airdrie West', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (65, N'T4C', N'Cochrane', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (66, N'T4E', N'Red Deer County', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (67, N'T4G', N'Innisfail', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (68, N'T4H', N'Olds', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (69, N'T4J', N'Ponoka', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (70, N'T4L', N'Lacombe', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (71, N'T4N', N'Red Deer Central', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (72, N'T4P', N'Red Deer North', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (73, N'T4R', N'Red Deer South', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (74, N'T4S', N'Sylvan Lake', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (75, N'T4T', N'Rocky Mountain House', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (76, N'T4V', N'Camrose', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (77, N'T4X', N'Beaumont', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (78, N'T5A', N'Edmonton (West Clareview / East Londonderry)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (79, N'T5B', N'Edmonton (East North Central / West Beverly)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (80, N'T5C', N'Edmonton (Central Londonderry)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (81, N'T5E', N'Edmonton (West Londonderry / East Calder)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (82, N'T5G', N'Edmonton (North Central / Queen Mary Park / YXD)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (83, N'T5H', N'Edmonton (North and East Downtown Fringe)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (84, N'T5J', N'Edmonton (North Downtown)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (85, N'T5K', N'Edmonton (South Downtown / South Downtown Fringe)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (86, N'T5L', N'Edmonton (North Westmount / West Calder / East Mistatim)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (87, N'T5M', N'Edmonton (South Westmount / Groat Estate / East Northwest Industrial)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (88, N'T5N', N'Edmonton (Glenora / SW Downtown Fringe)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (89, N'T5P', N'Edmonton (North Jasper Place)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (90, N'T5R', N'Edmonton (Central Jasper Place / Buena Vista)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (91, N'T5S', N'Edmonton (West Northwest Industrial / Winterburn)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (92, N'T5T', N'Edmonton West (West Jasper Place / West Edmonton Mall)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (93, N'T5V', N'Edmonton (Central Mistatim)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (94, N'T5W', N'Edmonton (Central Beverly)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (95, N'T5X', N'Edmonton (East Castledowns)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (96, N'T5Y', N'Edmonton (Landbank / Oliver / East Lake District)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (97, N'T5Z', N'Edmonton (West Lake District)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (98, N'T6A', N'Edmonton (North Capilano)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (99, N'T6B', N'Edmonton (SE Capilano / West Southeast Industrial / East Bonnie Doon)', N'Alberta')
GO
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (100, N'T6C', N'Edmonton (Central Bonnie Doon)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (101, N'T6E', N'Edmonton (South Bonnie Doon / East University)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (102, N'T6G', N'Edmonton (West University / Strathcona Place)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (103, N'T6H', N'Edmonton (Southgate / North Riverbend)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (104, N'T6J', N'Edmonton (Kaskitayo)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (105, N'T6K', N'Edmonton (West Mill Woods)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (106, N'T6L', N'Edmonton (East Mill Woods)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (107, N'T6M', N'Edmonton Southwest', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (108, N'T6N', N'Edmonton (South Industrial)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (109, N'T6P', N'Edmonton (East Southeast Industrial / South Clover Bar)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (110, N'T6R', N'Edmonton (Riverbend)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (111, N'T6S', N'Edmonton (North Clover Bar)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (112, N'T6T', N'Edmonton (Meadows)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (113, N'T6V', N'Edmonton (West Castledowns)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (114, N'T6W', N'Edmonton (Heritage Valley)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (115, N'T6X', N'Edmonton (Ellerslie)', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (116, N'T7A', N'Drayton Valley', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (117, N'T7E', N'Edson', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (118, N'T7N', N'Barrhead', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (119, N'T7P', N'Westlock', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (120, N'T7S', N'Whitecourt', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (121, N'T7V', N'Hinton', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (122, N'T7X', N'Spruce Grove North', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (123, N'T7Y', N'Spruce Grove South', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (124, N'T7Z', N'Stony Plain', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (125, N'T8A', N'Sherwood Park West', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (126, N'T8B', N'Sherwood Park Outer Southwest', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (127, N'T8C', N'Sherwood Park Inner Southwest', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (128, N'T8E', N'Sherwood Park Central', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (129, N'T8G', N'Sherwood Park East', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (130, N'T8H', N'Sherwood Park Northwest', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (131, N'T8L', N'Fort Saskatchewan', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (132, N'T8N', N'St. Albert', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (133, N'T8R', N'Morinville', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (134, N'T8S', N'Peace River', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (135, N'T8V', N'Grande Prairie Central', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (136, N'T8W', N'Grande Prairie South', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (137, N'T8X', N'Grande Prairie East', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (138, N'T9A', N'Wetaskiwin', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (139, N'T9C', N'Vegreville', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (140, N'T9E', N'Leduc', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (141, N'T9G', N'Devon', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (142, N'T9H', N'Fort McMurray Outer Central', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (143, N'T9J', N'Fort McMurray Inner Central', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (144, N'T9K', N'Fort McMurray Northwest', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (145, N'T9M', N'Cold Lake', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (146, N'T9N', N'Bonnyville', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (147, N'T9S', N'Athabasca', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (148, N'T9V', N'Lloydminster', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (149, N'T9W', N'Wainwright', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (150, N'T9X', N'Vermilion', N'Alberta')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (151, N'V0A', N'Upper Columbia Region (Golden)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (152, N'V0B', N'East Kootenays (Fernie)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (153, N'V0C', N'Northern British Columbia (Fort Nelson)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (154, N'V0E', N'Central Okanagan and High Country (Revelstoke)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (155, N'V0G', N'West Kootenays (Rossland)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (156, N'V0H', N'South Okanagan (Summerland)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (157, N'V0J', N'Omineca and Yellowhead (Smithers)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (158, N'V0K', N'Cariboo and West Okanagan (100 Mile House)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (159, N'V0L', N'Chilcotin (Alexis Creek)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (160, N'V0M', N'Harrison Lake Region (Agassiz)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (161, N'V0N', N'North Island, Sunshine Coast, and Southern Gulf Islands (Whistler)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (162, N'V0P', N'North Central Island and Bute Inlet Region (Gold River)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (163, N'V0R', N'Central Island (Chemainus)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (164, N'V0S', N'Juan de Fuca Shore (Sooke)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (165, N'V0T', N'Inside Passage and the Queen Charlottes (Queen Charlotte City)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (166, N'V0V', N'Lower Skeena (Port Edward)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (167, N'V0W', N'Atlin Region (Atlin)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (168, N'V0X', N'Similkameen (Hope)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (169, N'V1A', N'Kimberley', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (170, N'V1B', N'Vernon East', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (171, N'V1C', N'Cranbrook', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (172, N'V1E', N'Salmon Arm', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (173, N'V1G', N'Dawson Creek', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (174, N'V1H', N'Vernon West', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (175, N'V1J', N'Fort St. John', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (176, N'V1K', N'Merritt', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (177, N'V1L', N'Nelson', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (178, N'V1M', N'Langley Township North', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (179, N'V1N', N'Castlegar', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (180, N'V1P', N'Kelowna East', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (181, N'V1R', N'Trail', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (182, N'V1S', N'Kamloops Southwest', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (183, N'V1T', N'Vernon Central', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (184, N'V1V', N'Kelowna North', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (185, N'V1W', N'Kelowna Southwest', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (186, N'V1X', N'Kelowna East Central', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (187, N'V1Y', N'Kelowna Central', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (188, N'V1Z', N'Kelowna West', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (189, N'V2A', N'Penticton', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (190, N'V2B', N'Kamloops Northwest', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (191, N'V2C', N'Kamloops Central and Southeast', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (192, N'V2E', N'Kamloops South and West', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (193, N'V2G', N'Williams Lake', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (194, N'V2H', N'Kamloops North', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (195, N'V2J', N'Quesnel', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (196, N'V2K', N'Prince George North', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (197, N'V2L', N'Prince George East Central', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (198, N'V2M', N'Prince George West Central', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (199, N'V2N', N'Prince George South', N'British Columbia')
GO
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (200, N'V2P', N'Chilliwack Central', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (201, N'V2R', N'Chilliwack West', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (202, N'V2S', N'Abbotsford Southeast', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (203, N'V2T', N'Abbotsford Southwest', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (204, N'V2V', N'Mission East', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (205, N'V2W', N'Maple Ridge East', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (206, N'V2X', N'Maple Ridge West', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (207, N'V2Y', N'Langley Township Northwest', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (208, N'V2Z', N'Langley Township Southwest', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (209, N'V3A', N'Langley City', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (210, N'V3B', N'Port Coquitlam Central', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (211, N'V3C', N'Port Coquitlam South', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (212, N'V3E', N'Port Coquitlam North', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (213, N'V3G', N'Abbotsford East', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (214, N'V3H', N'Port Moody', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (215, N'V3J', N'Coquitlam North', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (216, N'V3K', N'Coquitlam South', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (217, N'V3L', N'New Westminster Northeast', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (218, N'V3M', N'New Westminster Southwest (Includes Annacis Island)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (219, N'V3N', N'Burnaby (East Big Bend / Stride Avenue / Edmonds / Cariboo-Armstrong)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (220, N'V3R', N'Surrey North', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (221, N'V3S', N'Surrey East', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (222, N'V3T', N'Surrey Inner Northwest', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (223, N'V3V', N'Surrey Outer Northwest', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (224, N'V3W', N'Surrey Upper West', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (225, N'V3X', N'Surrey Lower West', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (226, N'V3Y', N'Pitt Meadows', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (227, N'V4A', N'Surrey Southwest', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (228, N'V4B', N'White Rock', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (229, N'V4C', N'Delta Northeast', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (230, N'V4E', N'Delta East', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (231, N'V4G', N'Delta East Central', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (232, N'V4K', N'Delta Central', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (233, N'V4L', N'Delta Southeast', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (234, N'V4M', N'Delta Southwest', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (235, N'V4N', N'Surrey Northeast', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (236, N'V4P', N'Surrey South', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (237, N'V4R', N'Maple Ridge Northwest', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (238, N'V4S', N'Mission West', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (239, N'V4T', N'Westbank', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (240, N'V4V', N'Winfield', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (241, N'V4W', N'Langley Township East', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (242, N'V4X', N'Abbotsford West', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (243, N'V4Z', N'Chilliwack East', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (244, N'V5A', N'Burnaby (Government Road / Lake City / SFU / Burnaby Mountain)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (245, N'V5B', N'Burnaby (Parkcrest-Aubrey / Ardingley-Sprott)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (246, N'V5C', N'Burnaby (Burnaby Heights / Willingdon Heights / West Central Valley)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (247, N'V5E', N'Burnaby (Lakeview-Mayfield / Richmond Park / Kingsway-Beresford)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (248, N'V5G', N'Burnaby (Cascade-Schou / Douglas-Gilpin)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (249, N'V5H', N'Burnaby (Maywood / Marlborough / Oakalla / Windsor)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (250, N'V5J', N'Burnaby (Suncrest / Sussex-Nelson / Clinton-Glenwood / West Big Bend)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (251, N'V5K', N'Vancouver (North Hastings- Sunrise)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (252, N'V5L', N'Vancouver (North Grandview- Woodlands)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (253, N'V5M', N'Vancouver (South Hastings-Sunrise / North Renfrew- Collingwood)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (254, N'V5N', N'Vancouver (South Grandview- Woodlands / NE Kensington)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (255, N'V5P', N'Vancouver (SE Kensington / Victoria- Fraserview)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (256, N'V5R', N'Vancouver (South Renfrew- Collingwood)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (257, N'V5S', N'Vancouver (Killarney)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (258, N'V5T', N'Vancouver (East Mount Pleasant)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (259, N'V5V', N'Vancouver (West Kensington / NE Riley Park- Little Mountain)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (260, N'V5W', N'Vancouver (SE Riley Park- Little Mountain / SW Kensington / NE Oakridge / North Sunset)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (261, N'V5X', N'Vancouver (SE Oakridge / East Marpole / South Sunset)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (262, N'V5Y', N'Vancouver (West Mount Pleasant / West Riley Park- Little Mountain)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (263, N'V5Z', N'Vancouver (East Fairview / South Cambie)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (264, N'V6A', N'Vancouver (Strathcona / Chinatown / Downtown Eastside)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (265, N'V6B', N'Vancouver (NE Downtown / Harbour Centre / Gastown / Yaletown)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (266, N'V6C', N'Vancouver (Waterfront / Coal Harbour / Canada Place)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (267, N'V6E', N'Vancouver (South West End)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (268, N'V6G', N'Vancouver (North West End / Stanley Park)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (269, N'V6H', N'Vancouver (West Fairview / Granville Island / NE Shaughnessy)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (270, N'V6J', N'Vancouver (NW Shaughnessy / East Kitsilano / Quilchena)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (271, N'V6K', N'Vancouver (Central Kitsilano)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (272, N'V6L', N'Vancouver (NW Arbutus Ridge)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (273, N'V6M', N'Vancouver (South Shaughnessy / NW Oakridge / NE Kerrisdale / SE Arbutus Ridge)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (274, N'V6N', N'Vancouver (Dunbar- Southlands / Musqueam)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (275, N'V6P', N'Vancouver (SE Kerrisdale / SW Oakridge / West Marpole)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (276, N'V6R', N'Vancouver (West Kitsilano / Jericho)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (277, N'V6S', N'Vancouver (Chaldecutt / South University Endowment Lands)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (278, N'V6T', N'Vancouver (UBC)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (279, N'V6V', N'Richmond Northeast', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (280, N'V6W', N'Richmond Southeast', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (281, N'V6X', N'Richmond North', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (282, N'V6Y', N'Richmond Central', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (283, N'V6Z', N'Vancouver (SW Downtown)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (284, N'V7A', N'Richmond South', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (285, N'V7B', N'Richmond (Sea Island / YVR)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (286, N'V7C', N'Richmond West', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (287, N'V7E', N'Richmond Southwest', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (288, N'V7G', N'North Vancouver Outer East', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (289, N'V7H', N'North Vancouver Inner East', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (290, N'V7J', N'North Vancouver East Central', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (291, N'V7K', N'North Vancouver North Central', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (292, N'V7L', N'North Vancouver South Central', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (293, N'V7M', N'North Vancouver Southwest Central', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (294, N'V7N', N'North Vancouver Northwest Central', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (295, N'V7P', N'North Vancouver Southwest', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (296, N'V7R', N'North Vancouver Northwest', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (297, N'V7S', N'West Vancouver North', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (298, N'V7T', N'West Vancouver Southeast', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (299, N'V7V', N'West Vancouver South', N'British Columbia')
GO
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (300, N'V7W', N'West Vancouver West', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (301, N'V7X', N'Vancouver (Bentall Centre)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (302, N'V7Y', N'Vancouver (Pacific Centre)', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (303, N'V8A', N'Powell River', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (304, N'V8B', N'Squamish', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (305, N'V8C', N'Kitimat', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (306, N'V8G', N'Terrace', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (307, N'V8J', N'Prince Rupert', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (308, N'V8K', N'Saltspring Island', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (309, N'V8L', N'Sidney', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (310, N'V8M', N'Central Saanich', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (311, N'V8N', N'Saanich East', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (312, N'V8P', N'Saanich Southeast', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (313, N'V8R', N'Oak Bay North', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (314, N'V8S', N'Oak Bay South', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (315, N'V8T', N'Victoria North', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (316, N'V8V', N'Victoria South', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (317, N'V8W', N'Victoria Central British Columbia Provincial Government', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (318, N'V8X', N'Saanich South', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (319, N'V8Y', N'Saanich North', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (320, N'V8Z', N'Saanich Central', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (321, N'V9A', N'Esquimalt', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (322, N'V9B', N'Highlands', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (323, N'V9C', N'Metchosin', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (324, N'V9E', N'Saanich West', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (325, N'V9G', N'Ladysmith', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (326, N'V9H', N'Campbell River Outskirts', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (327, N'V9J', N'Courtenay Northern Outskirts', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (328, N'V9K', N'Qualicum Beach', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (329, N'V9L', N'Duncan', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (330, N'V9M', N'Comox', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (331, N'V9N', N'Courtenay Central', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (332, N'V9P', N'Parksville', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (333, N'V9R', N'Nanaimo South', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (334, N'V9S', N'Nanaimo Central', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (335, N'V9T', N'Nanaimo North', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (336, N'V9V', N'Nanaimo Northwest', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (337, N'V9W', N'Campbell River Central', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (338, N'V9X', N'Cedar', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (339, N'V9Y', N'Port Alberni', N'British Columbia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (340, N'R0A', N'Southeastern Manitoba (Lorette)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (341, N'R0B', N'Northern Manitoba (Norway House)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (342, N'R0C', N'North Interlake (Stonewall)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (343, N'R0E', N'Eastern Manitoba (Beausejour)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (344, N'R0G', N'South Central Manitoba (Altona)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (345, N'R0H', N'South Interlake (MacGregor)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (346, N'R0J', N'Riding Mountain (Neepawa)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (347, N'R0K', N'Brandon Region (Killarney)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (348, N'R0L', N'Western Manitoba (Swan River)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (349, N'R0M', N'Southwestern Manitoba (Virden)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (350, N'R1A', N'Selkirk', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (351, N'R1B', N'Lockport', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (352, N'R1N', N'Portage la Prairie', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (353, N'R2C', N'Winnipeg (Transcona)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (354, N'R2E', N'East St. Paul', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (355, N'R2G', N'Winnipeg (River East North)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (356, N'R2H', N'Winnipeg (St. Boniface NW)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (357, N'R2J', N'Winnipeg (St. Boniface NE)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (358, N'R2K', N'Winnipeg (River East Central)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (359, N'R2L', N'Winnipeg (River East South)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (360, N'R2M', N'Winnipeg (St. Vital North)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (361, N'R2N', N'Winnipeg (St. Vital SW)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (362, N'R2P', N'Winnipeg (Seven Oaks West)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (363, N'R2R', N'Winnipeg (Inkster West)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (364, N'R2V', N'Winnipeg (Seven Oaks East)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (365, N'R2W', N'Winnipeg (Point Douglas East)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (366, N'R2X', N'Winnipeg (Point Douglas West / Inkster East)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (367, N'R2Y', N'Winnipeg (St. James-Assiniboia NW)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (368, N'R3A', N'Winnipeg (Centennial)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (369, N'R3B', N'Winnipeg (Chinatown / Civic Centre / Exchange District)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (370, N'R3C', N'Winnipeg (Broadway / The Forks / Portage and Main) Manitoba Provincial Government', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (371, N'R3E', N'Winnipeg (Sargent Park / Daniel McIntyre / Inkster SE)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (372, N'R3G', N'Winnipeg (Minto / St. Mathews / Wolseley)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (373, N'R3H', N'Winnipeg (St. James-Assiniboia NE / YWG)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (374, N'R3J', N'Winnipeg (St. James-Assiniboia SE)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (375, N'R3K', N'Winnipeg (St. James-Assiniboia SW)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (376, N'R3L', N'Winnipeg (River Heights East)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (377, N'R3M', N'Winnipeg (River Heights Central)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (378, N'R3N', N'Winnipeg (River Heights West)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (379, N'R3P', N'Winnipeg (Fort Garry NW / Tuxedo)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (380, N'R3R', N'Winnipeg (Assiniboine South / Betsworth)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (381, N'R3S', N'Winnipeg (Wilkes South)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (382, N'R3T', N'Winnipeg (Fort Garry NE / University of Manitoba)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (383, N'R3V', N'Winnipeg (Fort Garry South)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (384, N'R3W', N'Winnipeg (Grassie / Pequis)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (385, N'R3X', N'Winnipeg (St. Boniface South / St. Vital SE)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (386, N'R3Y', N'Winnipeg (Fort Garry West)', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (387, N'R4A', N'West St. Paul', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (388, N'R4H', N'Headingley East', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (389, N'R4J', N'Headingley West', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (390, N'R4K', N'Cartier', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (391, N'R4L', N'St. Francois Xavier', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (392, N'R5A', N'St. Adolphe', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (393, N'R5G', N'Steinbach', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (394, N'R5H', N'Ste. Anne', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (395, N'R6M', N'Morden', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (396, N'R6W', N'Winkler', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (397, N'R7A', N'Brandon Southeast', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (398, N'R7B', N'Brandon Southwest', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (399, N'R7C', N'Brandon North', N'Manitoba')
GO
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (400, N'R7N', N'Dauphin', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (401, N'R8A', N'Flin Flon', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (402, N'R8N', N'Thompson', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (403, N'R9A', N'The Pas', N'Manitoba')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (404, N'E1A', N'Dieppe Moncton East', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (405, N'E1B', N'Riverview', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (406, N'E1C', N'Moncton Central', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (407, N'E1E', N'Moncton West', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (408, N'E1G', N'Moncton Northwest', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (409, N'E1H', N'Lakeville, Shediac Bridge', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (410, N'E1J', N'Coverdale', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (411, N'E1N', N'Miramichi South', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (412, N'E1V', N'Miramichi North', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (413, N'E1W', N'Caraquet', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (414, N'E1X', N'Tracadie-Sheila', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (415, N'E2A', N'Bathurst', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (416, N'E2E', N'Rothesay, Quispamsis', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (417, N'E2G', N'Quispamsis', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (418, N'E2H', N'Saint John Northeast, Renforth', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (419, N'E2J', N'Saint John East', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (420, N'E2K', N'Saint John North', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (421, N'E2L', N'Saint John Central', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (422, N'E2M', N'Saint John West', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (423, N'E2N', N'Saint John Lakewood', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (424, N'E2P', N'Saint John Red Head', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (425, N'E2R', N'Saint John Grandview', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (426, N'E2S', N'Saint John Loch Lomond', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (427, N'E2V', N'Oromocto', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (428, N'E3A', N'Fredericton North', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (429, N'E3B', N'Fredericton South New Brunswick Provincial Government', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (430, N'E3C', N'Fredericton Southwest, New Maryland', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (431, N'E3E', N'Kingsclear', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (432, N'E3L', N'St. Stephen', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (433, N'E3N', N'Campbellton', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (434, N'E3V', N'Edmundston', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (435, N'E3Y', N'Grand Falls Northeast', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (436, N'E3Z', N'Grand Falls Central', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (437, N'E4A', N'Bathurst', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (438, N'E4B', N'Minto', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (439, N'E4C', N'Youngs Cove', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (440, N'E4E', N'Sussex', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (441, N'E4G', N'Smiths Creek', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (442, N'E4H', N'Hillsborough', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (443, N'E4J', N'Salisbury', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (444, N'E4K', N'Dorchester', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (445, N'E4L', N'Sackville', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (446, N'E4M', N'Bayfield', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (447, N'E4N', N'Cap-Pelé', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (448, N'E4P', N'Shediac', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (449, N'E4R', N'Cocagne', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (450, N'E4S', N'Bouctouche', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (451, N'E4T', N'Bass River', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (452, N'E4V', N'Saint-Antoine', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (453, N'E4W', N'Richibucto', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (454, N'E4X', N'St-Louis-de-Kent', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (455, N'E4Y', N'Rogersville', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (456, N'E4Z', N'Petitcodiac', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (457, N'E5A', N'Moores Mills', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (458, N'E5B', N'St. Andrews', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (459, N'E5C', N'St. George', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (460, N'E5E', N'Campobello Island', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (461, N'E5G', N'Grand Manan Island', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (462, N'E5H', N'Pennfield', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (463, N'E5J', N'Lepreau', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (464, N'E5K', N'Grand Bay-Westfield', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (465, N'E5L', N'Fredericton Junction', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (466, N'E5M', N'Gagetown', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (467, N'E5N', N'Hampton', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (468, N'E5P', N'Apohaqui', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (469, N'E5R', N'St. Martins', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (470, N'E5S', N'Kingston', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (471, N'E5T', N'Norton', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (472, N'E5V', N'Deer Island', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (473, N'E6A', N'Boiestown', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (474, N'E6B', N'Stanley', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (475, N'E6C', N'Durham Bridge', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (476, N'E6E', N'Millville', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (477, N'E6G', N'Nackawic', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (478, N'E6H', N'Canterbury', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (479, N'E6J', N'McAdam', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (480, N'E6K', N'Harvey', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (481, N'E6L', N'Burtts Corner', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (482, N'E7A', N'Baker Brook', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (483, N'E7B', N'Saint-Jacques', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (484, N'E7C', N'Saint-Basile', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (485, N'E7E', N'Saint-Leonard', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (486, N'E7G', N'Plaster Rock', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (487, N'E7H', N'Perth-Andover', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (488, N'E7J', N'Bath', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (489, N'E7K', N'Centreville', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (490, N'E7L', N'Florenceville', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (491, N'E7M', N'Woodstock', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (492, N'E7N', N'Debec', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (493, N'E7P', N'Hartland', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (494, N'E8A', N'Saint-Quentin', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (495, N'E8B', N'Kedgwick', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (496, N'E8C', N'Dalhousie', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (497, N'E8E', N'Balmoral', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (498, N'E8G', N'Belledune', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (499, N'E8J', N'Petit-Rocher', N'New Brunswick')
GO
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (500, N'E8K', N'Beresford', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (501, N'E8L', N'Allardville', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (502, N'E8M', N'Saint-Isidore', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (503, N'E8N', N'Grande-Anse', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (504, N'E8P', N'Inkerman', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (505, N'E8R', N'Paquetville', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (506, N'E8S', N'Shippagan', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (507, N'E8T', N'Lamèque', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (508, N'E9A', N'Baie-Sainte-Anne', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (509, N'E9B', N'Blackville', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (510, N'E9C', N'Doaktown', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (511, N'E9E', N'Red Bank', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (512, N'E9G', N'Neguac', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (513, N'E9H', N'Brantville', N'New Brunswick')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (514, N'A0A', N'Southeastern Avalon Peninsula (Ferryland)', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (515, N'A0B', N'Western Avalon Peninsula (Argentia)', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (516, N'A0C', N'Bonavista Peninsula (Bonavista)', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (517, N'A0E', N'Burin Peninsula (Marystown)', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (518, N'A0G', N'Northeast Newfoundland (Lewisporte)', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (519, N'A0H', N'Central Newfoundland (Bishops Falls)', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (520, N'A0J', N'Northern Newfoundland (Springdale)', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (521, N'A0K', N'Northwest Newfoundland/Eastern Labrador (Mary s Harbour)', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (522, N'A0L', N'Western Newfoundland (Lark Harbour)', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (523, N'A0M', N'Southwestern Newfoundland (Channel-Port aux Basques)', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (524, N'A0N', N'Port au Port Peninsula region (St. George s)', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (525, N'A0P', N'Central Labrador (Happy Valley-Goose Bay)', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (526, N'A0R', N'North/Western Labrador (Churchill Falls)', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (527, N'A1A', N'St. John s North', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (528, N'A1B', N'St. John s Northwest Newfoundland & Labrador Provincial Government', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (529, N'A1C', N'St. John s North Central', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (530, N'A1E', N'St. John s Central', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (531, N'A1G', N'St. John s South', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (532, N'A1H', N'St. John s Southwest', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (533, N'A1K', N'Torbay', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (534, N'A1L', N'Paradise', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (535, N'A1M', N'Portugal Cove-St. Philips', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (536, N'A1N', N'Mount Pearl', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (537, N'A1S', N'Goulds', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (538, N'A1V', N'Gander', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (539, N'A1W', N'Manuels', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (540, N'A1X', N'Conception Bay', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (541, N'A1Y', N'Carbonear', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (542, N'A2A', N'Grand Falls', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (543, N'A2B', N'Windsor', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (544, N'A2H', N'Corner Brook', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (545, N'A2N', N'Stephenville', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (546, N'A2V', N'Labrador City', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (547, N'A5A', N'Clarenville', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (548, N'A8A', N'Deer Lake', N'Newfoundland and Labrador')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (549, N'B0C', N'North Victoria County (Dingwall)', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (550, N'B0E', N'West Cape Breton Island (Baddeck)', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (551, N'B0H', N'Canso region (Havre Boucher)', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (552, N'B0J', N'Mainland east shore (Lunenburg)', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (553, N'B0K', N'Southern Northumberland Strait (Pictou)', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (554, N'B0L', N'Isthmus of Chignecto (River Hébert)', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (555, N'B0M', N'Cobequid Bay north shore (Springhill)', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (556, N'B0N', N'Hants County (Shubenacadie)', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (557, N'B0P', N'Kings County (Kingston)', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (558, N'B0R', N'West Lunenburg County (New Germany)', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (559, N'B0S', N'West Annapolis County (Middleton)', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (560, N'B0T', N'Queens County (Shelburne)', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (561, N'B0V', N'Digby Neck (Digby)', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (562, N'B0W', N'Southwest Mainland (Weymouth)', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (563, N'B1A', N'Glace Bay', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (564, N'B1B', N'Port Morien', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (565, N'B1C', N'Louisbourg', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (566, N'B1E', N'Reserve Mines', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (567, N'B1G', N'Dominion', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (568, N'B1H', N'New Waterford', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (569, N'B1J', N'East Bay', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (570, N'B1K', N'Marion Bridge', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (571, N'B1L', N'Sydney Southwest', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (572, N'B1M', N'Sydney East', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (573, N'B1N', N'Sydney North', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (574, N'B1P', N'Sydney North Central', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (575, N'B1R', N'Sydney West', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (576, N'B1S', N'Sydney Central', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (577, N'B1T', N'Christmas Island', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (578, N'B1V', N'North Sydney North', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (579, N'B1W', N'Eskasoni', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (580, N'B1X', N'Big Bras d Or', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (581, N'B1Y', N'Alder Point', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (582, N'B2A', N'North Sydney South Central', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (583, N'B2C', N'Iona', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (584, N'B2E', N'Loch Lomond', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (585, N'B2G', N'Antigonish', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (586, N'B2H', N'New Glasgow', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (587, N'B2J', N'Fourchu', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (588, N'B2N', N'Truro', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (589, N'B2R', N'Waverley', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (590, N'B2S', N'Lantz', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (591, N'B2T', N'Enfield', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (592, N'B2V', N'Dartmouth Morris Lake', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (593, N'B2W', N'Dartmouth East Central', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (594, N'B2X', N'Dartmouth North Central', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (595, N'B2Y', N'Dartmouth South Central', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (596, N'B2Z', N'Dartmouth East', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (597, N'B3A', N'Dartmouth Southwest', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (598, N'B3B', N'Dartmouth Northwest', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (599, N'B3E', N'Porters Lake', N'Nova Scotia')
GO
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (600, N'B3G', N'Eastern Passage', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (601, N'B3H', N'Halifax Lower Harbour', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (602, N'B3J', N'Halifax Mid-Harbour Nova Scotia Provincial Government', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (603, N'B3K', N'Halifax Upper Harbour', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (604, N'B3L', N'Halifax Central', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (605, N'B3M', N'Halifax Bedford Basin', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (606, N'B3N', N'Halifax South Central', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (607, N'B3P', N'Halifax North West Arm', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (608, N'B3R', N'Halifax South', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (609, N'B3S', N'Halifax West', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (610, N'B3T', N'Lakeside', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (611, N'B3V', N'Harrietsfield', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (612, N'B3Z', N'Tantallon', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (613, N'B4A', N'Bedford Southeast', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (614, N'B4B', N'Bedford Northwest', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (615, N'B4C', N'Lower Sackville South', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (616, N'B4E', N'Lower Sackville West', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (617, N'B4G', N'Lower Sackville North', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (618, N'B4H', N'Amherst', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (619, N'B4N', N'Kentville', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (620, N'B4P', N'Wolfville', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (621, N'B4R', N'Coldbrook', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (622, N'B4V', N'Bridgewater', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (623, N'B5A', N'Yarmouth', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (624, N'B9A', N'Port Hawkesbury', N'Nova Scotia')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (625, N'X0E', N'Central Northwest Territories (Inuvik)', N'Northwest Territory')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (626, N'X0G', N'Southwestern Northwest Territories (Fort Liard)', N'Northwest Territory')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (627, N'X1A', N'Yellowknife', N'Northwest Territory')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (628, N'X0A', N'Outer Nunavut (Iqaluit)', N'Nunavut Territory')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (629, N'X0B', N'Central Nunavut (Cambridge Bay)', N'Nunavut Territory')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (630, N'X0C', N'Inner Nunavut (Rankin Inlet)', N'Nunavut Territory')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (631, N'K0A', N'National Capital Region (Almonte)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (632, N'K0B', N'Prescott and Russell United Counties (Alfred)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (633, N'K0C', N'Stormont, Dundas and Glengarry United Counties (Alexandria)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (634, N'K0E', N'South Leeds and Grenville United Counties (Prescott)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (635, N'K0G', N'Rideau Lakes area (Kemptville)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (636, N'K0H', N'Frontenac County, Addington County, Loyalist Shores and Southwest Leeds (Inverary)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (637, N'K0J', N'Renfrew County and Lanark Highlands Township (Deep River)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (638, N'K0K', N'Quinte Shores, East Northumberland County & Prince Edward County (Picton)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (639, N'K0L', N'Peterborough County and North Hastings County (Lakefield)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (640, N'K0M', N'Kawartha lakes and Haliburton County (Bobcaygeon)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (641, N'K1A', N'Government of Canada Ottawa and Gatineau offices', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (642, N'K1B', N'Gloucester (Blackburn Hamlet / Pine View)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (643, N'K1C', N'Gloucester (West Orleans)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (644, N'K1E', N'Orleans (Queenswood)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (645, N'K1G', N'Ottawa (Riverview / Hawthorne)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (646, N'K1H', N'Ottawa (Alta Vista)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (647, N'K1J', N'Gloucester (Beacon Hill / Cyrville)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (648, N'K1K', N'Ottawa (Overbrook)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (649, N'K1L', N'Ottawa (Vanier)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (650, N'K1M', N'Ottawa (Rockcliffe Park / New Edinburgh)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (651, N'K1N', N'Ottawa (Lower Town / Sandy Hill / University of Ottawa)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (652, N'K1P', N'Ottawa (Parliament Hill)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (653, N'K1R', N'Ottawa (West Downtown area)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (654, N'K1S', N'Ottawa (The Glebe / Ottawa South / Ottawa East)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (655, N'K1T', N'Gloucester (Blossom Park / Hunt Club East / Leitrim)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (656, N'K1V', N'Ottawa (Riverside Park / Hunt Club West / Riverside South / YOW)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (657, N'K1W', N'Gloucester (South Orleans)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (658, N'K1X', N'Gloucester South', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (659, N'K1Y', N'Ottawa West', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (660, N'K1Z', N'Ottawa (Westboro)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (661, N'K2A', N'Ottawa (Highland Park / Carlingwood)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (662, N'K2B', N'Ottawa (Britannia / Pinecrest)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (663, N'K2C', N'Ottawa (Queensway / Copeland / Carlington / Carleton Heights)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (664, N'K2E', N'Nepean East', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (665, N'K2G', N'Nepean (Davidson Heights)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (666, N'K2H', N'Nepean (Bells Corners)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (667, N'K2J', N'Nepean (Barrhaven)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (668, N'K2K', N'Kanata (Beaverbrook / South March)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (669, N'K2L', N'Kanata (Katimavik-Hazeldean / Glen Cairn)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (670, N'K2M', N'Kanata (Bridlewood)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (671, N'K2P', N'Ottawa (Centre Town)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (672, N'K2R', N'Nepean (Fallowfield Village / Cedarhill Estates / Orchard Estates)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (673, N'K2S', N'Stittsville', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (674, N'K2T', N'Kanata (Marchwood)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (675, N'K2V', N'Kanata (Terry Fox / Palladium)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (676, N'K2W', N'Kanata (North March)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (677, N'K4A', N'Orleans (Fallingbrook)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (678, N'K4B', N'Cumberland Township', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (679, N'K4C', N'Cumberland', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (680, N'K4K', N'Rockland', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (681, N'K4M', N'Manotick', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (682, N'K4P', N'Greely', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (683, N'K4R', N'Russell', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (684, N'K6A', N'Hawkesbury', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (685, N'K6H', N'Cornwall East', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (686, N'K6J', N'Cornwall West', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (687, N'K6K', N'Cornwall North', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (688, N'K6T', N'Elizabethtown', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (689, N'K6V', N'Brockville', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (690, N'K7A', N'Smiths Falls', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (691, N'K7C', N'Carleton Place', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (692, N'K7G', N'Gananoque', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (693, N'K7H', N'Perth', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (694, N'K7K', N'Kingston (SW Pittsburgh Township)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (695, N'K7L', N'Kingston (Downtown)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (696, N'K7M', N'Kingston (Reddendale / Cataraqui / Collins Bay)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (697, N'K7N', N'Amherstview', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (698, N'K7P', N'Kingston (Westbrook / Cataraqui Woods / Cedarwood)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (699, N'K7R', N'Napanee', N'Ontario')
GO
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (700, N'K7S', N'Arnprior', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (701, N'K7V', N'Renfrew', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (702, N'K8A', N'Pembroke Central and northern subdivisions', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (703, N'K8B', N'Pembroke (Pleasant View / Fairview)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (704, N'K8H', N'Petawawa', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (705, N'K8N', N'Belleville East', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (706, N'K8P', N'Belleville West', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (707, N'K8R', N'Belleville (SE Sidney Township / Avondale)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (708, N'K8V', N'Trenton', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (709, N'K9A', N'Cobourg', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (710, N'K9H', N'Peterborough North', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (711, N'K9J', N'Peterborough South', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (712, N'K9K', N'Peterborough (Fairbairn Meadows / Jackson Heights)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (713, N'K9L', N'Peterborough (Terra View Heights / Woodland Acres / Donwood)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (714, N'K9V', N'Lindsay', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (715, N'L0A', N'West Northumberland County (Millbrook)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (716, N'L0B', N'East Durham Regional Municipality (Orono)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (717, N'L0C', N'West Durham Regional Municipality (Sunderland)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (718, N'L0E', N'Lake Simcoe Southeast Shore (Sutton West)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (719, N'L0G', N'Ontario Centre (Queensville)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (720, N'L0H', N'Whitby Region (Gormley)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (721, N'L0J', N'North Peel Regional Municipality (Kleinburg)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (722, N'L0K', N'Lake Simcoe North Shore (Coldwater)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (723, N'L0L', N'Lake Simcoe West Shore (Oro)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (724, N'L0M', N'Georgian Bay South Shore (Angus)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (725, N'L0N', N'Dufferin County (Shelburne)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (726, N'L0P', N'Halton Regional Municipality (Campbellville)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (727, N'L0R', N'East Haldimand County (Waterdown)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (728, N'L0S', N'Niagara Regional Municipality (Fonthill)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (729, N'L1A', N'Port Hope', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (730, N'L1B', N'Bowmanville East', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (731, N'L1C', N'Bowmanville West', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (732, N'L1E', N'Courtice', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (733, N'L1G', N'Oshawa Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (734, N'L1H', N'Oshawa Southeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (735, N'L1J', N'Oshawa Southwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (736, N'L1K', N'Oshawa East', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (737, N'L1L', N'Oshawa North', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (738, N'L1M', N'Whitby North', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (739, N'L1N', N'Whitby Southeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (740, N'L1P', N'Whitby Southwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (741, N'L1R', N'Whitby Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (742, N'L1S', N'Ajax Southwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (743, N'L1T', N'Ajax Northwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (744, N'L1V', N'Pickering Southwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (745, N'L1W', N'Pickering South', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (746, N'L1X', N'Pickering Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (747, N'L1Y', N'Pickering North', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (748, N'L1Z', N'Ajax East', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (749, N'L2A', N'Fort Erie', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (750, N'L2E', N'Niagara Falls Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (751, N'L2G', N'Niagara Falls Southeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (752, N'L2H', N'Niagara Falls West', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (753, N'L2J', N'Niagara Falls North', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (754, N'L2M', N'St. Catharines Northeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (755, N'L2N', N'St. Catharines Northwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (756, N'L2P', N'St. Catharines East', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (757, N'L2R', N'St. Catharines Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (758, N'L2S', N'St. Catharines Southwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (759, N'L2T', N'St. Catharines South', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (760, N'L2V', N'St. Catharines Southeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (761, N'L2W', N'St. Catharines West', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (762, N'L3B', N'Welland East', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (763, N'L3C', N'Welland West', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (764, N'L3K', N'Port Colborne', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (765, N'L3M', N'Grimsby', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (766, N'L3P', N'Markham Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (767, N'L3R', N'Markham Outer Southwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (768, N'L3S', N'Markham Southeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (769, N'L3T', N'Thornhill East', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (770, N'L3V', N'Orillia', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (771, N'L3X', N'Newmarket Southwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (772, N'L3Y', N'Newmarket Northeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (773, N'L3Z', N'Bradford', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (774, N'L4A', N'Stouffville', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (775, N'L4B', N'Richmond Hill Southeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (776, N'L4C', N'Richmond Hill Southwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (777, N'L4E', N'Richmond Hill North', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (778, N'L4G', N'Aurora', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (779, N'L4H', N'Woodbridge North', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (780, N'L4J', N'Thornhill West', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (781, N'L4K', N'Concord', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (782, N'L4L', N'Woodbridge South', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (783, N'L4M', N'Barrie North', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (784, N'L4N', N'Barrie South', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (785, N'L4P', N'Keswick', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (786, N'L4R', N'Midland', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (787, N'L4S', N'Richmond Hill Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (788, N'L4T', N'Mississauga (Malton)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (789, N'L4V', N'Mississauga (Wildwood)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (790, N'L4W', N'Mississauga (Matheson / East Rathwood)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (791, N'L4X', N'Mississauga (East Applewood / East Dixie / NE Lakeview)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (792, N'L4Y', N'Mississauga (West Applewood / West Dixie / NW Lakeview)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (793, N'L4Z', N'Mississauga (West Rathwood / East Hurontario / SE Gateway)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (794, N'L5A', N'Mississauga (Mississauga Valleys / East Cooksville)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (795, N'L5B', N'Mississauga (West Cooksville / Fairview / City Centre / East Creditview)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (796, N'L5C', N'Mississauga (West Creditview / Mavis / Erindale)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (797, N'L5E', N'Mississauga (Central Lakeview)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (798, N'L5G', N'Mississauga (SW Lakeview / Mineola / East Port Credit)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (799, N'L5H', N'Mississauga (West Port Credit / Lorne Park / East Sheridan)', N'Ontario')
GO
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (800, N'L5J', N'Mississauga (Clarkson / Southdown)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (801, N'L5K', N'Mississauga (West Sheridan)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (802, N'L5L', N'Mississauga (Erin Mills / Western Business Park)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (803, N'L5M', N'Mississauga (Churchill Meadows / Central Erin Mills / South Streetsville)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (804, N'L5N', N'Mississauga (Lisgar / Meadowvale)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (805, N'L5P', N'Mississauga (YYZ)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (806, N'L5R', N'Mississauga (West Hurontario / SW Gateway)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (807, N'L5S', N'Mississauga (Cardiff / NE Gateway)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (808, N'L5T', N'Mississauga (Courtney Park / East Gateway)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (809, N'L5V', N'Mississauga (East Credit)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (810, N'L5W', N'Mississauga (Meadowvale Village / West Gateway)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (811, N'L6A', N'Maple', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (812, N'L6B', N'Markham East', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (813, N'L6C', N'Markham Northwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (814, N'L6E', N'Markham Northeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (815, N'L6G', N'Markham Inner Southwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (816, N'L6H', N'Oakville North', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (817, N'L6J', N'Oakville Northeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (818, N'L6K', N'Oakville East', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (819, N'L6L', N'Oakville South', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (820, N'L6M', N'Oakville West', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (821, N'L6P', N'Brampton North', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (822, N'L6R', N'Brampton Northwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (823, N'L6S', N'Brampton North Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (824, N'L6T', N'Brampton East', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (825, N'L6V', N'Brampton Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (826, N'L6W', N'Brampton Southeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (827, N'L6X', N'Brampton Southwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (828, N'L6Y', N'Brampton South', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (829, N'L6Z', N'Brampton West Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (830, N'L7A', N'Brampton West', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (831, N'L7B', N'King City', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (832, N'L7C', N'Caledon', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (833, N'L7E', N'Bolton', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (834, N'L7G', N'Georgetown', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (835, N'L7J', N'Acton', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (836, N'L7L', N'Burlington Northeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (837, N'L7M', N'Burlington North', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (838, N'L7N', N'Burlington East', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (839, N'L7P', N'Burlington West', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (840, N'L7R', N'Burlington Southeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (841, N'L7S', N'Burlington South', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (842, N'L7T', N'Burlington Southwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (843, N'L8E', N'Hamilton (Confederation Park / Nashdale / East Kentley / Riverdale / Lakely / Grayside / North Stoney Creek)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (844, N'L8G', N'Hamilton (Greenford / North Gershome / West Stoney Creek)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (845, N'L8H', N'Hamilton (West Kentley / McQuesten / Parkview / Hamilton Beach / East Industrial Sector / Normanhurst / Homeside / East Crown Point)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (846, N'L8J', N'Hamilton (East Albion Falls / South Stoney Creek)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (847, N'L8K', N'Hamilton (East Delta / Bartonville / Glenview / Rosedale / Lower King s Forest / Red Hill / Corman / Vincent / South Gershome)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (848, N'L8L', N'Hamilton (West Industrial Sector / West Crown Point / North Stipley / North Gibson / Landsdale / Keith / North End / Beasley)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (849, N'L8M', N'Hamilton (West Delta / Blakeley / South Stipley / South Gibson / St. Clair)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (850, N'L8N', N'Hamilton (Stinson / Corktown)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (851, N'L8P', N'Hamilton (Durand / Kirkendall / Chedoke Park)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (852, N'L8R', N'Hamilton (Central / Strathcona / South Dundurn)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (853, N'L8S', N'Hamilton (Westdale / Cootes Paradise / Ainslie Wood)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (854, N'L8T', N'Hamilton (Sherwood / Huntington / Upper King s Forest / Lisgar / Berrisfield / Hampton Heights / Sunninghill)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (855, N'L8V', N'Hamilton (Raleigh / Macassa / Lawfield / Thorner / Burkholme / Eastmount)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (856, N'L8W', N'Hamilton (West Albion Falls / Hannon / Rymal / Trenholme / Quinndale / Templemead / Broughton / Eleanor / Randall / Rushdale / Butler / East Chappel)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (857, N'L9A', N'Hamilton (Crerar / Bruleville / Hill Park / Inch Park / Centremount / Balfour / Greeningdon / Jerome)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (858, N'L9B', N'Hamilton (Barnstown / West Chappel / Allison / Ryckmans / Mewburn / Sheldon / Falkirk / Carpenter / Kennedy / Southwest Outskirts)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (859, N'L9C', N'Hamilton (Southam / Bonnington / Yeoville / Kernighan / Gourley / Rolston / Buchanan / Mohawk / Westcliffe / Gilbert / Gilkson / Gurnett / Fessenden / Mountview)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (860, N'L9G', N'Ancaster West', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (861, N'L9H', N'Dundas', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (862, N'L9K', N'Ancaster East', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (863, N'L9L', N'Port Perry', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (864, N'L9M', N'Penetanguishene', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (865, N'L9N', N'Holland Landing', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (866, N'L9P', N'Uxbridge', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (867, N'L9R', N'Alliston', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (868, N'L9S', N'Innisfil', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (869, N'L9T', N'Milton', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (870, N'L9V', N'Orangeville North', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (871, N'L9W', N'Orangeville South', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (872, N'L9Y', N'Collingwood', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (873, N'L9Z', N'Wasaga Beach', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (874, N'M1B', N'Scarborough (Malvern / Rouge River)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (875, N'M1C', N'Scarborough (Rouge Hill / Port Union / Highland Creek)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (876, N'M1E', N'Scarborough (Guildwood / Morningside / Ellesmere)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (877, N'M1G', N'Scarborough (Woburn)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (878, N'M1H', N'Scarborough (Cedarbrae)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (879, N'M1J', N'Scarborough (Eglinton)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (880, N'M1K', N'Scarborough (Kennedy Park / Ionview / East Birchmount Park)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (881, N'M1L', N'Scarborough (The Golden Mile / Clairlea / Oakridge / Birchmount Park East)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (882, N'M1M', N'Scarborough (Cliffside / Cliffcrest / Scarborough Village West)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (883, N'M1N', N'Scarborough (Birch Cliff / Cliffside West)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (884, N'M1P', N'Scarborough (Dorset Park / Wexford Heights / Scarborough Town Centre)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (885, N'M1R', N'Scarborough (Wexford / Maryvale)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (886, N'M1S', N'Scarborough (Agincourt)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (887, N'M1T', N'Scarborough (Clarks Corners / Tam O Shanter / Sullivan)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (888, N'M1V', N'Scarborough (Milliken / Agincourt North / Steeles East / L Amoreaux East)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (889, N'M1W', N'Scarborough (Steeles West / L Amoreaux West)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (890, N'M1X', N'Scarborough (Upper Rouge)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (891, N'M2H', N'North York (Hillcrest Village)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (892, N'M2J', N'North York (Fairview / Henry Farm / Oriole)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (893, N'M2K', N'North York (Bayview Village)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (894, N'M2L', N'North York (York Mills / Silver Hills)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (895, N'M2M', N'Willowdale East (Newtonbrook)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (896, N'M2N', N'Willowdale South', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (897, N'M2P', N'North York (York Mills West)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (898, N'M2R', N'Willowdale West', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (899, N'M3A', N'North York (York Heights / Victoria Village / Parkway East)', N'Ontario')
GO
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (900, N'M3B', N'Don Mills North', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (901, N'M3C', N'Don Mills South (Flemingdon Park)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (902, N'M3H', N'North York (Armour Heights / Wilson Heights / Downsview North)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (903, N'M3J', N'North York (Northwood Park / York University)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (904, N'M3K', N'Downsview East (CFB Toronto)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (905, N'M3L', N'Downsview West', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (906, N'M3M', N'Downsview Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (907, N'M3N', N'North York (Jane and Finch)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (908, N'M4A', N'North York (Sweeney Park / Wigmore Park)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (909, N'M4B', N'East York (Parkview Hill / Woodbine Gardens)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (910, N'M4C', N'East York (Woodbine Heights)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (911, N'M4E', N'East Toronto (The Beaches)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (912, N'M4G', N'East York (Leaside)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (913, N'M4H', N'East York (Thorncliffe Park)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (914, N'M4J', N'East Toronto (The Danforth East)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (915, N'M4K', N'East Toronto (The Danforth West / Riverdale)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (916, N'M4L', N'East Toronto (India Bazaar / The Beaches West)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (917, N'M4M', N'East Toronto (Studio District)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (918, N'M4N', N'Central Toronto (Lawrence Park East)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (919, N'M4P', N'Central Toronto (Davisville North)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (920, N'M4R', N'Central Toronto (North Toronto West)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (921, N'M4S', N'Central Toronto (Davisville)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (922, N'M4T', N'Central Toronto (Moore Park / Summerhill East)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (923, N'M4V', N'Central Toronto (Summerhill West / Rathnelly / South Hill / Forest Hill SE / Deer Park)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (924, N'M4W', N'Downtown Toronto (Rosedale)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (925, N'M4X', N'Downtown Toronto (St. James Town / Cabbagetown)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (926, N'M4Y', N'Downtown Toronto (Church and Wellesley)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (927, N'M5A', N'Downtown Toronto (Regent Park / Port of Toronto)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (928, N'M5B', N'Downtown Toronto (Ryerson)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (929, N'M5C', N'Downtown Toronto (St. James Park)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (930, N'M5E', N'Downtown Toronto (Berczy Park)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (931, N'M5G', N'Downtown Toronto (Central Bay Street)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (932, N'M5H', N'Downtown Toronto (Richmond / Adelaide / King)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (933, N'M5J', N'Downtown Toronto (Harbourfront East / Union Station / Toronto Island)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (934, N'M5K', N'Downtown Toronto (Toronto Dominion Centre / Design Exchange)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (935, N'M5L', N'Downtown Toronto (Commerce Court / Victoria Hotel)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (936, N'M5M', N'North York (Bedford Park / Lawrence Park West / Lawrence Manor East)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (937, N'M5N', N'Central Toronto (Roselawn)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (938, N'M5P', N'Central Toronto (Forest Hill North & West)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (939, N'M5R', N'Central Toronto (The Annex / North Midtown / Yorkville)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (940, N'M5S', N'Downtown Toronto (University of Toronto / Harbord)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (941, N'M5T', N'Downtown Toronto (Kensington Market / Chinatown / Grange Park)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (942, N'M5V', N'Downtown Toronto (CN Tower / King and Spadina / Railway Lands / Harbourfront West / Bathurst Quay / South Niagara / YTZ)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (943, N'M5W', N'Downtown Toronto Stn A PO Boxes 25 The Esplanade (Enclave of M5E)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (944, N'M5X', N'Downtown Toronto (Underground city)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (945, N'M6A', N'North York (Lawrence Manor / Lawrence Heights)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (946, N'M6B', N'North York (Glencairn)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (947, N'M6C', N'York (Cedarvale)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (948, N'M6E', N'York (Fairbank / Oakwood)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (949, N'M6G', N'Downtown Toronto (Christie)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (950, N'M6H', N'West Toronto (Dufferin / Dovercourt Village)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (951, N'M6J', N'West Toronto (Rua Aþores / Trinity)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (952, N'M6K', N'West Toronto (Brockton / Parkdale Village / Exhibition Place)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (953, N'M6L', N'North York (North Park / Maple Leaf Park / Upwood Park)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (954, N'M6M', N'York (Del Ray / Keelsdale / Mount Dennis / Silverthorne)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (955, N'M6N', N'York (Runnymede / The Junction North)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (956, N'M6P', N'West Toronto (High Park / The Junction South)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (957, N'M6R', N'West Toronto (Parkdale / Roncesvalles Village)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (958, N'M6S', N'West Toronto (Bloor West Village / Swansea)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (959, N'M7A', N'Queen s Park Ontario Provincial Government', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (960, N'M7Y', N'East Toronto Business Reply Mail Processing Centre 969 Eastern (Enclave of M4L)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (961, N'M8V', N'Etobicoke (New Toronto / Mimico South / Humber Bay Shores)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (962, N'M8W', N'Etobicoke (Alderwood / Long Branch)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (963, N'M8X', N'Etobicoke (The Kingsway / Montgomery Road / Old Mill North)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (964, N'M8Y', N'Etobicoke (Old Mill South / King s Mill Park / Sunnylea / Humber Bay / Mimico NE / The Queensway East / Royal York South East / Kingsway Park South East)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (965, N'M8Z', N'Etobicoke (Mimico NW / The Queensway West / South of Bloor / Kingsway Park South West / Royal York South West)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (966, N'M9A', N'Etobicoke (Islington Avenue)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (967, N'M9B', N'Etobicoke (West Deane Park / Princess Gardens / Martin Grove / Islington / Cloverdale)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (968, N'M9C', N'Etobicoke (Eringate / Bloordale Gardens / Old Burnhamthorpe / Markland Woods)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (969, N'M9L', N'North York (Humber Summit)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (970, N'M9M', N'North York (Humberlea / Emery)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (971, N'M9N', N'Weston', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (972, N'M9P', N'Etobicoke (Westmount)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (973, N'M9R', N'Etobicoke (Kingsview Village / St. Phillips / Martin Grove Gardens / Richview Gardens)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (974, N'M9V', N'Etobicoke (South Steeles / Silverstone / Humbergate / Jamestown / Mount Olive / Beaumond Heights / Thistletown / Albion Gardens)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (975, N'M9W', N'Etobicoke Northwest (Clairville / Humberwood / Woodbine Downs / West Humber / Kipling Heights / Rexdale / Elms / Tandridge / Old Rexdale)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (976, N'N0A', N'West Haldimand (Port Dover)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (977, N'N0B', N'Wellington (Elora)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (978, N'N0C', N'Georgian Bay Southwest Shore (Dundalk)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (979, N'N0E', N'Brant and Norfolk (Waterford)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (980, N'N0G', N'Huron (Wingham)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (981, N'N0H', N'Bruce Peninsula (Wiarton)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (982, N'N0J', N'Oxford (Norwich)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (983, N'N0K', N'Perth (Mitchell)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (984, N'N0L', N'Elgin (Dorchester)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (985, N'N0M', N'Middlesex (Clinton)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (986, N'N0N', N'Lambton (Forest)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (987, N'N0P', N'Kent (Blenheim)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (988, N'N0R', N'Essex (Belle River)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (989, N'N1A', N'Dunnville', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (990, N'N1C', N'Guelph South', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (991, N'N1E', N'Guelph North', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (992, N'N1G', N'Guelph Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (993, N'N1H', N'Guelph Northwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (994, N'N1K', N'Guelph West', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (995, N'N1L', N'Guelph East', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (996, N'N1M', N'Fergus', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (997, N'N1P', N'Cambridge South', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (998, N'N1R', N'Cambridge Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (999, N'N1S', N'Cambridge Southwest', N'Ontario')
GO
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1000, N'N1T', N'Cambridge East', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1001, N'N2A', N'Kitchener East', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1002, N'N2B', N'Kitchener Northeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1003, N'N2C', N'Kitchener South Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1004, N'N2E', N'Kitchener Southwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1005, N'N2G', N'Kitchener Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1006, N'N2H', N'Kitchener North Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1007, N'N2J', N'Waterloo Southeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1008, N'N2K', N'Kitchener North', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1009, N'N2L', N'Waterloo South', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1010, N'N2M', N'Kitchener Northwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1011, N'N2N', N'Kitchener West', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1012, N'N2P', N'Kitchener Southeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1013, N'N2R', N'Kitchener South', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1014, N'N2T', N'Waterloo Southwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1015, N'N2V', N'Waterloo Northwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1016, N'N2Z', N'Kincardine', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1017, N'N3A', N'Baden', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1018, N'N3B', N'Elmira', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1019, N'N3C', N'Cambridge Northeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1020, N'N3E', N'Cambridge Northwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1021, N'N3H', N'Cambridge West', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1022, N'N3L', N'Paris', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1023, N'N3P', N'Brantford Northeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1024, N'N3R', N'Brantford Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1025, N'N3S', N'Brantford Southeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1026, N'N3T', N'Brantford Southwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1027, N'N3V', N'Brantford Northwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1028, N'N3W', N'Caledonia', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1029, N'N3Y', N'Simcoe', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1030, N'N4B', N'Delhi', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1031, N'N4G', N'Tillsonburg', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1032, N'N4K', N'Owen Sound', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1033, N'N4L', N'Meaford', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1034, N'N4N', N'Hanover', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1035, N'N4S', N'Woodstock Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1036, N'N4T', N'Woodstock North', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1037, N'N4V', N'Woodstock South', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1038, N'N4W', N'Listowel', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1039, N'N4X', N'St. Mary s', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1040, N'N4Z', N'Stratford South', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1041, N'N5A', N'Stratford North', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1042, N'N5C', N'Ingersoll', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1043, N'N5H', N'Aylmer', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1044, N'N5L', N'Port Stanley', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1045, N'N5P', N'St. Thomas North', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1046, N'N5R', N'St. Thomas South', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1047, N'N5V', N'London (YXU / North and East Argyle / East Huron Heights)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1048, N'N5W', N'London East (SW Argyle / Hamilton Road)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1049, N'N5X', N'London (Fanshawe / Stoneybrook / Stoney Creek / Uplands / East Masonville)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1050, N'N5Y', N'London (West Huron Heights / Carling)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1051, N'N5Z', N'London (Glen Cairn)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1052, N'N6A', N'London North (UWO)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1053, N'N6B', N'London Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1054, N'N6C', N'London South (East Highland / North White Oaks / North Westminster)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1055, N'N6E', N'London (South White Oaks / Central Westminster / East Longwoods / West Brockley)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1056, N'N6G', N'London (Sunningdale / West Masonville / Medway / NE Hyde Park / East Fox Hollow)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1057, N'N6H', N'London West (Central Hyde Park / Oakridge)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1058, N'N6J', N'London (Southcrest / East Westmount / West Highland)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1059, N'N6K', N'London (Riverbend / Woodhull / North Sharon Creek / Byron / West Westmount)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1060, N'N6L', N'London (East Tempo)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1061, N'N6M', N'London (Jackson / Old Victoria / Bradley / North Highbury)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1062, N'N6N', N'London (South Highbury / Glanworth / East Brockley / SE Westminster)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1063, N'N6P', N'London (Talbot / Lambeth / West Tempo / South Sharon Creek)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1064, N'N7A', N'Goderich', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1065, N'N7G', N'Strathroy', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1066, N'N7L', N'Chatham Northwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1067, N'N7M', N'Chatham Southeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1068, N'N7S', N'Sarnia Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1069, N'N7T', N'Sarnia Southwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1070, N'N7V', N'Sarnia Northwest', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1071, N'N7W', N'Sarnia Southeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1072, N'N7X', N'Sarnia Northeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1073, N'N8A', N'Wallaceburg', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1074, N'N8H', N'Leamington', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1075, N'N8M', N'Essex', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1076, N'N8N', N'Tecumseh Outskirts', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1077, N'N8P', N'Windsor (East Riverside)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1078, N'N8R', N'Windsor (East Forest Glade)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1079, N'N8S', N'Windsor (Riverside)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1080, N'N8T', N'Windsor (West Forest Glade / East Fontainbleu)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1081, N'N8V', N'Tecumseh (YQG)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1082, N'N8W', N'Windsor (South Walkerville / West Fontainbleu / Walker Farm / Devonshire)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1083, N'N8X', N'Windsor South Central (West Walkerville / Remington Park)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1084, N'N8Y', N'Windsor East (East Walkerville)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1085, N'N9A', N'Windsor (City Centre / NW Walkerville)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1086, N'N9B', N'Windsor (University / South Cameron)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1087, N'N9C', N'Windsor (Sandwich / Ojibway / West Malden)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1088, N'N9E', N'Windsor South (East Malden)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1089, N'N9G', N'Windsor (Roseland)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1090, N'N9H', N'La Salle East', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1091, N'N9J', N'La Salle West', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1092, N'N9K', N'Tecumseh Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1093, N'N9V', N'Amherstburg', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1094, N'N9Y', N'Kingsville', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1095, N'P0A', N'Nipissing Central (Burk s Falls)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1096, N'P0B', N'Nipissing South (Utterson)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1097, N'P0C', N'Parry Sound Mid-Shore (Bala)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1098, N'P0E', N'Parry Sound South Shore (Kilworthy)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1099, N'P0G', N'Parry Sound North Shore (Nobel)', N'Ontario')
GO
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1100, N'P0H', N'Nipissing North (Callander)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1101, N'P0J', N'Timiskaming South (Temiskaming Shores)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1102, N'P0K', N'Timiskaming North (Iroquois Falls A)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1103, N'P0L', N'Cochrane Region (Hearst)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1104, N'P0M', N'Algoma, Sudbury District and Greater Sudbury (Chelmsford)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1105, N'P0N', N'Timmins Region (South Porcupine)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1106, N'P0P', N'Manitoulin (Little Current)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1107, N'P0R', N'Algoma Southwest (Blind River)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1108, N'P0S', N'Lake Superior East Shore (Wawa)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1109, N'P0T', N'Lake Superior North Shore (Marathon)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1110, N'P0V', N'Northwestern Ontario (Red Lake)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1111, N'P0W', N'Rainy River Region (Emo)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1112, N'P0X', N'Kenora Region (Keewatin)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1113, N'P0Y', N'Lake of the Woods East Shore (Ingolf)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1114, N'P1A', N'North Bay South', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1115, N'P1B', N'North Bay Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1116, N'P1C', N'North Bay North', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1117, N'P1H', N'Huntsville', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1118, N'P1L', N'Bracebridge', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1119, N'P1P', N'Gravenhurst', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1120, N'P2A', N'Parry Sound', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1121, N'P2B', N'Sturgeon Falls', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1122, N'P2N', N'Kirkland Lake', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1123, N'P3A', N'Greater Sudbury (New Sudbury)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1124, N'P3B', N'Greater Sudbury (Downtown / Minnow Lake)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1125, N'P3C', N'Greater Sudbury (Gatchell / West End / Little Britain)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1126, N'P3E', N'Greater Sudbury (Robinson / Lockerby)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1127, N'P3G', N'Greater Sudbury (Lo-Ellen / McFarlane Lake)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1128, N'P3L', N'Greater Sudbury (Garson)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1129, N'P3N', N'Greater Sudbury (Val Caron)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1130, N'P3P', N'Greater Sudbury (Hanmer)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1131, N'P3Y', N'Greater Sudbury (Lively)', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1132, N'P4N', N'Timmins Southeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1133, N'P4P', N'Timmins North', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1134, N'P4R', N'Timmins West', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1135, N'P5A', N'Elliot Lake', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1136, N'P5E', N'Espanola', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1137, N'P5N', N'Kapuskasing', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1138, N'P6A', N'Sault Ste. Marie East', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1139, N'P6B', N'Sault Ste. Marie Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1140, N'P6C', N'Sault Ste. Marie North', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1141, N'P7A', N'Thunder Bay Northeast', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1142, N'P7B', N'Thunder Bay North Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1143, N'P7C', N'Thunder Bay Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1144, N'P7E', N'Thunder Bay South Central', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1145, N'P7G', N'Thunder Bay North', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1146, N'P7J', N'Thunder Bay South', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1147, N'P7K', N'Thunder Bay West', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1148, N'P8N', N'Dryden', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1149, N'P8T', N'Sioux Lookout', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1150, N'P9A', N'Fort Frances', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1151, N'P9N', N'Kenora', N'Ontario')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1152, N'C0A', N'Montague', N'Prince Edward Island')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1153, N'C0B', N'Prince County (Portage)', N'Prince Edward Island')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1154, N'C1A', N'Charlottetown Southeast Prince Edward Island Provincial Government', N'Prince Edward Island')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1155, N'C1B', N'Stratford', N'Prince Edward Island')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1156, N'C1C', N'Charlottetown North', N'Prince Edward Island')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1157, N'C1E', N'Charlottetown West', N'Prince Edward Island')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1158, N'C1N', N'Summerside', N'Prince Edward Island')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1159, N'G0A', N'Capitale-Nationale (Stoneham)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1160, N'G0B', N'Cap-aux-Meules', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1161, N'G0C', N'Gaspésie-Sud (New Richmond)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1162, N'G0E', N'Gaspésie-Nord (Grande-Vallée)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1163, N'G0G', N'Côte-Nord/Anticosti (Schefferville)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1164, N'G0H', N'Manicouagan (Baie-Trinité)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1165, N'G0J', N'Gaspésie-Ouest (Causapscal)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1166, N'G0K', N'Bas-St-Laurent- Est (Sainte-Luce)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1167, N'G0L', N'Bas-St-Laurent- Ouest (Trois-Pistoles)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1168, N'G0M', N'Région de Beauce (Saint-Prosper-De- Dorchester)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1169, N'G0N', N'Chaudière-Sud (Disraeli)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1170, N'G0P', N'Centre-du- Québec-Est (Saint-Valère)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1171, N'G0R', N'Appalaches (La Pocatière)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1172, N'G0S', N'Chaudière-Nord (Saint-Joseph- De-Beauce)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1173, N'G0T', N'Le Fjord (Forestville)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1174, N'G0V', N'Saguenay- Lac-St-Jean (Alouette)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1175, N'G0W', N'Région de Mistassini (Chambord)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1176, N'G0X', N'Mauricie (Parent)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1177, N'G0Y', N'L Erable (Nantes)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1178, N'G0Z', N'Centre-du- Québec-Nord (Daveluyville)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1179, N'G1A', N'Quebec Provincial Government', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1180, N'G1B', N'Beauport North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1181, N'G1C', N'Beauport Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1182, N'G1E', N'Beauport South', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1183, N'G1G', N'Jean-Talon Southeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1184, N'G1H', N'Charlesbourg South', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1185, N'G1J', N'Quebec City Lower Riverbank', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1186, N'G1K', N'Quebec City Mid-Riverbank', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1187, N'G1L', N'Quebec City Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1188, N'G1M', N'Quebec City North Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1189, N'G1N', N'Quebec City South Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1190, N'G1P', N'Quebec City West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1191, N'G1R', N'Quebec City East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1192, N'G1S', N'Quebec City South', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1193, N'G1T', N'Quebec City Upper Riverbank', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1194, N'G1V', N'Sainte-Foy Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1195, N'G1W', N'Sainte-Foy Southeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1196, N'G1X', N'Sainte-Foy West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1197, N'G1Y', N'Cap-Rouge', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1198, N'G2A', N'Loretteville North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1199, N'G2B', N'Loretteville South', N'Quebec')
GO
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1200, N'G2C', N'Quebec City Northwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1201, N'G2E', N'L Ancienne- Lorette Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1202, N'G2G', N'L Ancienne- Lorette Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1203, N'G2J', N'Quebec City Inner North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1204, N'G2K', N'Quebec City Outer North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1205, N'G2L', N'Charlesbourg North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1206, N'G2M', N'Jean-Talon Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1207, N'G2N', N'Jean-Talon West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1208, N'G3A', N'St-Augustin- De-Desmaures', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1209, N'G3E', N'Saint-Émile', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1210, N'G3G', N'Lac-Saint-Charles', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1211, N'G3H', N'Pont-Rouge', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1212, N'G3J', N'Val-Bélair North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1213, N'G3K', N'Val-Bélair South', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1214, N'G3L', N'Saint-Raymond', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1215, N'G3M', N'Donnacona', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1216, N'G3Z', N'Baie-Saint-Paul', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1217, N'G4A', N'Clermont', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1218, N'G4R', N'Sept-Îles Southeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1219, N'G4S', N'Sept-Îles Northwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1220, N'G4T', N'Les Îles-De-La- Madeleine', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1221, N'G4V', N'Sainte-Anne- Des-Monts', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1222, N'G4W', N'Matane', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1223, N'G4X', N'Gaspé', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1224, N'G4Z', N'Baie-Comeau Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1225, N'G5A', N'La Malbaie', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1226, N'G5B', N'Port-Cartier', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1227, N'G5C', N'Baie-Comeau Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1228, N'G5H', N'Mont-Joli', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1229, N'G5J', N'Amqui', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1230, N'G5L', N'Rimouski Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1231, N'G5M', N'Rimouski Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1232, N'G5N', N'Rimouski Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1233, N'G5R', N'Rivière-du-Loup', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1234, N'G5T', N'Degelis', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1235, N'G5V', N'Montmagny', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1236, N'G5X', N'Beauceville', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1237, N'G5Y', N'Saint-Georges Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1238, N'G5Z', N'Saint-Georges Southeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1239, N'G6A', N'Saint-Georges Northwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1240, N'G6B', N'Lac-Megantic', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1241, N'G6C', N'Pintendre', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1242, N'G6E', N'Sainte-Marie', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1243, N'G6G', N'Thetford Mines', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1244, N'G6H', N'Black Lake', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1245, N'G6J', N'Saint-Etienne- De-Lauzon', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1246, N'G6K', N'Saint- Redempteur', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1247, N'G6L', N'Plessisville', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1248, N'G6P', N'Victoriaville Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1249, N'G6R', N'Victoriaville South', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1250, N'G6S', N'Victoriaville East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1251, N'G6T', N'Victoriaville Northwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1252, N'G6V', N'Lévis North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1253, N'G6W', N'Lévis South', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1254, N'G6X', N'Charny', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1255, N'G6Z', N'Saint-Jean- Chrysostome', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1256, N'G7A', N'Saint-Nicolas', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1257, N'G7B', N'La Baie', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1258, N'G7G', N'Chicoutimi North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1259, N'G7H', N'Chicoutimi East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1260, N'G7J', N'Chicoutimi West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1261, N'G7K', N'Chicoutimi Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1262, N'G7N', N'Laterrière', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1263, N'G7P', N'Saint-Ambroise', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1264, N'G7S', N'Jonquière Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1265, N'G7T', N'Jonquière Southeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1266, N'G7X', N'Jonquière Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1267, N'G7Y', N'Jonquière Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1268, N'G7Z', N'Jonquière Northwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1269, N'G8A', N'Jonquière West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1270, N'G8B', N'Alma Southeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1271, N'G8C', N'Alma Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1272, N'G8E', N'Alma North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1273, N'G8G', N'Métabetchouan- Lac-a-la-Croix', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1274, N'G8H', N'Roberval', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1275, N'G8J', N'Saint-Prime', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1276, N'G8K', N'Saint-Félicien', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1277, N'G8L', N'Dolbeau- Mistassini', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1278, N'G8M', N'Albanel', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1279, N'G8N', N'Hébertville', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1280, N'G8P', N'Chibougamau', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1281, N'G8T', N'Cap-de-la- Madeleine Central and southeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1282, N'G8V', N'Cap-de-la- Madeleine Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1283, N'G8W', N'Cap-de-la- Madeleine West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1284, N'G8Y', N'Trois-Rivières Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1285, N'G8Z', N'Trois-Rivières Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1286, N'G9A', N'Trois-Rivières East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1287, N'G9B', N'Trois-Rivières South', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1288, N'G9C', N'Trois-Rivières West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1289, N'G9H', N'Becancour', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1290, N'G9N', N'Shawinigan Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1291, N'G9P', N'Shawinigan Southeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1292, N'G9R', N'Shawinigan Northwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1293, N'G9T', N'Grand-Mère', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1294, N'G9X', N'La Tuque', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1295, N'H0H', N'Reserved (Santa Claus)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1296, N'H0M', N'Akwesasne Region (Akwesasne)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1297, N'H1A', N'Pointe-Aux-Trembles', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1298, N'H1B', N'Montreal East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1299, N'H1C', N'Rivière-des-Prairies Northeast', N'Quebec')
GO
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1300, N'H1E', N'Rivière-Des-Prairies Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1301, N'H1G', N'Montreal North North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1302, N'H1H', N'Montreal North South', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1303, N'H1J', N'Anjou West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1304, N'H1K', N'Anjou East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1305, N'H1L', N'Mercier North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1306, N'H1M', N'Mercier West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1307, N'H1N', N'Mercier Southeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1308, N'H1P', N'Saint-Léonard North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1309, N'H1R', N'Saint-Léonard West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1310, N'H1S', N'Saint-Léonard Southeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1311, N'H1T', N'Rosemont North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1312, N'H1V', N'Maisonneuve', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1313, N'H1W', N'Hochelaga', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1314, N'H1X', N'Rosemont Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1315, N'H1Y', N'Rosemont South', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1316, N'H1Z', N'Saint-Michel West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1317, N'H2A', N'Saint-Michel East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1318, N'H2B', N'Ahuntsic North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1319, N'H2C', N'Ahuntsic Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1320, N'H2E', N'Villeray Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1321, N'H2G', N'Petite-Patrie Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1322, N'H2H', N'Plateau Mont-Royal North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1323, N'H2J', N'Plateau Mont-Royal North Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1324, N'H2K', N'Centre-Sud North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1325, N'H2L', N'Centre-Sud South', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1326, N'H2M', N'Ahuntsic East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1327, N'H2N', N'Ahuntsic Southeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1328, N'H2P', N'Villeray West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1329, N'H2R', N'Villeray Southeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1330, N'H2S', N'Petite-Patrie Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1331, N'H2T', N'Plateau Mont-Royal West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1332, N'H2V', N'Outremont', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1333, N'H2W', N'Plateau Mont-Royal South Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1334, N'H2X', N'Plateau Mont-Royal Southeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1335, N'H2Y', N'Old Montreal', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1336, N'H2Z', N'Downtown Montreal Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1337, N'H3A', N'Downtown Montreal North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1338, N'H3B', N'Downtown Montreal East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1339, N'H3C', N'Griffintown (Includes Île Notre-Dame & Île Sainte-Hélène)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1340, N'H3E', N'L Île-Des-Soeurs', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1341, N'H3G', N'Downtown Montreal Southeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1342, N'H3H', N'Downtown Montreal South & West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1343, N'H3J', N'Petite-Bourgogne', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1344, N'H3K', N'Pointe-Saint-Charles', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1345, N'H3L', N'Ahuntsic Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1346, N'H3M', N'Cartierville Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1347, N'H3N', N'Parc-Extension', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1348, N'H3P', N'Mount Royal North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1349, N'H3R', N'Mount Royal Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1350, N'H3S', N'Côte-des-Neiges North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1351, N'H3T', N'Côte-des-Neiges Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1352, N'H3V', N'Côte-des-Neiges East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1353, N'H3W', N'Côte-des-Neiges Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1354, N'H3X', N'Hampstead', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1355, N'H3Y', N'Westmount West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1356, N'H3Z', N'Westmount East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1357, N'H4A', N'Notre-Dame-de-GrÔce Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1358, N'H4B', N'Notre-Dame-de-GrÔce Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1359, N'H4C', N'Saint-Henri', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1360, N'H4E', N'Ville Émard', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1361, N'H4G', N'Verdun North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1362, N'H4H', N'Verdun South', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1363, N'H4J', N'Cartierville Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1364, N'H4K', N'Cartierville Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1365, N'H4L', N'Saint-Laurent Inner Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1366, N'H4M', N'Saint-Laurent East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1367, N'H4N', N'Saint-Laurent Outer Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1368, N'H4P', N'Mount Royal South', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1369, N'H4R', N'Saint-Laurent Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1370, N'H4S', N'Saint-Laurent Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1371, N'H4T', N'Saint-Laurent Southeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1372, N'H4V', N'Côte-Saint-Luc East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1373, N'H4W', N'Côte-Saint-Luc West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1374, N'H4X', N'Montreal West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1375, N'H4Y', N'Dorval Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1376, N'H4Z', N'Tour de la Bourse', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1377, N'H5A', N'Place Bonaventure', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1378, N'H5B', N'Place Desjardins', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1379, N'H7A', N'Duvernay-Est', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1380, N'H7B', N'Saint-Franþois', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1381, N'H7C', N'Saint-Vincent-de-Paul', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1382, N'H7E', N'Duvernay', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1383, N'H7G', N'Pont-Viau', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1384, N'H7H', N'Auteuil West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1385, N'H7J', N'Auteuil Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1386, N'H7K', N'Auteuil South', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1387, N'H7L', N'Sainte-Rose', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1388, N'H7M', N'Vimont', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1389, N'H7N', N'Laval-des-Rapides', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1390, N'H7P', N'Fabreville', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1391, N'H7R', N'Laval-sur-le-Lac', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1392, N'H7S', N'Chomedey Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1393, N'H7T', N'Chomedey Northwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1394, N'H7V', N'Chomedey East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1395, N'H7W', N'Chomedey South', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1396, N'H7X', N'Sainte-Dorothée', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1397, N'H7Y', N'Îles-Laval', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1398, N'H8N', N'LaSalle Northwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1399, N'H8P', N'LaSalle Southeast', N'Quebec')
GO
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1400, N'H8R', N'Saint-Pierre', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1401, N'H8S', N'Lachine East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1402, N'H8T', N'Lachine West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1403, N'H8Y', N'Roxboro', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1404, N'H8Z', N'Pierrefonds', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1405, N'H9A', N'Dollard-Des- Ormeaux Northwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1406, N'H9B', N'Dollard-Des- Ormeaux East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1407, N'H9C', N'L Île Bizard Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1408, N'H9E', N'L Île-Bizard Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1409, N'H9G', N'Dollard-Des- Ormeaux Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1410, N'H9H', N'Sainte-Geneviève', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1411, N'H9J', N'Kirkland', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1412, N'H9K', N'Senneville', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1413, N'H9P', N'Dorval Outskirts', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1414, N'H9R', N'Pointe-Claire', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1415, N'H9S', N'L Île-Dorval', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1416, N'H9W', N'Beaconsfield', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1417, N'H9X', N'Sainte-Anne-De- Bellevue', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1418, N'J0A', N'Centre-du- Québec-Sud (Warwick)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1419, N'J0B', N'Estrie-Est (Stanstead)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1420, N'J0C', N'Centre-du- Québec-Ouest (Saint- Bonaventure)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1421, N'J0E', N'Estrie-Ouest (Fulford)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1422, N'J0G', N'Bois-Francs-Nord (Odanak)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1423, N'J0H', N'Bois-Francs-Sud (Saint-Nazaire- D Acton)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1424, N'J0J', N'Montérégie-Est (Bedford)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1425, N'J0K', N'Lanaudière-Nord (Saint-Esprit)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1426, N'J0L', N'Montérégie-Nord (Saint-Antoine- Sur-Richelieu)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1427, N'J0M', N'Nunavik (Kuujjuaq)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1428, N'J0N', N'Région d Oka (Oka)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1429, N'J0P', N'Vaudreuil- Soulanges (Coteau-du-Lac)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1430, N'J0R', N'Lanaudière-Sud (Prévost)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1431, N'J0S', N'Montérégie- Ouest (Saint-Anicet)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1432, N'J0T', N'Laurentides-Nord (Montcalm)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1433, N'J0V', N'Laurentides-Sud (Chénéville)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1434, N'J0W', N'Outaouais-Nord (Ferme-Neuve)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1435, N'J0X', N'Outaouais-Sud (Thurso)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1436, N'J0Y', N'Abitibi- Témiscamingue- Est (Radisson)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1437, N'J0Z', N'Abitibi- Témiscamingue- Ouest (Guigues)', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1438, N'J1A', N'Coaticook', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1439, N'J1E', N'Sherbrooke Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1440, N'J1G', N'Sherbrooke East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1441, N'J1H', N'Sherbrooke Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1442, N'J1J', N'Sherbrooke North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1443, N'J1K', N'Sherbrooke West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1444, N'J1L', N'Sherbrooke Northwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1445, N'J1M', N'Sherbrooke Southeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1446, N'J1N', N'Rock Forest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1447, N'J1S', N'Windsor', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1448, N'J1T', N'Asbestos', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1449, N'J1X', N'Magog', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1450, N'J1Z', N'Saint-Cyrille- De-Wendover', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1451, N'J2A', N'Drummondville Southeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1452, N'J2B', N'Drummondville South', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1453, N'J2C', N'Drummondville Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1454, N'J2E', N'Drummondville Northwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1455, N'J2G', N'Granby Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1456, N'J2H', N'Granby East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1457, N'J2J', N'Granby West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1458, N'J2K', N'Cowansville', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1459, N'J2L', N'Bromont', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1460, N'J2N', N'Farnham', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1461, N'J2R', N'Saint-Hyacinthe Northwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1462, N'J2S', N'Saint-Hyacinthe Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1463, N'J2T', N'Saint-Hyacinthe East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1464, N'J2W', N'Saint-Luc', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1465, N'J2X', N'Saint-Jean- sur-Richelieu East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1466, N'J2Y', N'Saint-Jean- sur-Richelieu West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1467, N'J3A', N'Saint-Jean- sur-Richelieu North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1468, N'J3B', N'Saint-Jean- sur-Richelieu Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1469, N'J3E', N'Sainte-Julie', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1470, N'J3G', N'Beloeil West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1471, N'J3H', N'Beloeil East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1472, N'J3L', N'Chambly', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1473, N'J3M', N'Marieville', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1474, N'J3N', N'Saint-Basile- Le-Grand', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1475, N'J3P', N'Sorel Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1476, N'J3R', N'Sorel Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1477, N'J3T', N'Nicolet', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1478, N'J3V', N'Saint-Bruno', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1479, N'J3X', N'Varennes', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1480, N'J3Y', N'Saint-Hubert Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1481, N'J3Z', N'Saint-Hubert East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1482, N'J4B', N'Boucherville', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1483, N'J4G', N'Longueuil North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1484, N'J4H', N'Longueuil West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1485, N'J4J', N'Longueuil Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1486, N'J4K', N'Longueuil Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1487, N'J4L', N'Longueuil Southeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1488, N'J4M', N'Longueuil East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1489, N'J4N', N'Longueuil Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1490, N'J4P', N'Saint-Lambert North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1491, N'J4R', N'Saint-Lambert Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1492, N'J4S', N'Saint-Lambert South', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1493, N'J4T', N'Saint-Hubert West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1494, N'J4V', N'Greenfield Park', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1495, N'J4W', N'Brossard Northwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1496, N'J4X', N'Brossard Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1497, N'J4Y', N'Brossard South', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1498, N'J4Z', N'Brossard Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1499, N'J5A', N'Saint-Constant', N'Quebec')
GO
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1500, N'J5B', N'Delson', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1501, N'J5J', N'Saint-Sophie', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1502, N'J5K', N'Saint-Colomban', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1503, N'J5L', N'Saint-Jérôme West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1504, N'J5M', N'Saint-Lin- Laurentides', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1505, N'J5R', N'La Prairie', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1506, N'J5T', N'Lavaltrie', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1507, N'J5V', N'Louiseville', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1508, N'J5W', N'L Assomption', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1509, N'J5X', N'L Épiphanie', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1510, N'J5Y', N'Repentigny Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1511, N'J5Z', N'Repentigny West', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1512, N'J6A', N'Repentigny South', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1513, N'J6E', N'Joliette', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1514, N'J6J', N'ChÔteauguay North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1515, N'J6K', N'ChÔteauguay South', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1516, N'J6N', N'Beauharnois', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1517, N'J6R', N'Mercier', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1518, N'J6S', N'Salaberry-de- Valleyfield North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1519, N'J6T', N'Salaberry-de- Valleyfield South', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1520, N'J6V', N'Terrebonne East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1521, N'J6W', N'Terrebonne Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1522, N'J6X', N'Terrebonne Northwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1523, N'J6Y', N'Terrebonne Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1524, N'J6Z', N'Sainte-Thérèse- de-Blainville Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1525, N'J7A', N'Sainte-Thérèse- de-Blainville East', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1526, N'J7B', N'Sainte-Thérèse- de-Blainville North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1527, N'J7C', N'Sainte-Thérèse- de-Blainville Northwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1528, N'J7E', N'Sainte-Thérèse- de-Blainville Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1529, N'J7G', N'Sainte-Thérèse- de-Blainville South', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1530, N'J7H', N'Sainte-Thérèse- de-Blainville Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1531, N'J7J', N'Mirabel Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1532, N'J7K', N'Mascouche Extremities', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1533, N'J7L', N'Mascouche Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1534, N'J7M', N'La Plaine', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1535, N'J7N', N'Mirabel Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1536, N'J7P', N'Saint-Eustache Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1537, N'J7R', N'Saint-Eustache Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1538, N'J7T', N'Vaudreuil- Dorion RCM', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1539, N'J7V', N'Vaudreuil- Dorion', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1540, N'J7X', N'Valleyfield', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1541, N'J7Y', N'Saint-Jérôme North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1542, N'J7Z', N'Saint-Jérôme Southeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1543, N'J8A', N'Saint-Hippolyte', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1544, N'J8B', N'Sainte-Adèle', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1545, N'J8C', N'Sainte-Agathe- Des-Monts', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1546, N'J8E', N'Mont-Tremblant', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1547, N'J8G', N'Chatham', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1548, N'J8H', N'Lachute', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1549, N'J8L', N'Buckingham', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1550, N'J8M', N'Masson-Angers', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1551, N'J8N', N'Val-des-Monts', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1552, N'J8P', N'Gatineau Southeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1553, N'J8R', N'Gatineau Northeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1554, N'J8T', N'Gatineau Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1555, N'J8V', N'Gatineau Northwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1556, N'J8X', N'Hull Southeast', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1557, N'J8Y', N'Hull Central', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1558, N'J8Z', N'Hull North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1559, N'J9A', N'Hull Southwest', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1560, N'J9B', N'Chelsea', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1561, N'J9E', N'Maniwaki', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1562, N'J9H', N'Aylmer South', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1563, N'J9J', N'Aylmer North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1564, N'J9L', N'Mont-Laurier', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1565, N'J9P', N'Val-d Or', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1566, N'J9T', N'Amos', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1567, N'J9V', N'Ville-Marie', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1568, N'J9X', N'Rouyn-Noranda South', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1569, N'J9Y', N'Rouyn-Noranda North', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1570, N'J9Z', N'La Sarre', N'Quebec')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1571, N'S0A', N'Yorkton Region (Melville)', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1572, N'S0C', N'Southeastern Saskatchewan (Carlyle)', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1573, N'S0E', N'Eastern Saskatchewan (Melfort)', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1574, N'S0G', N'South Central Saskatchewan (Fort Qu Appelle)', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1575, N'S0H', N'Southern Saskatchewan (Assiniboia)', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1576, N'S0J', N'Northern Saskatchewan (La Ronge)', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1577, N'S0K', N'Central Saskatchewan (Humboldt)', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1578, N'S0L', N'Western Saskatchewan (Kindersley)', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1579, N'S0M', N'Northwestern Saskatchewan (Battleford)', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1580, N'S0N', N'Southwestern Saskatchewan (Maple Creek)', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1581, N'S0P', N'Northeastern Saskatchewan (Creighton)', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1582, N'S2V', N'Buena Vista', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1583, N'S3N', N'Yorkton', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1584, N'S4A', N'Estevan', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1585, N'S4H', N'Weyburn', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1586, N'S4L', N'Regina East', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1587, N'S4N', N'Regina Northeast and East Central', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1588, N'S4P', N'Regina Central', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1589, N'S4R', N'Regina North Central', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1590, N'S4S', N'Regina South Saskatchewan Provincial Government', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1591, N'S4T', N'Regina West', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1592, N'S4V', N'Regina Southeast', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1593, N'S4W', N'Regina Southwest', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1594, N'S4X', N'Regina Northwest', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1595, N'S4Y', N'Regina Outer Northwest', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1596, N'S4Z', N'Regina Northeast', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1597, N'S6H', N'Moose Jaw Southeast', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1598, N'S6J', N'Moose Jaw Northeast', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1599, N'S6K', N'Moose Jaw West', N'Saskatchewan')
GO
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1600, N'S6V', N'Prince Albert Central', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1601, N'S6W', N'Prince Albert Southwest', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1602, N'S6X', N'Prince Albert East', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1603, N'S7H', N'Saskatoon East Central', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1604, N'S7J', N'Saskatoon South Central', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1605, N'S7K', N'Saskatoon North Central', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1606, N'S7L', N'Saskatoon West', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1607, N'S7M', N'Saskatoon Southwest', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1608, N'S7N', N'Saskatoon Northeast Central', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1609, N'S7P', N'Saskatoon North', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1610, N'S7R', N'Saskatoon Northwest', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1611, N'S7S', N'Saskatoon Northeast', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1612, N'S7T', N'Saskatoon South', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1613, N'S7V', N'Saskatoon Southeast', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1614, N'S9A', N'North Battleford', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1615, N'S9H', N'Swift Current', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1616, N'S9V', N'Lloydminster', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1617, N'S9X', N'Meadow Lake', N'Saskatchewan')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1618, N'Y0A', N'Southeastern Yukon (Watson Lake)', N'Yukon')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1619, N'Y0B', N'Central Yukon (Dawson City)', N'Yukon')
INSERT [dbo].[Localization] ([LocalizationId], [PostalCode], [PlaceName], [Province]) VALUES (1620, N'Y1A', N'Whitehorse', N'Yukon')
SET IDENTITY_INSERT [dbo].[Localization] OFF
SET IDENTITY_INSERT [dbo].[StudyArea] ON 

INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (1, N'Mechanical Engineering')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (2, N'Law')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (3, N'Hospitality')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (4, N'Information Technology')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (5, N'Health')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (6, N'English')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (7, N'Math')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (8, N'Biology')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (9, N'Enviroment')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (10, N'Chemistry')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (11, N'Physics')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (12, N'Arts')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (13, N'Geography')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (14, N'History')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (15, N'Cooking')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (16, N'Physical Education')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (17, N'Business')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (18, N'Financial')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (19, N'Marketing')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (1002, N'Psychology')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (1003, N'Psychiatry')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (1004, N'Civil Engineering')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (1005, N'Aerospace Engineering')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (1006, N'Services')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (1007, N'Bio technology')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (1008, N'Eletronics')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (1009, N'Media')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (1010, N'Electrical Engineering')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (1011, N'Eletronics Engeneering')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (1012, N'Automation & Robotics')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (1013, N'Energy Systems Engineering')
INSERT [dbo].[StudyArea] ([StudyAreaId], [StudyAreaName]) VALUES (1014, N'Communication')
SET IDENTITY_INSERT [dbo].[StudyArea] OFF
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoleClaims]') AND name = N'IX_AspNetRoleClaims_RoleId')
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetRoles]') AND name = N'RoleNameIndex')
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]') AND name = N'IX_AspNetUserClaims_UserId')
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]') AND name = N'IX_AspNetUserLogins_UserId')
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]') AND name = N'IX_AspNetUserRoles_RoleId')
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND name = N'EmailIndex')
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND name = N'UserNameIndex')
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Book_BookConditionId]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Book]') AND name = N'IX_Book_BookConditionId')
CREATE NONCLUSTERED INDEX [IX_Book_BookConditionId] ON [dbo].[Book]
(
	[BookConditionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Book_BuyerUserId]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Book]') AND name = N'IX_Book_BuyerUserId')
CREATE NONCLUSTERED INDEX [IX_Book_BuyerUserId] ON [dbo].[Book]
(
	[BuyerUserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Book_SellerId]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Book]') AND name = N'IX_Book_SellerId')
CREATE NONCLUSTERED INDEX [IX_Book_SellerId] ON [dbo].[Book]
(
	[SellerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Book_StudyAreaId]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Book]') AND name = N'IX_Book_StudyAreaId')
CREATE NONCLUSTERED INDEX [IX_Book_StudyAreaId] ON [dbo].[Book]
(
	[StudyAreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Claim_OrderId]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Claim]') AND name = N'IX_Claim_OrderId')
CREATE NONCLUSTERED INDEX [IX_Claim_OrderId] ON [dbo].[Claim]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Claim_UserId]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Claim]') AND name = N'IX_Claim_UserId')
CREATE NONCLUSTERED INDEX [IX_Claim_UserId] ON [dbo].[Claim]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_ClaimMediation_ClaimId]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[ClaimMediation]') AND name = N'IX_ClaimMediation_ClaimId')
CREATE NONCLUSTERED INDEX [IX_ClaimMediation_ClaimId] ON [dbo].[ClaimMediation]
(
	[ClaimId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Course_InstitutionId]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Course]') AND name = N'IX_Course_InstitutionId')
CREATE NONCLUSTERED INDEX [IX_Course_InstitutionId] ON [dbo].[Course]
(
	[InstitutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Course_StudyAreaId]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Course]') AND name = N'IX_Course_StudyAreaId')
CREATE NONCLUSTERED INDEX [IX_Course_StudyAreaId] ON [dbo].[Course]
(
	[StudyAreaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_InstitutionBranch_InstitutionId]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[InstitutionBranch]') AND name = N'IX_InstitutionBranch_InstitutionId')
CREATE NONCLUSTERED INDEX [IX_InstitutionBranch_InstitutionId] ON [dbo].[InstitutionBranch]
(
	[InstitutionId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Order_BookId]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Order]') AND name = N'IX_Order_BookId')
CREATE NONCLUSTERED INDEX [IX_Order_BookId] ON [dbo].[Order]
(
	[BookId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Order_BuyerId]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Order]') AND name = N'IX_Order_BuyerId')
CREATE NONCLUSTERED INDEX [IX_Order_BuyerId] ON [dbo].[Order]
(
	[BuyerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Order_SellerId]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Order]') AND name = N'IX_Order_SellerId')
CREATE NONCLUSTERED INDEX [IX_Order_SellerId] ON [dbo].[Order]
(
	[SellerId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_Order_UserId]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[Order]') AND name = N'IX_Order_UserId')
CREATE NONCLUSTERED INDEX [IX_Order_UserId] ON [dbo].[Order]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_User_CourseId]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND name = N'IX_User_CourseId')
CREATE NONCLUSTERED INDEX [IX_User_CourseId] ON [dbo].[User]
(
	[CourseId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_User_InstitutionBranchId]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND name = N'IX_User_InstitutionBranchId')
CREATE NONCLUSTERED INDEX [IX_User_InstitutionBranchId] ON [dbo].[User]
(
	[InstitutionBranchId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [IX_User_LocalizationId]    Script Date: 2018-11-06 4:09:27 AM ******/
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[User]') AND name = N'IX_User_LocalizationId')
CREATE NONCLUSTERED INDEX [IX_User_LocalizationId] ON [dbo].[User]
(
	[LocalizationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetRoleClaims_AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetRoleClaims]'))
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetRoleClaims_AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetRoleClaims]'))
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserClaims_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserClaims_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserClaims]'))
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserLogins_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserLogins_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserLogins]'))
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserRoles_AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserRoles_AspNetRoles_RoleId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserRoles_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserRoles_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserRoles]'))
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserTokens_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserTokens]'))
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_AspNetUserTokens_AspNetUsers_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[AspNetUserTokens]'))
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Book_BookCondition_BookConditionId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Book]'))
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_BookCondition_BookConditionId] FOREIGN KEY([BookConditionId])
REFERENCES [dbo].[BookCondition] ([BookConditionId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Book_BookCondition_BookConditionId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Book]'))
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_BookCondition_BookConditionId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Book_StudyArea_StudyAreaId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Book]'))
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_StudyArea_StudyAreaId] FOREIGN KEY([StudyAreaId])
REFERENCES [dbo].[StudyArea] ([StudyAreaId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Book_StudyArea_StudyAreaId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Book]'))
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_StudyArea_StudyAreaId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Book_User_BuyerUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Book]'))
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_User_BuyerUserId] FOREIGN KEY([BuyerUserId])
REFERENCES [dbo].[User] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Book_User_BuyerUserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Book]'))
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_User_BuyerUserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Book_User_SellerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Book]'))
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_User_SellerId] FOREIGN KEY([SellerId])
REFERENCES [dbo].[User] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Book_User_SellerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Book]'))
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_User_SellerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Claim_Order_OrderId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Claim]'))
ALTER TABLE [dbo].[Claim]  WITH CHECK ADD  CONSTRAINT [FK_Claim_Order_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([OrderId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Claim_Order_OrderId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Claim]'))
ALTER TABLE [dbo].[Claim] CHECK CONSTRAINT [FK_Claim_Order_OrderId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Claim_User_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Claim]'))
ALTER TABLE [dbo].[Claim]  WITH CHECK ADD  CONSTRAINT [FK_Claim_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Claim_User_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Claim]'))
ALTER TABLE [dbo].[Claim] CHECK CONSTRAINT [FK_Claim_User_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClaimMediation_Claim_ClaimId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClaimMediation]'))
ALTER TABLE [dbo].[ClaimMediation]  WITH CHECK ADD  CONSTRAINT [FK_ClaimMediation_Claim_ClaimId] FOREIGN KEY([ClaimId])
REFERENCES [dbo].[Claim] ([ClaimId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_ClaimMediation_Claim_ClaimId]') AND parent_object_id = OBJECT_ID(N'[dbo].[ClaimMediation]'))
ALTER TABLE [dbo].[ClaimMediation] CHECK CONSTRAINT [FK_ClaimMediation_Claim_ClaimId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Course_Institution_InstitutionId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course]'))
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Institution_InstitutionId] FOREIGN KEY([InstitutionId])
REFERENCES [dbo].[Institution] ([InstitutionId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Course_Institution_InstitutionId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course]'))
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Institution_InstitutionId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Course_StudyArea_StudyAreaId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course]'))
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_StudyArea_StudyAreaId] FOREIGN KEY([StudyAreaId])
REFERENCES [dbo].[StudyArea] ([StudyAreaId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Course_StudyArea_StudyAreaId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Course]'))
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_StudyArea_StudyAreaId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InstitutionBranch_Institution_InstitutionId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InstitutionBranch]'))
ALTER TABLE [dbo].[InstitutionBranch]  WITH CHECK ADD  CONSTRAINT [FK_InstitutionBranch_Institution_InstitutionId] FOREIGN KEY([InstitutionId])
REFERENCES [dbo].[Institution] ([InstitutionId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_InstitutionBranch_Institution_InstitutionId]') AND parent_object_id = OBJECT_ID(N'[dbo].[InstitutionBranch]'))
ALTER TABLE [dbo].[InstitutionBranch] CHECK CONSTRAINT [FK_InstitutionBranch_Institution_InstitutionId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Order_Book_BookId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Order]'))
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_Book_BookId] FOREIGN KEY([BookId])
REFERENCES [dbo].[Book] ([BookId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Order_Book_BookId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Order]'))
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_Book_BookId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Order_User_BuyerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Order]'))
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User_BuyerId] FOREIGN KEY([BuyerId])
REFERENCES [dbo].[User] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Order_User_BuyerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Order]'))
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User_BuyerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Order_User_SellerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Order]'))
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User_SellerId] FOREIGN KEY([SellerId])
REFERENCES [dbo].[User] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Order_User_SellerId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Order]'))
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User_SellerId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Order_User_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Order]'))
ALTER TABLE [dbo].[Order]  WITH CHECK ADD  CONSTRAINT [FK_Order_User_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[User] ([UserId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Order_User_UserId]') AND parent_object_id = OBJECT_ID(N'[dbo].[Order]'))
ALTER TABLE [dbo].[Order] CHECK CONSTRAINT [FK_Order_User_UserId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_Course_CourseId]') AND parent_object_id = OBJECT_ID(N'[dbo].[User]'))
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Course_CourseId] FOREIGN KEY([CourseId])
REFERENCES [dbo].[Course] ([CourseId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_Course_CourseId]') AND parent_object_id = OBJECT_ID(N'[dbo].[User]'))
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Course_CourseId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_InstitutionBranch_InstitutionBranchId]') AND parent_object_id = OBJECT_ID(N'[dbo].[User]'))
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_InstitutionBranch_InstitutionBranchId] FOREIGN KEY([InstitutionBranchId])
REFERENCES [dbo].[InstitutionBranch] ([InstitutionBranchId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_InstitutionBranch_InstitutionBranchId]') AND parent_object_id = OBJECT_ID(N'[dbo].[User]'))
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_InstitutionBranch_InstitutionBranchId]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_Localization_LocalizationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[User]'))
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_Localization_LocalizationId] FOREIGN KEY([LocalizationId])
REFERENCES [dbo].[Localization] ([LocalizationId])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_User_Localization_LocalizationId]') AND parent_object_id = OBJECT_ID(N'[dbo].[User]'))
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_Localization_LocalizationId]
GO
USE [master]
GO
ALTER DATABASE [SeboDB] SET  READ_WRITE 
GO
