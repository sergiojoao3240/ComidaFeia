USE [ComidaFeia]
GO
/****** Object:  StoredProcedure [dbo].[ListaProdutos]    Script Date: 22/01/2022 10:15:33 ******/
DROP PROCEDURE [dbo].[ListaProdutos]
GO
/****** Object:  StoredProcedure [dbo].[ListaCliente]    Script Date: 22/01/2022 10:15:33 ******/
DROP PROCEDURE [dbo].[ListaCliente]
GO
ALTER TABLE [dbo].[Utilizador] DROP CONSTRAINT [FKUtilizador848256]
GO
ALTER TABLE [dbo].[Utilizador] DROP CONSTRAINT [FKUtilizador716919]
GO
ALTER TABLE [dbo].[Produto] DROP CONSTRAINT [FKProduto923070]
GO
ALTER TABLE [dbo].[Produto] DROP CONSTRAINT [FKProduto836217]
GO
ALTER TABLE [dbo].[Pedido_Prod] DROP CONSTRAINT [FKPedido_Pro971588]
GO
ALTER TABLE [dbo].[Pedido_Prod] DROP CONSTRAINT [FKPedido_Pro707095]
GO
ALTER TABLE [dbo].[Pedido] DROP CONSTRAINT [FKPedido282096]
GO
ALTER TABLE [dbo].[Morada] DROP CONSTRAINT [FKMorada668131]
GO
ALTER TABLE [dbo].[Fornecedor] DROP CONSTRAINT [FKFornecedor451547]
GO
ALTER TABLE [dbo].[Doacao] DROP CONSTRAINT [FKDoacao630876]
GO
ALTER TABLE [dbo].[Doa_Prod] DROP CONSTRAINT [FKDoa_Prod68735]
GO
ALTER TABLE [dbo].[Doa_Prod] DROP CONSTRAINT [FKDoa_Prod105223]
GO
ALTER TABLE [dbo].[Contacto] DROP CONSTRAINT [FKContacto527764]
GO
ALTER TABLE [dbo].[Contacto] DROP CONSTRAINT [FKContacto386313]
GO
ALTER TABLE [dbo].[Cliente] DROP CONSTRAINT [FKCliente664949]
GO
/****** Object:  Table [dbo].[Utilizador]    Script Date: 22/01/2022 10:15:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Utilizador]') AND type in (N'U'))
DROP TABLE [dbo].[Utilizador]
GO
/****** Object:  Table [dbo].[Tipo_Utilizador]    Script Date: 22/01/2022 10:15:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tipo_Utilizador]') AND type in (N'U'))
DROP TABLE [dbo].[Tipo_Utilizador]
GO
/****** Object:  Table [dbo].[Tipo_Prod]    Script Date: 22/01/2022 10:15:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tipo_Prod]') AND type in (N'U'))
DROP TABLE [dbo].[Tipo_Prod]
GO
/****** Object:  Table [dbo].[Tipo_Contacto]    Script Date: 22/01/2022 10:15:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Tipo_Contacto]') AND type in (N'U'))
DROP TABLE [dbo].[Tipo_Contacto]
GO
/****** Object:  Table [dbo].[Produto]    Script Date: 22/01/2022 10:15:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Produto]') AND type in (N'U'))
DROP TABLE [dbo].[Produto]
GO
/****** Object:  Table [dbo].[Pedido_Prod]    Script Date: 22/01/2022 10:15:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pedido_Prod]') AND type in (N'U'))
DROP TABLE [dbo].[Pedido_Prod]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 22/01/2022 10:15:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pedido]') AND type in (N'U'))
DROP TABLE [dbo].[Pedido]
GO
/****** Object:  Table [dbo].[Morada]    Script Date: 22/01/2022 10:15:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Morada]') AND type in (N'U'))
DROP TABLE [dbo].[Morada]
GO
/****** Object:  Table [dbo].[Fornecedor]    Script Date: 22/01/2022 10:15:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Fornecedor]') AND type in (N'U'))
DROP TABLE [dbo].[Fornecedor]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 22/01/2022 10:15:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Estado]') AND type in (N'U'))
DROP TABLE [dbo].[Estado]
GO
/****** Object:  Table [dbo].[Doacao]    Script Date: 22/01/2022 10:15:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Doacao]') AND type in (N'U'))
DROP TABLE [dbo].[Doacao]
GO
/****** Object:  Table [dbo].[Doa_Prod]    Script Date: 22/01/2022 10:15:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Doa_Prod]') AND type in (N'U'))
DROP TABLE [dbo].[Doa_Prod]
GO
/****** Object:  Table [dbo].[CP]    Script Date: 22/01/2022 10:15:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CP]') AND type in (N'U'))
DROP TABLE [dbo].[CP]
GO
/****** Object:  Table [dbo].[Contacto]    Script Date: 22/01/2022 10:15:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Contacto]') AND type in (N'U'))
DROP TABLE [dbo].[Contacto]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 22/01/2022 10:15:33 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cliente]') AND type in (N'U'))
DROP TABLE [dbo].[Cliente]
GO
/****** Object:  User [sergio]    Script Date: 22/01/2022 10:15:33 ******/
DROP USER [sergio]
GO
USE [master]
GO
/****** Object:  Database [ComidaFeia]    Script Date: 22/01/2022 10:15:33 ******/
DROP DATABASE [ComidaFeia]
GO
/****** Object:  Database [ComidaFeia]    Script Date: 22/01/2022 10:15:33 ******/
CREATE DATABASE [ComidaFeia]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ComidaFeia', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ComidaFeia.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ComidaFeia_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\ComidaFeia_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ComidaFeia] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ComidaFeia].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ComidaFeia] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ComidaFeia] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ComidaFeia] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ComidaFeia] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ComidaFeia] SET ARITHABORT OFF 
GO
ALTER DATABASE [ComidaFeia] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [ComidaFeia] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ComidaFeia] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ComidaFeia] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ComidaFeia] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ComidaFeia] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ComidaFeia] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ComidaFeia] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ComidaFeia] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ComidaFeia] SET  DISABLE_BROKER 
GO
ALTER DATABASE [ComidaFeia] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ComidaFeia] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ComidaFeia] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ComidaFeia] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ComidaFeia] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ComidaFeia] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ComidaFeia] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ComidaFeia] SET RECOVERY FULL 
GO
ALTER DATABASE [ComidaFeia] SET  MULTI_USER 
GO
ALTER DATABASE [ComidaFeia] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ComidaFeia] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ComidaFeia] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ComidaFeia] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ComidaFeia] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ComidaFeia] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
EXEC sys.sp_db_vardecimal_storage_format N'ComidaFeia', N'ON'
GO
ALTER DATABASE [ComidaFeia] SET QUERY_STORE = OFF
GO
USE [ComidaFeia]
GO
/****** Object:  User [sergio]    Script Date: 22/01/2022 10:15:33 ******/
CREATE USER [sergio] FOR LOGIN [sergio] WITH DEFAULT_SCHEMA=[db_accessadmin]
GO
ALTER ROLE [db_owner] ADD MEMBER [sergio]
GO
/****** Object:  Table [dbo].[Cliente]    Script Date: 22/01/2022 10:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cliente](
	[nome] [varchar](20) NULL,
	[descCli] [varchar](20) NULL,
	[UtilizadorUID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UtilizadorUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacto]    Script Date: 22/01/2022 10:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacto](
	[numero] [varchar](30) NULL,
	[Tipo_ContactoTCID] [int] NOT NULL,
	[UtilizadorUID] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CP]    Script Date: 22/01/2022 10:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CP](
	[CPID] [int] IDENTITY(1,1) NOT NULL,
	[localidade] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[CPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doa_Prod]    Script Date: 22/01/2022 10:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doa_Prod](
	[DoacaoDID] [int] NOT NULL,
	[DoacaoFornecedorUtilizadorUID] [int] NOT NULL,
	[ProdutoPID] [int] NOT NULL,
	[ProdutoTipo_ProdTPID] [int] NOT NULL,
	[ProdutoEstadoEID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DoacaoDID] ASC,
	[ProdutoPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Doacao]    Script Date: 22/01/2022 10:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doacao](
	[DID] [int] NOT NULL,
	[descDoa] [varchar](50) NULL,
	[quantidade] [int] NULL,
	[FornecedorUtilizadorUID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[DID] ASC,
	[FornecedorUtilizadorUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 22/01/2022 10:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[EID] [int] IDENTITY(1,1) NOT NULL,
	[descEst] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[EID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fornecedor]    Script Date: 22/01/2022 10:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fornecedor](
	[nome] [varchar](20) NULL,
	[UtilizadorUID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UtilizadorUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Morada]    Script Date: 22/01/2022 10:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Morada](
	[MID] [int] IDENTITY(1,1) NOT NULL,
	[rua] [varchar](50) NULL,
	[CPCPID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedido]    Script Date: 22/01/2022 10:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido](
	[quantidade] [int] NULL,
	[ClienteUtilizadorUID] [int] NOT NULL,
	[PeID] [int] NOT NULL,
	[data] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[ClienteUtilizadorUID] ASC,
	[PeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pedido_Prod]    Script Date: 22/01/2022 10:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pedido_Prod](
	[PedidoClienteUtilizadorUID] [int] NOT NULL,
	[PedidoPeID] [int] NOT NULL,
	[ProdutoPID] [int] NOT NULL,
	[ProdutoTipo_ProdTPID] [int] NOT NULL,
	[ProdutoEstadoEID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PedidoPeID] ASC,
	[ProdutoPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Produto]    Script Date: 22/01/2022 10:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Produto](
	[PID] [int] NOT NULL,
	[descPro] [varchar](15) NULL,
	[forma_pro] [varchar](50) NULL,
	[quantidade] [int] NULL,
	[Tipo_ProdTPID] [int] NOT NULL,
	[EstadoEID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PID] ASC,
	[Tipo_ProdTPID] ASC,
	[EstadoEID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Contacto]    Script Date: 22/01/2022 10:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Contacto](
	[TCID] [int] IDENTITY(1,1) NOT NULL,
	[descCont] [varchar](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[TCID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Prod]    Script Date: 22/01/2022 10:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Prod](
	[TPID] [int] IDENTITY(1,1) NOT NULL,
	[descTProd] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[TPID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Utilizador]    Script Date: 22/01/2022 10:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Utilizador](
	[TUID] [int] IDENTITY(1,1) NOT NULL,
	[descTP] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[TUID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Utilizador]    Script Date: 22/01/2022 10:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Utilizador](
	[UID] [int] IDENTITY(1,1) NOT NULL,
	[password] [varchar](15) NULL,
	[Tipo_UtilizadorTUID] [int] NOT NULL,
	[MoradaMID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Cliente] ([nome], [descCli], [UtilizadorUID]) VALUES (N'Mundos de Vida', N'Instituicao', 1)
INSERT [dbo].[Cliente] ([nome], [descCli], [UtilizadorUID]) VALUES (N'Caritas', N'Instituição', 1015)
INSERT [dbo].[Cliente] ([nome], [descCli], [UtilizadorUID]) VALUES (N'Aldeia da Criança', N'Instituição', 1016)
INSERT [dbo].[Cliente] ([nome], [descCli], [UtilizadorUID]) VALUES (N'Casa do Caminho', N'Instituição', 1023)
GO
INSERT [dbo].[Contacto] ([numero], [Tipo_ContactoTCID], [UtilizadorUID]) VALUES (N'252491497', 1, 1)
INSERT [dbo].[Contacto] ([numero], [Tipo_ContactoTCID], [UtilizadorUID]) VALUES (N'252734753', 1, 2)
INSERT [dbo].[Contacto] ([numero], [Tipo_ContactoTCID], [UtilizadorUID]) VALUES (N'252793164', 1, 1015)
INSERT [dbo].[Contacto] ([numero], [Tipo_ContactoTCID], [UtilizadorUID]) VALUES (N'264997764', 1, 1016)
INSERT [dbo].[Contacto] ([numero], [Tipo_ContactoTCID], [UtilizadorUID]) VALUES (N'916783248', 2, 1017)
INSERT [dbo].[Contacto] ([numero], [Tipo_ContactoTCID], [UtilizadorUID]) VALUES (N'961873456', 1, 1022)
INSERT [dbo].[Contacto] ([numero], [Tipo_ContactoTCID], [UtilizadorUID]) VALUES (N'961873444', 1, 1023)
GO
SET IDENTITY_INSERT [dbo].[CP] ON 

INSERT [dbo].[CP] ([CPID], [localidade]) VALUES (1, N'Trofa')
INSERT [dbo].[CP] ([CPID], [localidade]) VALUES (2, N'Barcelos')
INSERT [dbo].[CP] ([CPID], [localidade]) VALUES (1004, N'Lousado')
INSERT [dbo].[CP] ([CPID], [localidade]) VALUES (1005, N'Fradelos')
INSERT [dbo].[CP] ([CPID], [localidade]) VALUES (1006, N'Ribeirão')
INSERT [dbo].[CP] ([CPID], [localidade]) VALUES (1007, N'Famalicão')
INSERT [dbo].[CP] ([CPID], [localidade]) VALUES (1008, N'Esmeriz')
INSERT [dbo].[CP] ([CPID], [localidade]) VALUES (1009, N'Gualtar')
INSERT [dbo].[CP] ([CPID], [localidade]) VALUES (1010, N'Porto')
INSERT [dbo].[CP] ([CPID], [localidade]) VALUES (2018, N'')
SET IDENTITY_INSERT [dbo].[CP] OFF
GO
INSERT [dbo].[Doa_Prod] ([DoacaoDID], [DoacaoFornecedorUtilizadorUID], [ProdutoPID], [ProdutoTipo_ProdTPID], [ProdutoEstadoEID]) VALUES (1, 2, 1, 6, 3)
INSERT [dbo].[Doa_Prod] ([DoacaoDID], [DoacaoFornecedorUtilizadorUID], [ProdutoPID], [ProdutoTipo_ProdTPID], [ProdutoEstadoEID]) VALUES (2, 1022, 3, 6, 3)
INSERT [dbo].[Doa_Prod] ([DoacaoDID], [DoacaoFornecedorUtilizadorUID], [ProdutoPID], [ProdutoTipo_ProdTPID], [ProdutoEstadoEID]) VALUES (3, 1022, 3, 6, 3)
INSERT [dbo].[Doa_Prod] ([DoacaoDID], [DoacaoFornecedorUtilizadorUID], [ProdutoPID], [ProdutoTipo_ProdTPID], [ProdutoEstadoEID]) VALUES (4, 1018, 3, 6, 3)
GO
INSERT [dbo].[Doacao] ([DID], [descDoa], [quantidade], [FornecedorUtilizadorUID]) VALUES (1, N'Batatas', 3, 2)
INSERT [dbo].[Doacao] ([DID], [descDoa], [quantidade], [FornecedorUtilizadorUID]) VALUES (2, N'Alface', 1, 1022)
INSERT [dbo].[Doacao] ([DID], [descDoa], [quantidade], [FornecedorUtilizadorUID]) VALUES (3, N'Alface', 2, 1022)
INSERT [dbo].[Doacao] ([DID], [descDoa], [quantidade], [FornecedorUtilizadorUID]) VALUES (4, N'Alface', 1, 1018)
GO
SET IDENTITY_INSERT [dbo].[Estado] ON 

INSERT [dbo].[Estado] ([EID], [descEst]) VALUES (1, N'Mau')
INSERT [dbo].[Estado] ([EID], [descEst]) VALUES (2, N'Intermedio')
INSERT [dbo].[Estado] ([EID], [descEst]) VALUES (3, N'Bom')
SET IDENTITY_INSERT [dbo].[Estado] OFF
GO
INSERT [dbo].[Fornecedor] ([nome], [UtilizadorUID]) VALUES (N'DOZE', 2)
INSERT [dbo].[Fornecedor] ([nome], [UtilizadorUID]) VALUES (N'Colina do Ave', 1017)
INSERT [dbo].[Fornecedor] ([nome], [UtilizadorUID]) VALUES (N'Tourigalo', 1018)
INSERT [dbo].[Fornecedor] ([nome], [UtilizadorUID]) VALUES (N'Alfa', 1022)
GO
SET IDENTITY_INSERT [dbo].[Morada] ON 

INSERT [dbo].[Morada] ([MID], [rua], [CPCPID]) VALUES (1, N'Travessa da Liberdade', 1)
INSERT [dbo].[Morada] ([MID], [rua], [CPCPID]) VALUES (4, N'Rua de Camões', 2)
INSERT [dbo].[Morada] ([MID], [rua], [CPCPID]) VALUES (1004, N'Rua dos combatentes', 1004)
INSERT [dbo].[Morada] ([MID], [rua], [CPCPID]) VALUES (1005, N'Avenida da liberdade', 1005)
INSERT [dbo].[Morada] ([MID], [rua], [CPCPID]) VALUES (1006, N'Rua Santa Catarina', 1006)
INSERT [dbo].[Morada] ([MID], [rua], [CPCPID]) VALUES (1007, N'Avenida do Hospital', 1007)
INSERT [dbo].[Morada] ([MID], [rua], [CPCPID]) VALUES (1008, N'Travessa das Escolas', 1008)
INSERT [dbo].[Morada] ([MID], [rua], [CPCPID]) VALUES (1009, N'Rua Dona Maria II', 1009)
INSERT [dbo].[Morada] ([MID], [rua], [CPCPID]) VALUES (1010, N'Avenida dos Aliados', 1010)
INSERT [dbo].[Morada] ([MID], [rua], [CPCPID]) VALUES (1021, N'Rua São José', 1007)
INSERT [dbo].[Morada] ([MID], [rua], [CPCPID]) VALUES (2022, N'', 2018)
SET IDENTITY_INSERT [dbo].[Morada] OFF
GO
INSERT [dbo].[Pedido] ([quantidade], [ClienteUtilizadorUID], [PeID], [data]) VALUES (2, 1, 1, N'01/01/2022')
INSERT [dbo].[Pedido] ([quantidade], [ClienteUtilizadorUID], [PeID], [data]) VALUES (1, 1, 2, N'06/01/2022')
INSERT [dbo].[Pedido] ([quantidade], [ClienteUtilizadorUID], [PeID], [data]) VALUES (1, 1, 3, N'06/01/2022')
INSERT [dbo].[Pedido] ([quantidade], [ClienteUtilizadorUID], [PeID], [data]) VALUES (1, 1, 4, N'06/01/2022')
INSERT [dbo].[Pedido] ([quantidade], [ClienteUtilizadorUID], [PeID], [data]) VALUES (1, 1, 5, N'06/01/2022')
INSERT [dbo].[Pedido] ([quantidade], [ClienteUtilizadorUID], [PeID], [data]) VALUES (1, 1, 6, N'06/01/2022')
INSERT [dbo].[Pedido] ([quantidade], [ClienteUtilizadorUID], [PeID], [data]) VALUES (1, 1, 7, N'06/01/2022')
INSERT [dbo].[Pedido] ([quantidade], [ClienteUtilizadorUID], [PeID], [data]) VALUES (1, 1, 8, N'06/01/2022')
INSERT [dbo].[Pedido] ([quantidade], [ClienteUtilizadorUID], [PeID], [data]) VALUES (1, 1, 9, N'06/01/2022')
INSERT [dbo].[Pedido] ([quantidade], [ClienteUtilizadorUID], [PeID], [data]) VALUES (1, 1, 10, N'06/01/2022')
INSERT [dbo].[Pedido] ([quantidade], [ClienteUtilizadorUID], [PeID], [data]) VALUES (2, 1, 11, N'06/01/2022')
INSERT [dbo].[Pedido] ([quantidade], [ClienteUtilizadorUID], [PeID], [data]) VALUES (1, 1, 12, N'01/08/2022')
INSERT [dbo].[Pedido] ([quantidade], [ClienteUtilizadorUID], [PeID], [data]) VALUES (1, 1, 13, N'01/08/2022')
GO
INSERT [dbo].[Pedido_Prod] ([PedidoClienteUtilizadorUID], [PedidoPeID], [ProdutoPID], [ProdutoTipo_ProdTPID], [ProdutoEstadoEID]) VALUES (1, 1, 1, 6, 3)
INSERT [dbo].[Pedido_Prod] ([PedidoClienteUtilizadorUID], [PedidoPeID], [ProdutoPID], [ProdutoTipo_ProdTPID], [ProdutoEstadoEID]) VALUES (1, 2, 1, 6, 3)
INSERT [dbo].[Pedido_Prod] ([PedidoClienteUtilizadorUID], [PedidoPeID], [ProdutoPID], [ProdutoTipo_ProdTPID], [ProdutoEstadoEID]) VALUES (1, 3, 1, 6, 3)
INSERT [dbo].[Pedido_Prod] ([PedidoClienteUtilizadorUID], [PedidoPeID], [ProdutoPID], [ProdutoTipo_ProdTPID], [ProdutoEstadoEID]) VALUES (1, 4, 1, 6, 3)
INSERT [dbo].[Pedido_Prod] ([PedidoClienteUtilizadorUID], [PedidoPeID], [ProdutoPID], [ProdutoTipo_ProdTPID], [ProdutoEstadoEID]) VALUES (1, 5, 2, 6, 2)
INSERT [dbo].[Pedido_Prod] ([PedidoClienteUtilizadorUID], [PedidoPeID], [ProdutoPID], [ProdutoTipo_ProdTPID], [ProdutoEstadoEID]) VALUES (1, 6, 3, 6, 3)
INSERT [dbo].[Pedido_Prod] ([PedidoClienteUtilizadorUID], [PedidoPeID], [ProdutoPID], [ProdutoTipo_ProdTPID], [ProdutoEstadoEID]) VALUES (1, 7, 3, 6, 3)
INSERT [dbo].[Pedido_Prod] ([PedidoClienteUtilizadorUID], [PedidoPeID], [ProdutoPID], [ProdutoTipo_ProdTPID], [ProdutoEstadoEID]) VALUES (1, 8, 3, 6, 3)
INSERT [dbo].[Pedido_Prod] ([PedidoClienteUtilizadorUID], [PedidoPeID], [ProdutoPID], [ProdutoTipo_ProdTPID], [ProdutoEstadoEID]) VALUES (1, 9, 3, 6, 3)
INSERT [dbo].[Pedido_Prod] ([PedidoClienteUtilizadorUID], [PedidoPeID], [ProdutoPID], [ProdutoTipo_ProdTPID], [ProdutoEstadoEID]) VALUES (1, 10, 3, 6, 3)
INSERT [dbo].[Pedido_Prod] ([PedidoClienteUtilizadorUID], [PedidoPeID], [ProdutoPID], [ProdutoTipo_ProdTPID], [ProdutoEstadoEID]) VALUES (1, 11, 3, 6, 3)
INSERT [dbo].[Pedido_Prod] ([PedidoClienteUtilizadorUID], [PedidoPeID], [ProdutoPID], [ProdutoTipo_ProdTPID], [ProdutoEstadoEID]) VALUES (1, 12, 1, 6, 3)
INSERT [dbo].[Pedido_Prod] ([PedidoClienteUtilizadorUID], [PedidoPeID], [ProdutoPID], [ProdutoTipo_ProdTPID], [ProdutoEstadoEID]) VALUES (1, 13, 3, 6, 3)
GO
INSERT [dbo].[Produto] ([PID], [descPro], [forma_pro], [quantidade], [Tipo_ProdTPID], [EstadoEID]) VALUES (1, N'Batatas', N'Normal', 1, 6, 3)
INSERT [dbo].[Produto] ([PID], [descPro], [forma_pro], [quantidade], [Tipo_ProdTPID], [EstadoEID]) VALUES (2, N'Batatas', N'Normal', 2, 6, 2)
INSERT [dbo].[Produto] ([PID], [descPro], [forma_pro], [quantidade], [Tipo_ProdTPID], [EstadoEID]) VALUES (3, N'Alface', N'Normal', 3, 6, 3)
GO
SET IDENTITY_INSERT [dbo].[Tipo_Contacto] ON 

INSERT [dbo].[Tipo_Contacto] ([TCID], [descCont]) VALUES (1, N'Telefone')
INSERT [dbo].[Tipo_Contacto] ([TCID], [descCont]) VALUES (2, N'Email')
INSERT [dbo].[Tipo_Contacto] ([TCID], [descCont]) VALUES (3, N'FAX')
SET IDENTITY_INSERT [dbo].[Tipo_Contacto] OFF
GO
SET IDENTITY_INSERT [dbo].[Tipo_Prod] ON 

INSERT [dbo].[Tipo_Prod] ([TPID], [descTProd]) VALUES (1, N'Frutas')
INSERT [dbo].[Tipo_Prod] ([TPID], [descTProd]) VALUES (2, N'Legumes')
INSERT [dbo].[Tipo_Prod] ([TPID], [descTProd]) VALUES (3, N'Carnes')
INSERT [dbo].[Tipo_Prod] ([TPID], [descTProd]) VALUES (4, N'Peixes')
INSERT [dbo].[Tipo_Prod] ([TPID], [descTProd]) VALUES (5, N'Frutos Secos')
INSERT [dbo].[Tipo_Prod] ([TPID], [descTProd]) VALUES (6, N'Vegetais')
SET IDENTITY_INSERT [dbo].[Tipo_Prod] OFF
GO
SET IDENTITY_INSERT [dbo].[Tipo_Utilizador] ON 

INSERT [dbo].[Tipo_Utilizador] ([TUID], [descTP]) VALUES (1, N'Cliente')
INSERT [dbo].[Tipo_Utilizador] ([TUID], [descTP]) VALUES (2, N'Fornecedor')
SET IDENTITY_INSERT [dbo].[Tipo_Utilizador] OFF
GO
SET IDENTITY_INSERT [dbo].[Utilizador] ON 

INSERT [dbo].[Utilizador] ([UID], [password], [Tipo_UtilizadorTUID], [MoradaMID]) VALUES (1, N'12345', 1, 1)
INSERT [dbo].[Utilizador] ([UID], [password], [Tipo_UtilizadorTUID], [MoradaMID]) VALUES (2, N'54321', 2, 4)
INSERT [dbo].[Utilizador] ([UID], [password], [Tipo_UtilizadorTUID], [MoradaMID]) VALUES (1015, N'0012345', 1, 1010)
INSERT [dbo].[Utilizador] ([UID], [password], [Tipo_UtilizadorTUID], [MoradaMID]) VALUES (1016, N'112233', 1, 1006)
INSERT [dbo].[Utilizador] ([UID], [password], [Tipo_UtilizadorTUID], [MoradaMID]) VALUES (1017, N'abcdef', 2, 1006)
INSERT [dbo].[Utilizador] ([UID], [password], [Tipo_UtilizadorTUID], [MoradaMID]) VALUES (1018, N'casa2000', 2, 1021)
INSERT [dbo].[Utilizador] ([UID], [password], [Tipo_UtilizadorTUID], [MoradaMID]) VALUES (1022, N'alfa2000', 2, 1010)
INSERT [dbo].[Utilizador] ([UID], [password], [Tipo_UtilizadorTUID], [MoradaMID]) VALUES (1023, N'caminho2000', 1, 1010)
SET IDENTITY_INSERT [dbo].[Utilizador] OFF
GO
ALTER TABLE [dbo].[Cliente]  WITH CHECK ADD  CONSTRAINT [FKCliente664949] FOREIGN KEY([UtilizadorUID])
REFERENCES [dbo].[Utilizador] ([UID])
GO
ALTER TABLE [dbo].[Cliente] CHECK CONSTRAINT [FKCliente664949]
GO
ALTER TABLE [dbo].[Contacto]  WITH CHECK ADD  CONSTRAINT [FKContacto386313] FOREIGN KEY([UtilizadorUID])
REFERENCES [dbo].[Utilizador] ([UID])
GO
ALTER TABLE [dbo].[Contacto] CHECK CONSTRAINT [FKContacto386313]
GO
ALTER TABLE [dbo].[Contacto]  WITH CHECK ADD  CONSTRAINT [FKContacto527764] FOREIGN KEY([Tipo_ContactoTCID])
REFERENCES [dbo].[Tipo_Contacto] ([TCID])
GO
ALTER TABLE [dbo].[Contacto] CHECK CONSTRAINT [FKContacto527764]
GO
ALTER TABLE [dbo].[Doa_Prod]  WITH CHECK ADD  CONSTRAINT [FKDoa_Prod105223] FOREIGN KEY([DoacaoDID], [DoacaoFornecedorUtilizadorUID])
REFERENCES [dbo].[Doacao] ([DID], [FornecedorUtilizadorUID])
GO
ALTER TABLE [dbo].[Doa_Prod] CHECK CONSTRAINT [FKDoa_Prod105223]
GO
ALTER TABLE [dbo].[Doa_Prod]  WITH CHECK ADD  CONSTRAINT [FKDoa_Prod68735] FOREIGN KEY([ProdutoPID], [ProdutoTipo_ProdTPID], [ProdutoEstadoEID])
REFERENCES [dbo].[Produto] ([PID], [Tipo_ProdTPID], [EstadoEID])
GO
ALTER TABLE [dbo].[Doa_Prod] CHECK CONSTRAINT [FKDoa_Prod68735]
GO
ALTER TABLE [dbo].[Doacao]  WITH CHECK ADD  CONSTRAINT [FKDoacao630876] FOREIGN KEY([FornecedorUtilizadorUID])
REFERENCES [dbo].[Fornecedor] ([UtilizadorUID])
GO
ALTER TABLE [dbo].[Doacao] CHECK CONSTRAINT [FKDoacao630876]
GO
ALTER TABLE [dbo].[Fornecedor]  WITH CHECK ADD  CONSTRAINT [FKFornecedor451547] FOREIGN KEY([UtilizadorUID])
REFERENCES [dbo].[Utilizador] ([UID])
GO
ALTER TABLE [dbo].[Fornecedor] CHECK CONSTRAINT [FKFornecedor451547]
GO
ALTER TABLE [dbo].[Morada]  WITH CHECK ADD  CONSTRAINT [FKMorada668131] FOREIGN KEY([CPCPID])
REFERENCES [dbo].[CP] ([CPID])
GO
ALTER TABLE [dbo].[Morada] CHECK CONSTRAINT [FKMorada668131]
GO
ALTER TABLE [dbo].[Pedido]  WITH CHECK ADD  CONSTRAINT [FKPedido282096] FOREIGN KEY([ClienteUtilizadorUID])
REFERENCES [dbo].[Cliente] ([UtilizadorUID])
GO
ALTER TABLE [dbo].[Pedido] CHECK CONSTRAINT [FKPedido282096]
GO
ALTER TABLE [dbo].[Pedido_Prod]  WITH CHECK ADD  CONSTRAINT [FKPedido_Pro707095] FOREIGN KEY([ProdutoPID], [ProdutoTipo_ProdTPID], [ProdutoEstadoEID])
REFERENCES [dbo].[Produto] ([PID], [Tipo_ProdTPID], [EstadoEID])
GO
ALTER TABLE [dbo].[Pedido_Prod] CHECK CONSTRAINT [FKPedido_Pro707095]
GO
ALTER TABLE [dbo].[Pedido_Prod]  WITH CHECK ADD  CONSTRAINT [FKPedido_Pro971588] FOREIGN KEY([PedidoClienteUtilizadorUID], [PedidoPeID])
REFERENCES [dbo].[Pedido] ([ClienteUtilizadorUID], [PeID])
GO
ALTER TABLE [dbo].[Pedido_Prod] CHECK CONSTRAINT [FKPedido_Pro971588]
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FKProduto836217] FOREIGN KEY([EstadoEID])
REFERENCES [dbo].[Estado] ([EID])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FKProduto836217]
GO
ALTER TABLE [dbo].[Produto]  WITH CHECK ADD  CONSTRAINT [FKProduto923070] FOREIGN KEY([Tipo_ProdTPID])
REFERENCES [dbo].[Tipo_Prod] ([TPID])
GO
ALTER TABLE [dbo].[Produto] CHECK CONSTRAINT [FKProduto923070]
GO
ALTER TABLE [dbo].[Utilizador]  WITH CHECK ADD  CONSTRAINT [FKUtilizador716919] FOREIGN KEY([MoradaMID])
REFERENCES [dbo].[Morada] ([MID])
GO
ALTER TABLE [dbo].[Utilizador] CHECK CONSTRAINT [FKUtilizador716919]
GO
ALTER TABLE [dbo].[Utilizador]  WITH CHECK ADD  CONSTRAINT [FKUtilizador848256] FOREIGN KEY([Tipo_UtilizadorTUID])
REFERENCES [dbo].[Tipo_Utilizador] ([TUID])
GO
ALTER TABLE [dbo].[Utilizador] CHECK CONSTRAINT [FKUtilizador848256]
GO
/****** Object:  StoredProcedure [dbo].[ListaCliente]    Script Date: 22/01/2022 10:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ListaCliente]

 AS
 BEGIN TRANSACTION
 select * from Cliente
 IF @@ERROR <> 0
 ROLLBACK TRANSACTION
 ELSE
 COMMIT TRANSACTION

 ListaCliente
GO
/****** Object:  StoredProcedure [dbo].[ListaProdutos]    Script Date: 22/01/2022 10:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
 CREATE PROCEDURE [dbo].[ListaProdutos]

 AS
 BEGIN TRANSACTION
 SELECT PID, descPro, forma_Pro, quantidade, descTProd, descEst FROM Produto 
                               JOIN Tipo_Prod on Produto.Tipo_ProdTPID=Tipo_Prod.TPID 
                               JOIN Estado on Estado.EID=Produto.EstadoEID
 IF @@ERROR <> 0
 ROLLBACK TRANSACTION
 ELSE
 COMMIT TRANSACTION

 ListaProdutos
GO
USE [master]
GO
ALTER DATABASE [ComidaFeia] SET  READ_WRITE 
GO
