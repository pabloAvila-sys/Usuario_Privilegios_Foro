USE [master]
GO
/****** Object:  Database [Usuario_Privilegios_Foro]    Script Date: 05-10-2021 12:46:38 ******/
CREATE DATABASE [Usuario_Privilegios_Foro]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Usuario_Privilegios_Foro', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MICROSOFTSQLPA\MSSQL\DATA\Usuario_Privilegios_Foro.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Usuario_Privilegios_Foro_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MICROSOFTSQLPA\MSSQL\DATA\Usuario_Privilegios_Foro_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Usuario_Privilegios_Foro].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET ARITHABORT OFF 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET RECOVERY FULL 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET  MULTI_USER 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Usuario_Privilegios_Foro', N'ON'
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET QUERY_STORE = OFF
GO
USE [Usuario_Privilegios_Foro]
GO
/****** Object:  Table [dbo].[menu]    Script Date: 05-10-2021 12:46:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[menu](
	[id_menu] [varchar](10) NOT NULL,
	[titulo] [varchar](50) NULL,
	[descripcion] [varchar](200) NULL,
	[estado] [varchar](10) NULL,
	[orden] [int] NULL,
 CONSTRAINT [PK_menu] PRIMARY KEY CLUSTERED 
(
	[id_menu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[opcion]    Script Date: 05-10-2021 12:46:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[opcion](
	[id_opcion] [varchar](10) NOT NULL,
	[id_menu] [varchar](10) NOT NULL,
	[titulo] [varchar](50) NULL,
	[descripcion] [varchar](200) NULL,
	[estado] [varchar](10) NULL,
	[ordenOpcion] [int] NULL,
 CONSTRAINT [PK_opcion] PRIMARY KEY CLUSTERED 
(
	[id_opcion] ASC,
	[id_menu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rol]    Script Date: 05-10-2021 12:46:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rol](
	[id_rol] [varchar](10) NOT NULL,
	[titulo] [varchar](50) NULL,
	[descripcion] [varchar](200) NULL,
	[estado] [varchar](10) NULL,
 CONSTRAINT [PK_rol] PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rol_Menu]    Script Date: 05-10-2021 12:46:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rol_Menu](
	[id_rol] [varchar](10) NOT NULL,
	[id_menu] [varchar](10) NOT NULL,
	[id_opcion] [varchar](10) NOT NULL,
	[id_sub_opcion] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_rol] ASC,
	[id_menu] ASC,
	[id_opcion] ASC,
	[id_sub_opcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[rol_Usuario]    Script Date: 05-10-2021 12:46:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[rol_Usuario](
	[id_usuario] [varchar](50) NOT NULL,
	[id_rol] [varchar](10) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC,
	[id_rol] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[sub_opcion]    Script Date: 05-10-2021 12:46:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[sub_opcion](
	[id_menu] [varchar](10) NOT NULL,
	[id_opcion] [varchar](10) NOT NULL,
	[id_sub_opcion] [varchar](10) NULL,
	[titulo] [varchar](50) NULL,
	[descripcion] [varchar](200) NULL,
	[estado] [varchar](10) NULL,
	[ordenSubOp] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id_menu] ASC,
	[id_opcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[usuario]    Script Date: 05-10-2021 12:46:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[usuario](
	[id_usuario] [varchar](50) NOT NULL,
	[nombre] [varchar](50) NULL,
	[apellidoPat] [varchar](50) NULL,
	[apellidoMat] [varchar](50) NULL,
	[claveUser] [int] NULL,
	[fechaCreacion] [date] NULL,
	[estado] [varchar](10) NULL,
	[Email] [varchar](50) NULL,
 CONSTRAINT [PK_usuario] PRIMARY KEY CLUSTERED 
(
	[id_usuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[opcion]  WITH CHECK ADD  CONSTRAINT [FK_opcion] FOREIGN KEY([id_menu])
REFERENCES [dbo].[menu] ([id_menu])
GO
ALTER TABLE [dbo].[opcion] CHECK CONSTRAINT [FK_opcion]
GO
ALTER TABLE [dbo].[rol_Menu]  WITH CHECK ADD FOREIGN KEY([id_opcion], [id_menu])
REFERENCES [dbo].[opcion] ([id_opcion], [id_menu])
GO
ALTER TABLE [dbo].[rol_Menu]  WITH CHECK ADD FOREIGN KEY([id_rol])
REFERENCES [dbo].[rol] ([id_rol])
GO
ALTER TABLE [dbo].[rol_Usuario]  WITH CHECK ADD FOREIGN KEY([id_rol])
REFERENCES [dbo].[rol] ([id_rol])
GO
ALTER TABLE [dbo].[rol_Usuario]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[usuario] ([id_usuario])
GO
ALTER TABLE [dbo].[sub_opcion]  WITH CHECK ADD FOREIGN KEY([id_opcion], [id_menu])
REFERENCES [dbo].[opcion] ([id_opcion], [id_menu])
GO
USE [master]
GO
ALTER DATABASE [Usuario_Privilegios_Foro] SET  READ_WRITE 
GO
