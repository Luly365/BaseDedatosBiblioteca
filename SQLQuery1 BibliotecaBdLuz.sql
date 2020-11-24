USE [master]
GO
/****** Object:  Database [BibliotecaBD]    Script Date: 24/11/2020 13:35:09 ******/
CREATE DATABASE [BibliotecaBD]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BibliotecaBD', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVER\MSSQL\DATA\BibliotecaBD.mdf' , SIZE = 6144KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BibliotecaBD_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLSERVER\MSSQL\DATA\BibliotecaBD_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BibliotecaBD] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BibliotecaBD].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BibliotecaBD] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BibliotecaBD] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BibliotecaBD] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BibliotecaBD] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BibliotecaBD] SET ARITHABORT OFF 
GO
ALTER DATABASE [BibliotecaBD] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BibliotecaBD] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BibliotecaBD] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BibliotecaBD] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BibliotecaBD] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BibliotecaBD] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BibliotecaBD] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BibliotecaBD] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BibliotecaBD] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BibliotecaBD] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BibliotecaBD] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BibliotecaBD] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BibliotecaBD] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BibliotecaBD] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BibliotecaBD] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BibliotecaBD] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BibliotecaBD] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BibliotecaBD] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [BibliotecaBD] SET  MULTI_USER 
GO
ALTER DATABASE [BibliotecaBD] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BibliotecaBD] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BibliotecaBD] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BibliotecaBD] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [BibliotecaBD] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BibliotecaBD', N'ON'
GO
ALTER DATABASE [BibliotecaBD] SET QUERY_STORE = OFF
GO
USE [BibliotecaBD]
GO
/****** Object:  Table [dbo].[Autores]    Script Date: 24/11/2020 13:35:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Autores](
	[AutorId] [int] IDENTITY(1,1) NOT NULL,
	[NombreAutor] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Autores] PRIMARY KEY CLUSTERED 
(
	[AutorId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AutoresLibros]    Script Date: 24/11/2020 13:35:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AutoresLibros](
	[AutorLibroId] [int] IDENTITY(1,1) NOT NULL,
	[LibroId] [int] NOT NULL,
	[AutorId] [int] NOT NULL,
 CONSTRAINT [PK_AutoresLibros] PRIMARY KEY CLUSTERED 
(
	[AutorLibroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Editoriales]    Script Date: 24/11/2020 13:35:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Editoriales](
	[EditorialId] [int] IDENTITY(1,1) NOT NULL,
	[NombreEditorial] [nvarchar](50) NOT NULL,
	[PaisId] [int] NOT NULL,
 CONSTRAINT [PK_Editoriales] PRIMARY KEY CLUSTERED 
(
	[EditorialId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estados]    Script Date: 24/11/2020 13:35:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estados](
	[EstadoId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Estados] PRIMARY KEY CLUSTERED 
(
	[EstadoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Generos]    Script Date: 24/11/2020 13:35:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Generos](
	[GeneroId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Generos] PRIMARY KEY CLUSTERED 
(
	[GeneroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Libros]    Script Date: 24/11/2020 13:35:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Libros](
	[LibroId] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [nvarchar](250) NOT NULL,
	[ISBN] [nvarchar](13) NOT NULL,
	[EditorialId] [int] NOT NULL,
	[GeneroId] [int] NOT NULL,
	[SubGeneroId] [int] NOT NULL,
	[FechaIncorporacion] [date] NOT NULL,
	[EstadoId] [int] NOT NULL,
	[Observaciones] [nvarchar](max) NULL,
	[Disponible] [bit] NOT NULL,
 CONSTRAINT [PK_Libros] PRIMARY KEY CLUSTERED 
(
	[LibroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localidades]    Script Date: 24/11/2020 13:35:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidades](
	[LocalidadId] [int] IDENTITY(1,1) NOT NULL,
	[NombreLocalidad] [nvarchar](100) NOT NULL,
	[ProvinciaId] [int] NOT NULL,
 CONSTRAINT [PK_Localidades] PRIMARY KEY CLUSTERED 
(
	[LocalidadId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Paises]    Script Date: 24/11/2020 13:35:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paises](
	[PaisId] [int] IDENTITY(1,1) NOT NULL,
	[NombrePais] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Paises] PRIMARY KEY CLUSTERED 
(
	[PaisId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 24/11/2020 13:35:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincias](
	[ProvinciaId] [int] IDENTITY(1,1) NOT NULL,
	[NombreProvincia] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_Provincias] PRIMARY KEY CLUSTERED 
(
	[ProvinciaId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Socios]    Script Date: 24/11/2020 13:35:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Socios](
	[SocioId] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](100) NOT NULL,
	[Apellido] [nvarchar](100) NOT NULL,
	[TipoDeDocId] [int] NOT NULL,
	[NroDoc] [nvarchar](10) NOT NULL,
	[Direccion] [nvarchar](100) NOT NULL,
	[LocalidadId] [int] NOT NULL,
	[ProvinciaId] [int] NOT NULL,
	[FechaNac] [date] NULL,
	[TelefonoFijo] [nvarchar](20) NULL,
	[TelefonoMovil] [nvarchar](20) NULL,
	[CorreoElectronico] [nvarchar](150) NULL,
	[Sancionado] [bit] NOT NULL,
	[Activo] [bit] NOT NULL,
 CONSTRAINT [PK_Socios] PRIMARY KEY CLUSTERED 
(
	[SocioId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SociosLibros]    Script Date: 24/11/2020 13:35:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SociosLibros](
	[SocioLibroId] [int] IDENTITY(1,1) NOT NULL,
	[SocioId] [int] NOT NULL,
	[LibroId] [int] NOT NULL,
 CONSTRAINT [PK_SociosLibros] PRIMARY KEY CLUSTERED 
(
	[SocioLibroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SubGeneros]    Script Date: 24/11/2020 13:35:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SubGeneros](
	[SubGeneroId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](100) NOT NULL,
	[GeneroId] [int] NOT NULL,
 CONSTRAINT [PK_SubGeneros] PRIMARY KEY CLUSTERED 
(
	[SubGeneroId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposDeDocumentos]    Script Date: 24/11/2020 13:35:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposDeDocumentos](
	[TipoDeDocId] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_Tipos de Documentos] PRIMARY KEY CLUSTERED 
(
	[TipoDeDocId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Autores] ON 
GO
INSERT [dbo].[Autores] ([AutorId], [NombreAutor]) VALUES (2, N'Adrian Paenza')
GO
INSERT [dbo].[Autores] ([AutorId], [NombreAutor]) VALUES (1, N'Albert Espinosa')
GO
INSERT [dbo].[Autores] ([AutorId], [NombreAutor]) VALUES (5, N'Marta A')
GO
SET IDENTITY_INSERT [dbo].[Autores] OFF
GO
SET IDENTITY_INSERT [dbo].[AutoresLibros] ON 
GO
INSERT [dbo].[AutoresLibros] ([AutorLibroId], [LibroId], [AutorId]) VALUES (1, 1, 1)
GO
INSERT [dbo].[AutoresLibros] ([AutorLibroId], [LibroId], [AutorId]) VALUES (2, 2, 2)
GO
SET IDENTITY_INSERT [dbo].[AutoresLibros] OFF
GO
SET IDENTITY_INSERT [dbo].[Editoriales] ON 
GO
INSERT [dbo].[Editoriales] ([EditorialId], [NombreEditorial], [PaisId]) VALUES (1, N'Alfaguara', 1)
GO
INSERT [dbo].[Editoriales] ([EditorialId], [NombreEditorial], [PaisId]) VALUES (2, N'Planeta', 2)
GO
INSERT [dbo].[Editoriales] ([EditorialId], [NombreEditorial], [PaisId]) VALUES (3, N'Puerto de Palos', 2)
GO
SET IDENTITY_INSERT [dbo].[Editoriales] OFF
GO
SET IDENTITY_INSERT [dbo].[Estados] ON 
GO
INSERT [dbo].[Estados] ([EstadoId], [Descripcion]) VALUES (2, N'Bueno')
GO
INSERT [dbo].[Estados] ([EstadoId], [Descripcion]) VALUES (4, N'Malo')
GO
INSERT [dbo].[Estados] ([EstadoId], [Descripcion]) VALUES (1, N'Muy Bueno')
GO
INSERT [dbo].[Estados] ([EstadoId], [Descripcion]) VALUES (3, N'Regular')
GO
SET IDENTITY_INSERT [dbo].[Estados] OFF
GO
SET IDENTITY_INSERT [dbo].[Generos] ON 
GO
INSERT [dbo].[Generos] ([GeneroId], [Descripcion]) VALUES (5, N'Comedia')
GO
INSERT [dbo].[Generos] ([GeneroId], [Descripcion]) VALUES (1, N'Informatica')
GO
INSERT [dbo].[Generos] ([GeneroId], [Descripcion]) VALUES (4, N'jdgddhd')
GO
INSERT [dbo].[Generos] ([GeneroId], [Descripcion]) VALUES (2, N'Matematica')
GO
SET IDENTITY_INSERT [dbo].[Generos] OFF
GO
SET IDENTITY_INSERT [dbo].[Libros] ON 
GO
INSERT [dbo].[Libros] ([LibroId], [Titulo], [ISBN], [EditorialId], [GeneroId], [SubGeneroId], [FechaIncorporacion], [EstadoId], [Observaciones], [Disponible]) VALUES (1, N'Visual 2019', N'111-222-333-6', 1, 1, 1, CAST(N'2020-03-02' AS Date), 1, N'Azul', 0)
GO
INSERT [dbo].[Libros] ([LibroId], [Titulo], [ISBN], [EditorialId], [GeneroId], [SubGeneroId], [FechaIncorporacion], [EstadoId], [Observaciones], [Disponible]) VALUES (2, N'Calculo Mental', N'022-998-454-1', 2, 2, 2, CAST(N'2011-07-01' AS Date), 2, N'Anillado', 0)
GO
SET IDENTITY_INSERT [dbo].[Libros] OFF
GO
SET IDENTITY_INSERT [dbo].[Localidades] ON 
GO
INSERT [dbo].[Localidades] ([LocalidadId], [NombreLocalidad], [ProvinciaId]) VALUES (1, N'Lobos', 1)
GO
INSERT [dbo].[Localidades] ([LocalidadId], [NombreLocalidad], [ProvinciaId]) VALUES (2, N'San Miguel Del Monte', 1)
GO
INSERT [dbo].[Localidades] ([LocalidadId], [NombreLocalidad], [ProvinciaId]) VALUES (4, N'chabjddhdhd', 1)
GO
INSERT [dbo].[Localidades] ([LocalidadId], [NombreLocalidad], [ProvinciaId]) VALUES (10, N'Navarro', 1)
GO
INSERT [dbo].[Localidades] ([LocalidadId], [NombreLocalidad], [ProvinciaId]) VALUES (11, N'Calamuchita', 2)
GO
INSERT [dbo].[Localidades] ([LocalidadId], [NombreLocalidad], [ProvinciaId]) VALUES (12, N'La Matanza', 1)
GO
INSERT [dbo].[Localidades] ([LocalidadId], [NombreLocalidad], [ProvinciaId]) VALUES (17, N'Roque Perez', 1)
GO
SET IDENTITY_INSERT [dbo].[Localidades] OFF
GO
SET IDENTITY_INSERT [dbo].[Paises] ON 
GO
INSERT [dbo].[Paises] ([PaisId], [NombrePais]) VALUES (2, N'Argentina')
GO
INSERT [dbo].[Paises] ([PaisId], [NombrePais]) VALUES (4, N'Chile')
GO
INSERT [dbo].[Paises] ([PaisId], [NombrePais]) VALUES (1, N'España ')
GO
INSERT [dbo].[Paises] ([PaisId], [NombrePais]) VALUES (5, N'Mexico')
GO
SET IDENTITY_INSERT [dbo].[Paises] OFF
GO
SET IDENTITY_INSERT [dbo].[Provincias] ON 
GO
INSERT [dbo].[Provincias] ([ProvinciaId], [NombreProvincia]) VALUES (1, N'Buenos Aires')
GO
INSERT [dbo].[Provincias] ([ProvinciaId], [NombreProvincia]) VALUES (20, N'Chubut')
GO
INSERT [dbo].[Provincias] ([ProvinciaId], [NombreProvincia]) VALUES (2, N'Cordoba')
GO
INSERT [dbo].[Provincias] ([ProvinciaId], [NombreProvincia]) VALUES (15, N'La Pampa')
GO
INSERT [dbo].[Provincias] ([ProvinciaId], [NombreProvincia]) VALUES (16, N'Lobos')
GO
INSERT [dbo].[Provincias] ([ProvinciaId], [NombreProvincia]) VALUES (22, N'Rio Negro')
GO
INSERT [dbo].[Provincias] ([ProvinciaId], [NombreProvincia]) VALUES (18, N'Santa Fe')
GO
SET IDENTITY_INSERT [dbo].[Provincias] OFF
GO
SET IDENTITY_INSERT [dbo].[Socios] ON 
GO
INSERT [dbo].[Socios] ([SocioId], [Nombre], [Apellido], [TipoDeDocId], [NroDoc], [Direccion], [LocalidadId], [ProvinciaId], [FechaNac], [TelefonoFijo], [TelefonoMovil], [CorreoElectronico], [Sancionado], [Activo]) VALUES (1, N'Luz', N'Diaz', 1, N'36526093', N'Matanza22', 1, 1, CAST(N'1991-11-13' AS Date), N'55555555', N'5254125', N'xxxx@125', 0, 1)
GO
INSERT [dbo].[Socios] ([SocioId], [Nombre], [Apellido], [TipoDeDocId], [NroDoc], [Direccion], [LocalidadId], [ProvinciaId], [FechaNac], [TelefonoFijo], [TelefonoMovil], [CorreoElectronico], [Sancionado], [Activo]) VALUES (2, N'David', N'Corbalan', 1, N'29525453', N'Libertad55', 1, 1, CAST(N'1980-12-02' AS Date), N'124507', N'11521111', N'nnnn@111', 0, 1)
GO
SET IDENTITY_INSERT [dbo].[Socios] OFF
GO
SET IDENTITY_INSERT [dbo].[SociosLibros] ON 
GO
INSERT [dbo].[SociosLibros] ([SocioLibroId], [SocioId], [LibroId]) VALUES (1, 1, 2)
GO
INSERT [dbo].[SociosLibros] ([SocioLibroId], [SocioId], [LibroId]) VALUES (2, 2, 1)
GO
SET IDENTITY_INSERT [dbo].[SociosLibros] OFF
GO
SET IDENTITY_INSERT [dbo].[SubGeneros] ON 
GO
INSERT [dbo].[SubGeneros] ([SubGeneroId], [Descripcion], [GeneroId]) VALUES (1, N'Divulgacion Cientifica', 1)
GO
INSERT [dbo].[SubGeneros] ([SubGeneroId], [Descripcion], [GeneroId]) VALUES (2, N'Analisis', 2)
GO
SET IDENTITY_INSERT [dbo].[SubGeneros] OFF
GO
SET IDENTITY_INSERT [dbo].[TiposDeDocumentos] ON 
GO
INSERT [dbo].[TiposDeDocumentos] ([TipoDeDocId], [Descripcion]) VALUES (1, N'DNI')
GO
INSERT [dbo].[TiposDeDocumentos] ([TipoDeDocId], [Descripcion]) VALUES (4, N'Libreta Civica')
GO
INSERT [dbo].[TiposDeDocumentos] ([TipoDeDocId], [Descripcion]) VALUES (2, N'Libreta de Enrolamiento')
GO
SET IDENTITY_INSERT [dbo].[TiposDeDocumentos] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NonClusteredIndex-20201111-121938]    Script Date: 24/11/2020 13:35:11 ******/
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20201111-121938] ON [dbo].[Autores]
(
	[NombreAutor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NonClusteredIndex-20201111-124122]    Script Date: 24/11/2020 13:35:11 ******/
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20201111-124122] ON [dbo].[Editoriales]
(
	[NombreEditorial] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NonClusteredIndex-20201111-124908]    Script Date: 24/11/2020 13:35:11 ******/
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20201111-124908] ON [dbo].[Estados]
(
	[Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NonClusteredIndex-20201111-124950]    Script Date: 24/11/2020 13:35:11 ******/
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20201111-124950] ON [dbo].[Generos]
(
	[Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NonClusteredIndex-20201111-124828]    Script Date: 24/11/2020 13:35:11 ******/
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20201111-124828] ON [dbo].[Localidades]
(
	[NombreLocalidad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NonClusteredIndex-20201111-120623]    Script Date: 24/11/2020 13:35:11 ******/
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20201111-120623] ON [dbo].[Paises]
(
	[NombrePais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NonClusteredIndex-20201111-124749]    Script Date: 24/11/2020 13:35:11 ******/
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20201111-124749] ON [dbo].[Provincias]
(
	[NombreProvincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NonClusteredIndex-20201111-125035]    Script Date: 24/11/2020 13:35:11 ******/
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20201111-125035] ON [dbo].[SubGeneros]
(
	[Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [NonClusteredIndex-20201111-125202]    Script Date: 24/11/2020 13:35:11 ******/
CREATE UNIQUE NONCLUSTERED INDEX [NonClusteredIndex-20201111-125202] ON [dbo].[TiposDeDocumentos]
(
	[Descripcion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AutoresLibros]  WITH CHECK ADD  CONSTRAINT [FK_AutoresLibros_Autores] FOREIGN KEY([AutorId])
REFERENCES [dbo].[Autores] ([AutorId])
GO
ALTER TABLE [dbo].[AutoresLibros] CHECK CONSTRAINT [FK_AutoresLibros_Autores]
GO
ALTER TABLE [dbo].[AutoresLibros]  WITH CHECK ADD  CONSTRAINT [FK_AutoresLibros_Libros] FOREIGN KEY([LibroId])
REFERENCES [dbo].[Libros] ([LibroId])
GO
ALTER TABLE [dbo].[AutoresLibros] CHECK CONSTRAINT [FK_AutoresLibros_Libros]
GO
ALTER TABLE [dbo].[Editoriales]  WITH CHECK ADD  CONSTRAINT [FK_Editoriales_Paises] FOREIGN KEY([PaisId])
REFERENCES [dbo].[Paises] ([PaisId])
GO
ALTER TABLE [dbo].[Editoriales] CHECK CONSTRAINT [FK_Editoriales_Paises]
GO
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD  CONSTRAINT [FK_Libros_Editoriales] FOREIGN KEY([EditorialId])
REFERENCES [dbo].[Editoriales] ([EditorialId])
GO
ALTER TABLE [dbo].[Libros] CHECK CONSTRAINT [FK_Libros_Editoriales]
GO
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD  CONSTRAINT [FK_Libros_Estados] FOREIGN KEY([EstadoId])
REFERENCES [dbo].[Estados] ([EstadoId])
GO
ALTER TABLE [dbo].[Libros] CHECK CONSTRAINT [FK_Libros_Estados]
GO
ALTER TABLE [dbo].[Libros]  WITH CHECK ADD  CONSTRAINT [FK_Libros_SubGeneros] FOREIGN KEY([SubGeneroId])
REFERENCES [dbo].[SubGeneros] ([SubGeneroId])
GO
ALTER TABLE [dbo].[Libros] CHECK CONSTRAINT [FK_Libros_SubGeneros]
GO
ALTER TABLE [dbo].[Localidades]  WITH CHECK ADD  CONSTRAINT [FK_Localidades_Provincias] FOREIGN KEY([ProvinciaId])
REFERENCES [dbo].[Provincias] ([ProvinciaId])
GO
ALTER TABLE [dbo].[Localidades] CHECK CONSTRAINT [FK_Localidades_Provincias]
GO
ALTER TABLE [dbo].[Socios]  WITH CHECK ADD  CONSTRAINT [FK_Socios_Localidades] FOREIGN KEY([LocalidadId])
REFERENCES [dbo].[Localidades] ([LocalidadId])
GO
ALTER TABLE [dbo].[Socios] CHECK CONSTRAINT [FK_Socios_Localidades]
GO
ALTER TABLE [dbo].[Socios]  WITH CHECK ADD  CONSTRAINT [FK_Socios_TiposDeDocumentos] FOREIGN KEY([TipoDeDocId])
REFERENCES [dbo].[TiposDeDocumentos] ([TipoDeDocId])
GO
ALTER TABLE [dbo].[Socios] CHECK CONSTRAINT [FK_Socios_TiposDeDocumentos]
GO
ALTER TABLE [dbo].[SubGeneros]  WITH CHECK ADD  CONSTRAINT [FK_SubGeneros_Generos] FOREIGN KEY([GeneroId])
REFERENCES [dbo].[Generos] ([GeneroId])
GO
ALTER TABLE [dbo].[SubGeneros] CHECK CONSTRAINT [FK_SubGeneros_Generos]
GO
USE [master]
GO
ALTER DATABASE [BibliotecaBD] SET  READ_WRITE 
GO
