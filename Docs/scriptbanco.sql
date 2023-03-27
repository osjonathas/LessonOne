USE [master]
GO

/****** Object:  Database [LessonOne]    Script Date: 27/03/2023 16:49:54 ******/
CREATE DATABASE [LessonOne]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'QualityResult', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\LessonOne.mdf' , SIZE = 80768KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB ),
( NAME = N'LessaonOne', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\LessaonOne.ndf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'QualityResult_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\LessonOne_log.ldf' , SIZE = 13632KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO

IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LessonOne].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO

USE [LessonOne]
GO

/****** Object:  Table [dbo].[EMPRESA]    Script Date: 27/03/2023 16:52:18 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EMPRESA](
	[EMP_CODIGO] [int] IDENTITY(1,1) NOT NULL,
	[EMP_RZSOCIAL] [varchar](100) NULL,
	[EMP_FANTASIA] [varchar](100) NULL,
	[EMP_CNPJ] [varchar](14) NULL,
	[EMP_INSCEST] [varchar](20) NULL,
	[EMP_LOGRAD] [varchar](100) NULL,
	[EMP_NUMERO] [varchar](6) NULL,
	[EMP_CEP] [varchar](8) NULL,
	[EMP_COMP] [varchar](10) NULL,
	[EMP_PONTOREF] [varchar](100) NULL,
	[EMP_UF] [char](2) NULL,
	[EMP_CIDADE] [varchar](50) NULL,
	[EMP_BAIRRO] [varchar](50) NULL,
	[EMP_RESP] [varchar](50) NULL,
	[EMP_DTCAD] [datetime] NULL,
	[EMP_TEL] [varchar](12) NULL,
	[EMP_CEL] [varchar](12) NULL,
	[EMP_FAX] [varchar](12) NULL,
	[EMP_EMAIL] [varchar](40) NULL,
	[EMP_SITE] [varchar](80) NULL,
	[EMP_OBS] [varchar](200) NULL,
	[EMP_REGFED] [char](1) NULL,
	[EMP_REGESTAD] [char](1) NULL,
	[EMP_PERCAGREGEST] [numeric](15, 2) NULL,
	[EMP_PERCAGREGFED] [numeric](15, 2) NULL,
	[EMP_ALIQSIMPLES] [numeric](15, 2) NULL,
	[EMP_CODREGTRIB] [char](1) NULL,
	[emp_TipoUnidade] [char](1) NULL,
	[emp_Sigla] [varchar](10) NULL,
 CONSTRAINT [PK__EMPRESA__F2F42A642776817F] PRIMARY KEY CLUSTERED 
(
	[EMP_CODIGO] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[EMPRESA] ADD  CONSTRAINT [DF__EMPRESA__emp_Tip__52E34C9D]  DEFAULT ('F') FOR [emp_TipoUnidade]
GO


USE [LessonOne]
GO

/****** Object:  Table [dbo].[Funcionario]    Script Date: 27/03/2023 16:52:52 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Funcionario](
	[fun_codigo] [int] IDENTITY(1,1) NOT NULL,
	[fun_nome] [varchar](60) NULL,
	[fun_dtnascimento] [datetime] NULL,
	[fun_nacionalidade] [varchar](40) NULL,
	[fun_naturalidade] [varchar](40) NULL,
	[fun_sexo] [char](1) NULL,
	[fun_estcivil] [char](1) NULL,
	[gra_codigo] [int] NULL,
	[fun_linkcurrlates] [varchar](100) NULL,
	[fun_login] [varchar](40) NULL,
	[fun_senha] [varchar](50) NULL,
	[dep_codigo] [int] NULL,
	[tit_codigo] [int] NULL,
	[fun_professor] [char](1) NULL,
	[fun_especialidade] [varchar](50) NULL,
	[fun_telefone] [varchar](12) NULL,
	[grpa_codigo] [bigint] NULL,
	[emp_codigo] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[fun_codigo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO



