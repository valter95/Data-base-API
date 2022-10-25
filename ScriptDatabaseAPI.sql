USE [master]
GO
/****** Object:  Database [ChallengeApi]    Script Date: 25/10/2022 19:54:00 ******/
CREATE DATABASE [ChallengeApi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ChallengeApi', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ChallengeApi.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ChallengeApi_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\ChallengeApi_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [ChallengeApi] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ChallengeApi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ChallengeApi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ChallengeApi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ChallengeApi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ChallengeApi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ChallengeApi] SET ARITHABORT OFF 
GO
ALTER DATABASE [ChallengeApi] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ChallengeApi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ChallengeApi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ChallengeApi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ChallengeApi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ChallengeApi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ChallengeApi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ChallengeApi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ChallengeApi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ChallengeApi] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ChallengeApi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ChallengeApi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ChallengeApi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ChallengeApi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ChallengeApi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ChallengeApi] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ChallengeApi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ChallengeApi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ChallengeApi] SET  MULTI_USER 
GO
ALTER DATABASE [ChallengeApi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ChallengeApi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ChallengeApi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ChallengeApi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ChallengeApi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ChallengeApi] SET QUERY_STORE = OFF
GO
USE [ChallengeApi]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 25/10/2022 19:54:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuarios]    Script Date: 25/10/2022 19:54:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuarios](
	[IdUsuario] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [nvarchar](max) NOT NULL,
	[DataNascimento] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Usuarios] PRIMARY KEY CLUSTERED 
(
	[IdUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [ChallengeApi] SET  READ_WRITE 
GO
