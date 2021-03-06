USE [NguyenQVuongDB]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 6/20/2021 10:15:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Description] [nvarchar](200) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Product]    Script Date: 6/20/2021 10:15:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[ID] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[UnitCost] [int] NULL,
	[Quantity] [int] NULL,
	[Image] [nvarchar](300) NULL,
	[Description] [nvarchar](300) NULL,
	[Status] [varchar](50) NULL,
	[Category_Id] [int] NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserAccount]    Script Date: 6/20/2021 10:15:20 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[ID] [int] NOT NULL,
	[UserName] [nchar](50) NULL,
	[Password] [nchar](50) NULL,
	[Status] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserAccount] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (1, N'Xiaomi', N'Điện thoại Trung Quốc')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (2, N'Apple', N'Điện thoại Apple')
INSERT [dbo].[Category] ([ID], [Name], [Description]) VALUES (3, N'SamSung', N'Điện thoại SamSung')
GO
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [Category_Id]) VALUES (1, N'Điện thoại Xiaomi note 7 ', 4500, 10, N'/Data/xiaominote11.jpg', N'Điện thoại mới', N'Còn hàng', 1)
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [Category_Id]) VALUES (2, N'Xiaomi note 9', 6000, 14, N'/Data/xiaomi-redmi-note-9-4g-4.jpg', N'Điện thoại Xiaomi', N'còn hàng', 1)
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [Category_Id]) VALUES (3, N'Xiaomi note 4', 3000, 30, N'/Data/Redminot10.jpg', N'Điện Thoại Xiaomi', N'Còn Hàng', 1)
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [Category_Id]) VALUES (4, N'SamSung Note 5', 7500, 21, N'/Data/yellow_final_2.jpg', N'Điện Thoại SamSung', N'Còn Hàng', 3)
INSERT [dbo].[Product] ([ID], [Name], [UnitCost], [Quantity], [Image], [Description], [Status], [Category_Id]) VALUES (5, N'Iphone X', 10000, 5, N'/Data/iphone-x-256gb.jpg', N'Điện Thoại Apple', N'Còn Hàng', 2)
GO
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (1, N'admin                                             ', N'21232f297a57a5a743894a0e4a801fc3                  ', N'open')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (2, N'vuong                                             ', N'bf288aa8e84f49c6f74b5faa301243ed                  ', N'open')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (3, N'Quoc                                              ', N'cd0863bff03af8fd4bf9764ca0513a92                  ', N'blocker')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (5, N'vuongnguyen                                       ', N'55e24ec655dd8a3d5083b9aebca33fee                  ', N'open')
INSERT [dbo].[UserAccount] ([ID], [UserName], [Password], [Status]) VALUES (6, N'quocvuong                                         ', N'aefa419846d2de3d0e5ca078c5319058                  ', N'open')
GO
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Category] FOREIGN KEY([Category_Id])
REFERENCES [dbo].[Category] ([ID])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Category]
GO
