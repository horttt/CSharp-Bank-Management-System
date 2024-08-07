USE [BankDb]
GO
/****** Object:  Table [dbo].[AdminTbl]    Script Date: 6/6/2024 2:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AdminTbl](
	[AId] [int] NOT NULL,
	[AName] [varchar](50) NOT NULL,
	[APass] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[AId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomersTbl]    Script Date: 6/6/2024 2:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomersTbl](
	[CustomerNum] [int] IDENTITY(1000,1) NOT NULL,
	[CustomerName] [varchar](50) NOT NULL,
	[CustomerPhone] [varchar](50) NOT NULL,
	[CustomerAddress] [varchar](255) NOT NULL,
	[CustomerGender] [varchar](10) NOT NULL,
	[CustomerEducation] [varchar](100) NOT NULL,
	[CustomerIncome] [varchar](50) NOT NULL,
	[CustomerBalance] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerNum] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[StaffsTbl]    Script Date: 6/6/2024 2:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[StaffsTbl](
	[StaffID] [int] IDENTITY(1,1) NOT NULL,
	[StaffName] [varchar](50) NOT NULL,
	[StaffPassword] [varchar](50) NOT NULL,
	[StaffPhone] [varchar](50) NOT NULL,
	[StaffAddress] [varchar](255) NOT NULL,
	[StaffGender] [varchar](10) NULL,
	[StaffLevel] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[StaffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransactionsTbl]    Script Date: 6/6/2024 2:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransactionsTbl](
	[TransactionID] [int] IDENTITY(1,1) NOT NULL,
	[TransactionName] [varchar](50) NOT NULL,
	[TransactionDate] [date] NOT NULL,
	[TransactionAmount] [int] NOT NULL,
	[AccountNumber] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TransactionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TransfersTbl]    Script Date: 6/6/2024 2:28:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TransfersTbl](
	[TransferID] [int] IDENTITY(1,1) NOT NULL,
	[TransferAccount] [int] NOT NULL,
	[RecipientAccount] [int] NOT NULL,
	[TransferAmount] [int] NOT NULL,
	[TransferDate] [date] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TransferID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
