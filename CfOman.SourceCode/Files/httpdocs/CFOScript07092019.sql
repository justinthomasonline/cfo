USE [cfodb]
GO
/****** Object:  Table [dbo].[AboutAndServices]    Script Date: 07/09/2019 11:21:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AboutAndServices](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[ModuleId] [int] NULL,
	[Title] [nvarchar](400) NULL,
	[Description] [ntext] NULL,
	[Sort] [int] NULL,
	[FileName] [nvarchar](500) NULL,
	[IsRightSide] [bit] NULL,
	[Active] [nvarchar](50) NULL,
	[Cr_Date] [datetime] NULL,
	[Mo_Date] [datetime] NULL,
	[AddedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_AboutAndServices] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CMSLoginAttempts]    Script Date: 07/09/2019 11:21:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CMSLoginAttempts](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NULL,
	[Date] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CMSUsers]    Script Date: 07/09/2019 11:21:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CMSUsers](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](1000) NULL,
	[Username] [nvarchar](500) NULL,
	[Password] [nvarchar](500) NULL,
	[History] [nvarchar](500) NULL,
	[Cr_Date] [datetime] NULL,
	[Mo_Date] [datetime] NULL,
	[Permissions] [nvarchar](max) NULL,
	[Active] [nvarchar](50) NULL,
	[EmailID] [nvarchar](1000) NULL,
	[PhoneNo] [nvarchar](1000) NULL,
	[NeedsApproval] [nvarchar](50) NULL,
	[Approver] [nvarchar](50) NULL,
	[AddedBy] [nvarchar](50) NULL,
	[Department] [nvarchar](1000) NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ContactUs]    Script Date: 07/09/2019 11:21:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ContactUs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Address] [nvarchar](1000) NULL,
	[Email] [nvarchar](500) NULL,
	[MobileNo] [nvarchar](200) NULL,
	[WhatsappNo] [nvarchar](200) NULL,
	[FacebookLink] [nvarchar](500) NULL,
	[FacebookTitle] [nvarchar](200) NULL,
	[InstaLink] [nvarchar](500) NULL,
	[InstaTitle] [nvarchar](200) NULL,
	[YoutubeLink] [nvarchar](500) NULL,
	[YoutubeTitle] [nvarchar](200) NULL,
	[WorkingHours] [nvarchar](500) NULL,
	[Mo_Date] [datetime] NULL,
	[AddedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_ContactUs_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CultureEvents]    Script Date: 07/09/2019 11:21:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CultureEvents](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[Description] [ntext] NULL,
	[FileName] [nvarchar](500) NULL,
	[Sort] [int] NULL,
	[EventsDate] [datetime] NULL,
	[Active] [nvarchar](50) NULL,
	[Cr_Date] [datetime] NULL,
	[Mo_Date] [datetime] NULL,
	[AddedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_CultureEvents] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FooterContactEmail]    Script Date: 07/09/2019 11:21:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FooterContactEmail](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FooerEmail] [nvarchar](255) NULL,
	[Cr_Date] [datetime] NULL,
 CONSTRAINT [PK_FooterContactEmail] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FrontContactUs]    Script Date: 07/09/2019 11:21:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FrontContactUs](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](500) NULL,
	[Email] [varchar](255) NULL,
	[Telephone] [varchar](50) NULL,
	[Comment] [ntext] NULL,
	[Cr_Date] [datetime] NULL,
 CONSTRAINT [PK_FrontContactUs] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Home]    Script Date: 07/09/2019 11:21:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Home](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[AboutDescription] [nvarchar](1000) NULL,
	[Active] [nvarchar](50) NULL,
	[Cr_Date] [datetime] NULL,
	[Mo_Date] [datetime] NULL,
	[AddedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Home] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeCourses]    Script Date: 07/09/2019 11:21:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeCourses](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[Description] [nvarchar](max) NULL,
	[FileName] [nvarchar](500) NULL,
	[Sort] [int] NULL,
	[Alias] [nvarchar](100) NULL,
	[Active] [nvarchar](50) NULL,
 CONSTRAINT [PK_HomeOtherSection] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeCultureEvents]    Script Date: 07/09/2019 11:21:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeCultureEvents](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[Description] [ntext] NULL,
	[FileName] [nvarchar](500) NULL,
	[Sort] [int] NULL,
	[EventsDate] [datetime] NULL,
	[Active] [nvarchar](50) NULL,
 CONSTRAINT [PK_HomeNGDFWorks] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeImages]    Script Date: 07/09/2019 11:21:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeImages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](1000) NULL,
	[ModuleId] [int] NULL,
 CONSTRAINT [PK_HomeIcon] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeSliderSection]    Script Date: 07/09/2019 11:21:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeSliderSection](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](2000) NULL,
	[Description] [ntext] NULL,
	[FileName] [nvarchar](500) NULL,
	[Sort] [int] NULL,
	[Active] [nvarchar](50) NULL,
	[Alias] [nvarchar](100) NULL,
 CONSTRAINT [PK_HomeSliderSection] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Images]    Script Date: 07/09/2019 11:21:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Images](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FileName] [nvarchar](1000) NULL,
	[ModuleId] [int] NULL,
 CONSTRAINT [PK_Images] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Menus]    Script Date: 07/09/2019 11:21:01 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Menus](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Parent_ID] [int] NULL,
	[Title] [nvarchar](1000) NULL,
	[Type] [nvarchar](50) NULL,
	[Link] [nvarchar](1000) NULL,
	[Sort] [int] NULL,
	[Active] [nvarchar](50) NULL,
	[Cr_Date] [datetime] NULL,
	[Mo_Date] [datetime] NULL,
	[Added_By] [nvarchar](50) NULL,
	[ExtLinkNewWindow] [nvarchar](50) NULL,
	[Alias] [nvarchar](2000) NULL,
	[ModuleID] [nvarchar](500) NULL,
	[MenuType] [nvarchar](200) NULL,
	[LevelNo] [int] NULL,
	[FileName] [nvarchar](2000) NULL,
	[IconFile] [nvarchar](2000) NULL,
	[MenuIcon] [nvarchar](2000) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OurPatner]    Script Date: 07/09/2019 11:21:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OurPatner](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Filename] [varchar](500) NULL,
	[ModuleId] [int] NULL,
 CONSTRAINT [PK_OurPatner] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pages]    Script Date: 07/09/2019 11:21:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pages](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[MenuID] [int] NULL,
	[Parent_ID] [int] NULL,
	[Title] [nvarchar](2000) NULL,
	[Description] [ntext] NULL,
	[Cr_Date] [datetime] NULL,
	[Mo_Date] [datetime] NULL,
	[Added_By] [nvarchar](50) NULL,
	[ExtLinkNewWindow] [nvarchar](50) NULL,
	[FileName] [nvarchar](2000) NULL,
	[FileNameAr] [nvarchar](2000) NULL,
	[ModuleType] [nvarchar](2000) NULL,
	[IsContentDivideTwo] [bit] NOT NULL,
	[ContentFileName] [nvarchar](2000) NULL,
	[Description2] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 07/09/2019 11:21:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[Description] [ntext] NULL,
	[Details] [ntext] NULL,
	[Sort] [int] NULL,
	[FileName] [nvarchar](400) NULL,
	[IsImageRight] [bit] NULL,
	[Active] [nvarchar](50) NULL,
	[Cr_Date] [datetime] NULL,
	[Mo_Date] [datetime] NULL,
	[AddedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 07/09/2019 11:21:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClientName] [nvarchar](500) NULL,
	[Icon] [nvarchar](500) NULL,
	[Sort] [int] NULL,
	[Scope] [ntext] NULL,
	[Active] [nvarchar](50) NULL,
	[Cr_Date] [datetime] NULL,
	[Mo_Date] [datetime] NULL,
	[AddedBy] [nvarchar](50) NULL,
 CONSTRAINT [PK_Project] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Section]    Script Date: 07/09/2019 11:21:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Section](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Page_ID] [int] NULL,
	[Title] [nvarchar](2000) NULL,
	[Details] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Sort] [float] NULL,
	[FileName] [nvarchar](500) NULL,
	[UploadFile] [nvarchar](500) NULL,
	[IsContentInBlueBackground] [bit] NULL,
	[IsContentInBox] [bit] NULL,
	[Sources] [varchar](500) NULL,
	[Active] [nvarchar](50) NULL,
 CONSTRAINT [PK_Section] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slider]    Script Date: 07/09/2019 11:21:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slider](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](500) NULL,
	[Picture] [nvarchar](500) NULL,
	[Link] [nvarchar](1000) NULL,
	[Description] [nvarchar](max) NULL,
	[Sort] [int] NULL,
	[Active] [bit] NULL,
	[Type] [nvarchar](200) NULL,
 CONSTRAINT [PK_Slider] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tracking]    Script Date: 07/09/2019 11:21:02 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tracking](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](50) NULL,
	[TableName] [nvarchar](1000) NULL,
	[Operation] [nvarchar](1000) NULL,
	[Record] [ntext] NULL,
	[Date] [datetime] NULL,
	[IPAddress] [nvarchar](1000) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[AboutAndServices] ON 
GO
INSERT [dbo].[AboutAndServices] ([id], [ModuleId], [Title], [Description], [Sort], [FileName], [IsRightSide], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (3, 1, N'', N'<p><b>NATIONAL GRILLES AND DIFFUSERS FACTORY</b> is promoted by <b>Mr. SAIF AL MAAMARY</b> a technocrat with an established business of Security and Automation Systems in the name of Ibn Amor Al Maamary Electronics (IAAE) with head office in Al Mawalih (North) in Muscat, Sultanate of Oman. While serving the Security and Automation Systems Industry in Oman since 2002 it decided to enter the GRD manufacturing unit locally in Smail Industrial Area in Sultanate of Oman to serve the construction Industries with quality Products at most competitive prices in addition to create employment to local Omani nationals in particular and serving the larger objective of Omanization. </p>
<p><b>NATIONAL GRILLES AND DIFFUSERS FACTORY</b> commenced its commercial production in February 2014 with a humble beginning of manufacturing Ceiling Diffusers, Registers, Slots, Linear Bar Grilles, Sand Trap Louver, Louvers and Access Doors. </p>', 1, N'2019-7-1-15-14-41intro-01.jpg', 0, N'True', CAST(N'2019-07-01T15:13:57.000' AS DateTime), CAST(N'2019-07-02T15:46:06.000' AS DateTime), N'1')
GO
INSERT [dbo].[AboutAndServices] ([id], [ModuleId], [Title], [Description], [Sort], [FileName], [IsRightSide], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (4, 1, N'', N'<p>Objective was to provide complete range of HVAC products locally in Oman with a manufacturing know how with leading European brand, complimenting quality products in our manufacturing range like VCD, VAV, Sound Attenuators, Dampers, Motorized Dampers, Fire &amp; Smoke Dampers at a competitive price and prompt deliveries. </p>
              <p>In addition to manufacturing we are also trading duct consumables and parts.</p>', 2, N'2019-7-1-15-15-9intro-02.jpg', 1, N'True', CAST(N'2019-07-01T15:15:09.000' AS DateTime), CAST(N'2019-07-02T15:46:52.000' AS DateTime), N'1')
GO
INSERT [dbo].[AboutAndServices] ([id], [ModuleId], [Title], [Description], [Sort], [FileName], [IsRightSide], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (5, 1, N'', N'<p>Ibn Amor Al Maamary Electronics is a privately owned 100% local company is among the market leaders in security and automation business. Over the past few years the IAAE increased its market shares and dominate the top slot among its competitors `in the similar product segment. </p>
              <p>IAAE, the project division of <i>Ibn Amor Al Maamary Electronics (IAAE)</i> was established in 2002, replacing "Global Electronics Company" Which was based in Al Khuwair and been working on the same field for 5 years. The IAAE operations include retail, wholesale and export of electronics security products, as well as a dedicated division for engineering and onsite installation, contracting and maintenance. </p>', 3, N'2019-7-1-15-16-7intro-03.jpg', 0, N'True', CAST(N'2019-07-01T15:16:07.000' AS DateTime), CAST(N'2019-07-01T15:16:07.000' AS DateTime), N'1')
GO
INSERT [dbo].[AboutAndServices] ([id], [ModuleId], [Title], [Description], [Sort], [FileName], [IsRightSide], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (6, 1, N'', N'<p>IAAE in-house engineering department is well equipped to undertake any security system network design, implementation & upgrade activities in relation to hi-rise tower project, commercial & business premises, residential & home projects and maintenance & repair of our delivered products. Currently we have a strong, well-qualified team and products to undertake any project to meet our customer`s requirements. </p>', 4, N'2019-7-1-15-16-26intro-04.jpg', 1, N'True', CAST(N'2019-07-01T15:16:26.000' AS DateTime), CAST(N'2019-07-01T15:16:26.000' AS DateTime), N'1')
GO
INSERT [dbo].[AboutAndServices] ([id], [ModuleId], [Title], [Description], [Sort], [FileName], [IsRightSide], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (7, 2, N'Lorem ipsum dolor', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pretium pretium tempor. Ut eget imperdiet neque. In volutpat ante semper diam molestie, et aliquam erat laoreet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pretium pretium tempor. Ut eget imperdiet neque.</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pretium pretium tempor. Ut eget imperdiet neque. In volutpat ante semper diam molestie, et aliquam erat laoreet. Lorem ipsum dolor.</p>', 1, N'2019-7-1-15-17-14location.jpg', 0, N'True', CAST(N'2019-07-01T15:17:14.000' AS DateTime), CAST(N'2019-07-01T15:17:14.000' AS DateTime), N'1')
GO
INSERT [dbo].[AboutAndServices] ([id], [ModuleId], [Title], [Description], [Sort], [FileName], [IsRightSide], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (8, 2, N'Lorem ipsum dolor', N'<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pretium pretium tempor. Ut eget imperdiet neque. In volutpat ante semper diam molestie, et aliquam erat laoreet. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pretium pretium tempor. Ut eget imperdiet neque.</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut pretium pretium tempor. Ut eget imperdiet neque. In volutpat ante semper diam molestie, et aliquam erat laoreet. Lorem ipsum dolor.</p>', 2, N'2019-7-1-15-17-43location.jpg', 1, N'True', CAST(N'2019-07-01T15:17:43.000' AS DateTime), CAST(N'2019-07-01T15:17:43.000' AS DateTime), N'1')
GO
SET IDENTITY_INSERT [dbo].[AboutAndServices] OFF
GO
SET IDENTITY_INSERT [dbo].[CMSUsers] ON 
GO
INSERT [dbo].[CMSUsers] ([id], [Name], [Username], [Password], [History], [Cr_Date], [Mo_Date], [Permissions], [Active], [EmailID], [PhoneNo], [NeedsApproval], [Approver], [AddedBy], [Department]) VALUES (1, N'AdminUser', N'adminuser', N'8b5073fb50816c304ce9f9a7f46f80c5', N'8b5073fb50816c304ce9f9a7f46f80c5', CAST(N'2016-10-06T16:52:31.000' AS DateTime), CAST(N'2019-07-08T14:47:27.000' AS DateTime), N'Menus.aspx,MenusNew.aspx,MenusEdit.aspx,HomePage.aspx,Events.aspx,Logs.aspx,LogsView.aspx,Users.aspx,UsersNew.aspx,UsersEdit.aspx,ContactUs.aspx', N'True', N'techsupport1@gulfcybertech.com', N'90909091', N'False', N'0', N'1', N'IT')
GO
SET IDENTITY_INSERT [dbo].[CMSUsers] OFF
GO
SET IDENTITY_INSERT [dbo].[ContactUs] ON 
GO
INSERT [dbo].[ContactUs] ([id], [Address], [Email], [MobileNo], [WhatsappNo], [FacebookLink], [FacebookTitle], [InstaLink], [InstaTitle], [YoutubeLink], [YoutubeTitle], [WorkingHours], [Mo_Date], [AddedBy]) VALUES (1, N'Center Franco Omanais 207, Al inshirah Street MSQ', N'info@cfoman.org', N'+968 24 69 75 79', N'+968 96 66 36 22', N'https://fr-fr.facebook.com/CentreFrancoOmanaiscfo/', N'CenterFranco-Omanais(CFO)', N'https://www.instagram/cfo_oman', N'cfo_oman', N'https://www.youtube.com/channel/UC2bY3X5hQlJfWCvTJxbiWQw', N'', N'from Sunday to Thrusday<br />
                                        9AM - 1PM &amp; 2PM - 8PM', CAST(N'2019-07-08T16:45:48.000' AS DateTime), N'1')
GO
SET IDENTITY_INSERT [dbo].[ContactUs] OFF
GO
SET IDENTITY_INSERT [dbo].[CultureEvents] ON 
GO
INSERT [dbo].[CultureEvents] ([id], [Title], [Description], [FileName], [Sort], [EventsDate], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (1, N'', N'<p> Ballerina An animation film by Eric Summer &amp; Eric Warin, 2016 </p>
                                            <p>Exhibition room, Free entry</p>', N'2019-7-8-15-7-42event1.PNG', 1, CAST(N'2019-07-08T15:05:00.000' AS DateTime), N'True', CAST(N'2019-07-08T15:05:31.000' AS DateTime), CAST(N'2019-07-08T15:09:00.000' AS DateTime), N'1')
GO
INSERT [dbo].[CultureEvents] ([id], [Title], [Description], [FileName], [Sort], [EventsDate], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (2, N'', N'<p> Story time, Reading and animation for kids 3 to 6 </p>
                                            <p>CFO Library</p>', N'2019-7-8-15-7-59event2.PNG', 2, CAST(N'2019-07-09T15:07:00.000' AS DateTime), N'True', CAST(N'2019-07-08T15:07:59.000' AS DateTime), CAST(N'2019-07-08T15:07:59.000' AS DateTime), N'1')
GO
INSERT [dbo].[CultureEvents] ([id], [Title], [Description], [FileName], [Sort], [EventsDate], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (3, N'', N'<p> Story time, Reading and animation for kids 3 to 6 </p>
                                            <p>CFO Library</p>', N'2019-7-8-15-8-19event1.PNG', 3, CAST(N'2019-07-11T15:08:00.000' AS DateTime), N'True', CAST(N'2019-07-08T15:08:19.000' AS DateTime), CAST(N'2019-07-08T15:08:19.000' AS DateTime), N'1')
GO
INSERT [dbo].[CultureEvents] ([id], [Title], [Description], [FileName], [Sort], [EventsDate], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (4, N'', N'<p> Story time, Reading and animation for kids 3 to 6 </p>
                                            <p>CFO Library</p>', N'2019-7-8-15-8-54event1.PNG', 4, CAST(N'2019-07-04T15:08:00.000' AS DateTime), N'True', CAST(N'2019-07-08T15:08:54.000' AS DateTime), CAST(N'2019-07-08T15:08:54.000' AS DateTime), N'1')
GO
INSERT [dbo].[CultureEvents] ([id], [Title], [Description], [FileName], [Sort], [EventsDate], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (5, N'', N'<p> Story time, Reading and animation for kids 3 to 6 </p>
                                            <p>CFO Library</p>', N'2019-7-8-15-9-18event2.PNG', 5, CAST(N'2019-07-03T15:09:00.000' AS DateTime), N'True', CAST(N'2019-07-08T15:09:18.000' AS DateTime), CAST(N'2019-07-08T15:09:18.000' AS DateTime), N'1')
GO
SET IDENTITY_INSERT [dbo].[CultureEvents] OFF
GO
SET IDENTITY_INSERT [dbo].[FooterContactEmail] ON 
GO
INSERT [dbo].[FooterContactEmail] ([id], [FooerEmail], [Cr_Date]) VALUES (1, N'miral.patel@gmail.com', CAST(N'2019-07-08T16:23:36.000' AS DateTime))
GO
INSERT [dbo].[FooterContactEmail] ([id], [FooerEmail], [Cr_Date]) VALUES (2, N'test@gmail.com', CAST(N'2019-07-08T17:35:35.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[FooterContactEmail] OFF
GO
SET IDENTITY_INSERT [dbo].[FrontContactUs] ON 
GO
INSERT [dbo].[FrontContactUs] ([id], [FullName], [Email], [Telephone], [Comment], [Cr_Date]) VALUES (1, N'miral', N'miralpatel@gmail.com', N'99745154512', N'this is it', CAST(N'2019-07-08T16:01:06.000' AS DateTime))
GO
INSERT [dbo].[FrontContactUs] ([id], [FullName], [Email], [Telephone], [Comment], [Cr_Date]) VALUES (2, N'miral', N'patel@gmial.com', N'9', N'test', CAST(N'2019-07-08T16:03:08.000' AS DateTime))
GO
INSERT [dbo].[FrontContactUs] ([id], [FullName], [Email], [Telephone], [Comment], [Cr_Date]) VALUES (3, N'test', N'test@gmail.com', N'9', N'test', CAST(N'2019-07-08T17:34:41.000' AS DateTime))
GO
SET IDENTITY_INSERT [dbo].[FrontContactUs] OFF
GO
SET IDENTITY_INSERT [dbo].[Home] ON 
GO
INSERT [dbo].[Home] ([id], [AboutDescription], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (1, N'<p>
                                Founded in 1979 through bilateral cooperation agreements between the Sultanate of Oman and the French Republic, the Centre Franco Omanais offers French as a foreign language courses. You will also find a library and information about studies in France through our Campus France office.
                            </p>
                            <br />
                            <p>The CFO works under the authority of the Ministry of Education of Oman and the French Embassy in Oman.</p>', N'True', CAST(N'2019-07-04T16:36:17.000' AS DateTime), CAST(N'2019-07-08T18:34:42.000' AS DateTime), N'1')
GO
SET IDENTITY_INSERT [dbo].[Home] OFF
GO
SET IDENTITY_INSERT [dbo].[HomeCourses] ON 
GO
INSERT [dbo].[HomeCourses] ([Id], [Title], [Description], [FileName], [Sort], [Alias], [Active]) VALUES (1, N'KIDS & TEEN', N'<p>Find the parfait program for your child&#8212;from those new to the language to native speakers...</p>', N'2019-7-4-17-6-59box-1.jpg', 1, N'kids-teens', N'True')
GO
INSERT [dbo].[HomeCourses] ([Id], [Title], [Description], [FileName], [Sort], [Alias], [Active]) VALUES (2, N'ADULTS', N'<p>Whether you are stuck for words after &#8220;Bonjour,&#8221; want to discover some typical French films...</p>', N'2019-7-4-17-7-28box-2.jpg', 2, N'adults', N'True')
GO
INSERT [dbo].[HomeCourses] ([Id], [Title], [Description], [FileName], [Sort], [Alias], [Active]) VALUES (3, N'Private tutions', N'<p>Away from the distraction of a busy office or home life, our One-to-One programme gives...</p>', N'2019-7-4-17-8-4box-3.jpg', 3, N'private-tuitions', N'True')
GO
INSERT [dbo].[HomeCourses] ([Id], [Title], [Description], [FileName], [Sort], [Alias], [Active]) VALUES (4, N'Current session', N'<p>Book fee: 20 OMR for adults ; 15 OMR for kids and teenagers. Books are valid for 3 sessions...</p>', N'2019-7-4-17-8-47box-4.jpg', 4, N'current-session', N'True')
GO
SET IDENTITY_INSERT [dbo].[HomeCourses] OFF
GO
SET IDENTITY_INSERT [dbo].[HomeCultureEvents] ON 
GO
INSERT [dbo].[HomeCultureEvents] ([id], [Title], [Description], [FileName], [Sort], [EventsDate], [Active]) VALUES (2, N'', N'<p> Ballerina An animation film by Eric Summer &amp; Eric Warin, 2016 </p>
                                                <p>Exhibition room, Free entry</p>', N'2019-7-4-17-24-23event1.PNG', 1, CAST(N'2019-07-05T05:24:00.000' AS DateTime), N'True')
GO
INSERT [dbo].[HomeCultureEvents] ([id], [Title], [Description], [FileName], [Sort], [EventsDate], [Active]) VALUES (3, N'', N'<p> Story time, Reading and animation for kids 3 to 6 </p>
                                                <p>CFO Library</p>', N'2019-7-4-17-24-54event2.PNG', 2, CAST(N'2019-07-05T05:24:00.000' AS DateTime), N'True')
GO
SET IDENTITY_INSERT [dbo].[HomeCultureEvents] OFF
GO
SET IDENTITY_INSERT [dbo].[HomeImages] ON 
GO
INSERT [dbo].[HomeImages] ([Id], [FileName], [ModuleId]) VALUES (2, N'2019-7-4-17-19-42mag1.PNG', 1)
GO
INSERT [dbo].[HomeImages] ([Id], [FileName], [ModuleId]) VALUES (3, N'2019-7-4-17-19-42mag2.PNG', 1)
GO
INSERT [dbo].[HomeImages] ([Id], [FileName], [ModuleId]) VALUES (6, N'2019-7-8-18-34-42mag1.PNG', 1)
GO
INSERT [dbo].[HomeImages] ([Id], [FileName], [ModuleId]) VALUES (7, N'2019-7-8-18-34-42mag2.PNG', 1)
GO
SET IDENTITY_INSERT [dbo].[HomeImages] OFF
GO
SET IDENTITY_INSERT [dbo].[HomeSliderSection] ON 
GO
INSERT [dbo].[HomeSliderSection] ([id], [Title], [Description], [FileName], [Sort], [Active], [Alias]) VALUES (1, N'OUR LIBRARY', N'Lorem Ipsum has been the industry`s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'2019-7-4-17-3-39banner.jpg', 1, N'True', N'')
GO
INSERT [dbo].[HomeSliderSection] ([id], [Title], [Description], [FileName], [Sort], [Active], [Alias]) VALUES (2, N'OUR LIBRARY 2', N'Lorem Ipsum has been the industry`s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', N'2019-7-4-17-4-4banner.jpg', 2, N'True', N'')
GO
SET IDENTITY_INSERT [dbo].[HomeSliderSection] OFF
GO
SET IDENTITY_INSERT [dbo].[Images] ON 
GO
INSERT [dbo].[Images] ([id], [FileName], [ModuleId]) VALUES (4, N'2019-7-1-17-3-25door1.jpg', 9)
GO
INSERT [dbo].[Images] ([id], [FileName], [ModuleId]) VALUES (5, N'2019-7-1-17-3-25door2.jpg', 9)
GO
INSERT [dbo].[Images] ([id], [FileName], [ModuleId]) VALUES (6, N'2019-7-1-17-3-25door3.jpg', 9)
GO
INSERT [dbo].[Images] ([id], [FileName], [ModuleId]) VALUES (7, N'2019-7-1-17-3-25door4.jpg', 9)
GO
INSERT [dbo].[Images] ([id], [FileName], [ModuleId]) VALUES (8, N'2019-7-1-17-3-25door5.jpg', 9)
GO
SET IDENTITY_INSERT [dbo].[Images] OFF
GO
SET IDENTITY_INSERT [dbo].[Menus] ON 
GO
INSERT [dbo].[Menus] ([id], [Parent_ID], [Title], [Type], [Link], [Sort], [Active], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [Alias], [ModuleID], [MenuType], [LevelNo], [FileName], [IconFile], [MenuIcon]) VALUES (1, 0, N'ABOUT US', N'WebPage', N'0', 1, N'True', CAST(N'2019-07-05T11:23:27.000' AS DateTime), CAST(N'2019-07-05T11:23:27.000' AS DateTime), N'1', N'False', N'about-us', N'', N'TopMenu', 0, N'', N'', N'')
GO
INSERT [dbo].[Menus] ([id], [Parent_ID], [Title], [Type], [Link], [Sort], [Active], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [Alias], [ModuleID], [MenuType], [LevelNo], [FileName], [IconFile], [MenuIcon]) VALUES (2, 0, N'COURSES', N'WebPage', N'0', 2, N'True', CAST(N'2019-07-05T11:23:53.000' AS DateTime), CAST(N'2019-07-05T11:23:53.000' AS DateTime), N'1', N'False', N'courses', N'', N'TopMenu', 0, N'', N'', N'')
GO
INSERT [dbo].[Menus] ([id], [Parent_ID], [Title], [Type], [Link], [Sort], [Active], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [Alias], [ModuleID], [MenuType], [LevelNo], [FileName], [IconFile], [MenuIcon]) VALUES (3, 2, N'Kids & Teens', N'WebPage', N'', 1, N'True', CAST(N'2019-07-05T11:24:25.000' AS DateTime), CAST(N'2019-07-05T11:24:53.000' AS DateTime), N'1', N'False', N'kids-teens', N'3', N'InnerMenu', 0, N'', N'', N'')
GO
INSERT [dbo].[Menus] ([id], [Parent_ID], [Title], [Type], [Link], [Sort], [Active], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [Alias], [ModuleID], [MenuType], [LevelNo], [FileName], [IconFile], [MenuIcon]) VALUES (4, 2, N'Adults', N'WebPage', N'0', 2, N'True', CAST(N'2019-07-05T11:24:45.000' AS DateTime), CAST(N'2019-07-05T11:24:45.000' AS DateTime), N'1', N'False', N'adults', N'', N'InnerMenu', 0, N'', N'', N'')
GO
INSERT [dbo].[Menus] ([id], [Parent_ID], [Title], [Type], [Link], [Sort], [Active], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [Alias], [ModuleID], [MenuType], [LevelNo], [FileName], [IconFile], [MenuIcon]) VALUES (5, 2, N'Private tuitions', N'WebPage', N'0', 3, N'True', CAST(N'2019-07-05T11:25:13.000' AS DateTime), CAST(N'2019-07-05T11:25:13.000' AS DateTime), N'1', N'False', N'private-tuitions', N'', N'InnerMenu', 0, N'', N'', N'')
GO
INSERT [dbo].[Menus] ([id], [Parent_ID], [Title], [Type], [Link], [Sort], [Active], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [Alias], [ModuleID], [MenuType], [LevelNo], [FileName], [IconFile], [MenuIcon]) VALUES (6, 2, N'Current session', N'WebPage', N'', 4, N'True', CAST(N'2019-07-05T11:25:37.000' AS DateTime), CAST(N'2019-07-05T11:25:45.000' AS DateTime), N'1', N'False', N'current-session', N'6', N'InnerMenu', 0, N'', N'', N'')
GO
INSERT [dbo].[Menus] ([id], [Parent_ID], [Title], [Type], [Link], [Sort], [Active], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [Alias], [ModuleID], [MenuType], [LevelNo], [FileName], [IconFile], [MenuIcon]) VALUES (7, 0, N'CULTURAL EVENTS', N'WebPage', N'0', 3, N'True', CAST(N'2019-07-05T11:26:24.000' AS DateTime), CAST(N'2019-07-05T11:26:24.000' AS DateTime), N'1', N'False', N'cultural-events', N'', N'TopMenu', 0, N'', N'', N'')
GO
INSERT [dbo].[Menus] ([id], [Parent_ID], [Title], [Type], [Link], [Sort], [Active], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [Alias], [ModuleID], [MenuType], [LevelNo], [FileName], [IconFile], [MenuIcon]) VALUES (8, 7, N'Upcomming events in muscat', N'Module', N'Events.aspx', 1, N'True', CAST(N'2019-07-05T11:27:00.000' AS DateTime), CAST(N'2019-07-08T15:32:04.000' AS DateTime), N'1', N'False', N'upcomming-events', N'8', N'InnerMenu', 0, N'', N'', N'')
GO
INSERT [dbo].[Menus] ([id], [Parent_ID], [Title], [Type], [Link], [Sort], [Active], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [Alias], [ModuleID], [MenuType], [LevelNo], [FileName], [IconFile], [MenuIcon]) VALUES (9, 7, N'Past events in muscat', N'Module', N'Events.aspx', 2, N'True', CAST(N'2019-07-05T11:27:31.000' AS DateTime), CAST(N'2019-07-08T15:32:15.000' AS DateTime), N'1', N'False', N'past-events', N'9', N'InnerMenu', 0, N'', N'', N'')
GO
INSERT [dbo].[Menus] ([id], [Parent_ID], [Title], [Type], [Link], [Sort], [Active], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [Alias], [ModuleID], [MenuType], [LevelNo], [FileName], [IconFile], [MenuIcon]) VALUES (10, 0, N'TESTS & CERTIFICATES', N'WebPage', N'0', 4, N'True', CAST(N'2019-07-05T11:29:17.000' AS DateTime), CAST(N'2019-07-05T11:29:17.000' AS DateTime), N'1', N'False', N'tests-certificates', N'', N'TopMenu', 0, N'', N'', N'')
GO
INSERT [dbo].[Menus] ([id], [Parent_ID], [Title], [Type], [Link], [Sort], [Active], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [Alias], [ModuleID], [MenuType], [LevelNo], [FileName], [IconFile], [MenuIcon]) VALUES (11, 10, N'DELF/DALF', N'WebPage', N'0', 1, N'True', CAST(N'2019-07-05T11:29:50.000' AS DateTime), CAST(N'2019-07-05T11:29:50.000' AS DateTime), N'1', N'False', N'delf', N'', N'InnerMenu', 0, N'', N'', N'')
GO
INSERT [dbo].[Menus] ([id], [Parent_ID], [Title], [Type], [Link], [Sort], [Active], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [Alias], [ModuleID], [MenuType], [LevelNo], [FileName], [IconFile], [MenuIcon]) VALUES (12, 10, N'TEF', N'WebPage', N'0', 2, N'True', CAST(N'2019-07-05T11:30:24.000' AS DateTime), CAST(N'2019-07-05T11:30:24.000' AS DateTime), N'1', N'False', N'tef', N'', N'InnerMenu', 0, N'', N'', N'')
GO
INSERT [dbo].[Menus] ([id], [Parent_ID], [Title], [Type], [Link], [Sort], [Active], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [Alias], [ModuleID], [MenuType], [LevelNo], [FileName], [IconFile], [MenuIcon]) VALUES (13, 0, N'LIBRARY', N'WebPage', N'0', 5, N'True', CAST(N'2019-07-05T11:31:03.000' AS DateTime), CAST(N'2019-07-05T11:31:03.000' AS DateTime), N'1', N'False', N'library', N'', N'TopMenu', 0, N'', N'', N'')
GO
INSERT [dbo].[Menus] ([id], [Parent_ID], [Title], [Type], [Link], [Sort], [Active], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [Alias], [ModuleID], [MenuType], [LevelNo], [FileName], [IconFile], [MenuIcon]) VALUES (14, 0, N'STUDY IN FRANCE', N'WebPage', N'0', 6, N'True', CAST(N'2019-07-05T11:31:58.000' AS DateTime), CAST(N'2019-07-05T11:31:58.000' AS DateTime), N'1', N'False', N'study-in-france', N'', N'TopMenu', 0, N'', N'', N'')
GO
INSERT [dbo].[Menus] ([id], [Parent_ID], [Title], [Type], [Link], [Sort], [Active], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [Alias], [ModuleID], [MenuType], [LevelNo], [FileName], [IconFile], [MenuIcon]) VALUES (15, 14, N'Campus France', N'WebPage', N'0', 1, N'True', CAST(N'2019-07-05T11:32:26.000' AS DateTime), CAST(N'2019-07-05T11:32:26.000' AS DateTime), N'1', N'False', N'campus-france', N'', N'InnerMenu', 0, N'', N'', N'')
GO
INSERT [dbo].[Menus] ([id], [Parent_ID], [Title], [Type], [Link], [Sort], [Active], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [Alias], [ModuleID], [MenuType], [LevelNo], [FileName], [IconFile], [MenuIcon]) VALUES (16, 14, N'Cavilam', N'WebPage', N'0', 2, N'True', CAST(N'2019-07-05T11:32:45.000' AS DateTime), CAST(N'2019-07-05T11:32:45.000' AS DateTime), N'1', N'False', N'cavilam', N'', N'TopMenu', 0, N'', N'', N'')
GO
INSERT [dbo].[Menus] ([id], [Parent_ID], [Title], [Type], [Link], [Sort], [Active], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [Alias], [ModuleID], [MenuType], [LevelNo], [FileName], [IconFile], [MenuIcon]) VALUES (17, 0, N'CONTACT US', N'Module', N'ContactUs.aspx', 7, N'True', CAST(N'2019-07-05T11:33:14.000' AS DateTime), CAST(N'2019-07-08T15:31:29.000' AS DateTime), N'1', N'False', N'contact-us', N'17', N'TopMenu', 0, N'', N'', N'')
GO
SET IDENTITY_INSERT [dbo].[Menus] OFF
GO
SET IDENTITY_INSERT [dbo].[OurPatner] ON 
GO
INSERT [dbo].[OurPatner] ([id], [Filename], [ModuleId]) VALUES (3, N'2019-7-4-17-20-49par-1.png', 1)
GO
INSERT [dbo].[OurPatner] ([id], [Filename], [ModuleId]) VALUES (4, N'2019-7-4-17-20-49par-2.png', 1)
GO
INSERT [dbo].[OurPatner] ([id], [Filename], [ModuleId]) VALUES (5, N'2019-7-4-17-20-49par-3.png', 1)
GO
INSERT [dbo].[OurPatner] ([id], [Filename], [ModuleId]) VALUES (6, N'2019-7-4-17-20-49par-4.png', 1)
GO
INSERT [dbo].[OurPatner] ([id], [Filename], [ModuleId]) VALUES (7, N'2019-7-4-17-20-49par-5.png', 1)
GO
INSERT [dbo].[OurPatner] ([id], [Filename], [ModuleId]) VALUES (8, N'2019-7-4-17-20-49par-6.png', 1)
GO
INSERT [dbo].[OurPatner] ([id], [Filename], [ModuleId]) VALUES (9, N'2019-7-4-17-20-49par-7.png', 1)
GO
SET IDENTITY_INSERT [dbo].[OurPatner] OFF
GO
SET IDENTITY_INSERT [dbo].[Pages] ON 
GO
INSERT [dbo].[Pages] ([id], [MenuID], [Parent_ID], [Title], [Description], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [FileName], [FileNameAr], [ModuleType], [IsContentDivideTwo], [ContentFileName], [Description2]) VALUES (1, 1, 0, N'ABOUT CFO', N'<p>Founded in 1979 through bilateral cooperation agreements between the Sultanate of Oman and the French Republic, the Centre Franco Omanais offers French as a foreign language courses. You will also find a library and information about studies in France through our Campus France office.</p>
                                <p>The CFO works under the authority of the Ministry of Education of Oman and the French Embassy in Oman.</p>', CAST(N'2019-07-05T11:23:27.000' AS DateTime), CAST(N'2019-07-05T11:23:27.000' AS DateTime), N'1', N'False', N'b10f155b-4c67-405b-a263-67da7bfa5c80.jpg', N'', N'Page', 0, N'3934b7f9-a3d1-4463-9770-c85485ab7f2a.png', NULL)
GO
INSERT [dbo].[Pages] ([id], [MenuID], [Parent_ID], [Title], [Description], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [FileName], [FileNameAr], [ModuleType], [IsContentDivideTwo], [ContentFileName], [Description2]) VALUES (2, 2, 0, N'COURSES', N'', CAST(N'2019-07-05T11:23:53.000' AS DateTime), CAST(N'2019-07-05T11:23:53.000' AS DateTime), N'1', N'False', N'', N'', N'Page', 0, NULL, NULL)
GO
INSERT [dbo].[Pages] ([id], [MenuID], [Parent_ID], [Title], [Description], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [FileName], [FileNameAr], [ModuleType], [IsContentDivideTwo], [ContentFileName], [Description2]) VALUES (3, 3, 2, N'KIDS AND TEENS', N'<p>Find the parfait program for your child&#8212;from those new to the language to native speakers&#8212;at CFO! We run classes for children aged 6 to 16 at different levels.</p>
                                <p>Kids &amp; teens will enjoy our fun and fully immersive French classes tailored to their age and abilities. They are encouraged by our native French speaker teachers to interact in French during the class through stories, songs, educational games and fun activities. Classes are held completely in French to give your child the best chance to learn and speak French and to make language-learning serious and fun.</p>
                                <p>Young students learn French through playful activities, while teens explore the language through thematic projects and real-world tasks that immerse them in French and francophone cultures.</p>', CAST(N'2019-07-05T11:24:26.000' AS DateTime), CAST(N'2019-07-05T11:24:26.000' AS DateTime), N'1', N'False', N'9250aabb-a7a3-493b-bb0b-48cf1c47aba6.jpg', N'', N'Page', 0, N'', NULL)
GO
INSERT [dbo].[Pages] ([id], [MenuID], [Parent_ID], [Title], [Description], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [FileName], [FileNameAr], [ModuleType], [IsContentDivideTwo], [ContentFileName], [Description2]) VALUES (4, 4, 2, N'ABOUT OUR FRENCH COURSES', N'<p>Whether you are stuck for words after "Bonjour," want to discover some typical French films, or tick a few French classics off your "to read" list, we will extend our warmest French welcome and show you around your local French language centre, library, or cultural venue. Each year, hundreds of people are attracted by our Centre and its unique atmosphere, so why not give us a go?</p>
                                    <p>The adult courses offer you a wide range of French courses designed to suit every need and availability</p>', CAST(N'2019-07-05T11:24:45.000' AS DateTime), CAST(N'2019-07-05T11:24:45.000' AS DateTime), N'1', N'False', N'12d84a9e-e406-4c31-bb91-f8ce6d890f2d.jpg', N'', N'Page', 0, N'', N'<p> Our general French courses are taught using a communicative and action-oriented approach and our curriculum is structured according to the six-tiered <u> Common European Framework of Reference for Languages </u> (CEFRL), an internationally recognized standard for describing language proficiency, recognised by the French Ministries of Foreign Affairs and of Education.</p>')
GO
INSERT [dbo].[Pages] ([id], [MenuID], [Parent_ID], [Title], [Description], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [FileName], [FileNameAr], [ModuleType], [IsContentDivideTwo], [ContentFileName], [Description2]) VALUES (5, 5, 2, N'PRIVATE TUITIONS', N'<p> Away from the distraction of a busy office or home life, our One-to-One programme gives participants the opportunity to completely immerse themselves in the language, to practise speaking and listening skills over a period of time that they are free to choose, and to substantially improve their communication skills. </p>
                            <p> Private lessons are ideal if you want to <b>progress quickly</b>, or you need to <b>learn specialized French</b> for work or study. We also recommend private lessons if you need to <b>improve a particular skill</b> in general French: conversation, writing, grammar. </p>
                            <p> One-to-one lessons mean you have your <b>teacher''s undivided attention</b> and you can work at your own pace. Private lessons are adapted to <b>focus on your own needs and difficulties</b>. You can decide frequency and duration of lessons at your convenience. The educational supervisor will be happy to discuss with you your specific needs for French language training. Availability of our teachers depends on their schedule, mostly from Sunday to Thursday from 9am to 4:30pm. </p>', CAST(N'2019-07-05T11:25:14.000' AS DateTime), CAST(N'2019-07-05T11:25:14.000' AS DateTime), N'1', N'False', N'796c775c-3da7-46bd-a308-b4ecd025f9e2.jpg', N'', N'Page', 0, N'', N'')
GO
INSERT [dbo].[Pages] ([id], [MenuID], [Parent_ID], [Title], [Description], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [FileName], [FileNameAr], [ModuleType], [IsContentDivideTwo], [ContentFileName], [Description2]) VALUES (6, 6, 2, N'Current session', N'', CAST(N'2019-07-05T11:25:37.000' AS DateTime), CAST(N'2019-07-05T11:25:37.000' AS DateTime), N'1', N'False', N'7ef3466d-87dc-4408-a568-559279c16923.jpg', N'', N'Page', 0, N'', N'')
GO
INSERT [dbo].[Pages] ([id], [MenuID], [Parent_ID], [Title], [Description], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [FileName], [FileNameAr], [ModuleType], [IsContentDivideTwo], [ContentFileName], [Description2]) VALUES (7, 7, 0, N'CULTURAL EVENTS', N'', CAST(N'2019-07-05T11:26:24.000' AS DateTime), CAST(N'2019-07-05T11:26:24.000' AS DateTime), N'1', N'False', N'', N'', N'Page', 0, NULL, NULL)
GO
INSERT [dbo].[Pages] ([id], [MenuID], [Parent_ID], [Title], [Description], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [FileName], [FileNameAr], [ModuleType], [IsContentDivideTwo], [ContentFileName], [Description2]) VALUES (8, 8, 7, N'Upcomming events in muscat', N'', CAST(N'2019-07-05T11:27:00.000' AS DateTime), CAST(N'2019-07-05T11:27:00.000' AS DateTime), N'1', N'False', N'e0da0e3b-6a30-48a7-a0b4-1f9c6e69baa7.jpg', N'', N'Page', 0, N'', N'')
GO
INSERT [dbo].[Pages] ([id], [MenuID], [Parent_ID], [Title], [Description], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [FileName], [FileNameAr], [ModuleType], [IsContentDivideTwo], [ContentFileName], [Description2]) VALUES (9, 9, 0, N'Past events in muscat', N'', CAST(N'2019-07-05T11:27:31.000' AS DateTime), CAST(N'2019-07-05T11:27:31.000' AS DateTime), N'1', N'False', N'2cad0cee-002e-4792-9d8d-5169965c5d12.jpg', N'', N'Page', 0, N'', N'')
GO
INSERT [dbo].[Pages] ([id], [MenuID], [Parent_ID], [Title], [Description], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [FileName], [FileNameAr], [ModuleType], [IsContentDivideTwo], [ContentFileName], [Description2]) VALUES (10, 10, 0, N'TESTS & CERTIFICATES', N'', CAST(N'2019-07-05T11:29:17.000' AS DateTime), CAST(N'2019-07-05T11:29:17.000' AS DateTime), N'1', N'False', N'', N'', N'Page', 0, NULL, NULL)
GO
INSERT [dbo].[Pages] ([id], [MenuID], [Parent_ID], [Title], [Description], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [FileName], [FileNameAr], [ModuleType], [IsContentDivideTwo], [ContentFileName], [Description2]) VALUES (11, 11, 10, N'Presentation', N'<p>
                                    The DELF and DALF are diplomas awarded by the French Ministry of Education to prove the French-language skills of non-French candidates.
                                </p>
                                <p>DELF/DALF diplomas are required for the entry in the Higher Education in France (B2 level) and for application for French citizenship (B1 level).</p>
                                <p>
                                    There are six independent diplomas, which correspond, respectively, to the six levels of the Council of    Europe&#8217;s Common European Framework of Reference for Languages (CEFRL) : A1, A2, B1, B2, C1, C2.
                                </p>
                                <p>
                                    The 6 diplomas that make up DELF and DALF are completely independent. This means that candidates can register  for the examination of their choice, according to their level.
                                </p>
                                <p>
                                    At each level, 4 skills are evaluated: listening, speaking, reading and writing. The examinations were         therefore created to include the four skills at every level, with varying degrees of interaction and mediation required depending on the level. A mark of at least 50/100 is required in order to be awarded the diploma.
                                </p>
                                <p>
                                    Usually, you will receive a certificate one month after the exam, then you will have to wait three months for    the diploma.
                                </p>
                                <p><i>Source :</i><a href="#" class="yellow-link"> http://www.ciep.fr/en/delf-dalf</a></p>', CAST(N'2019-07-05T11:29:50.000' AS DateTime), CAST(N'2019-07-05T11:29:50.000' AS DateTime), N'1', N'False', N'b54fa32b-2da4-489b-adfe-e04d3fc862aa.jpg', N'', N'Page', 0, N'', N'')
GO
INSERT [dbo].[Pages] ([id], [MenuID], [Parent_ID], [Title], [Description], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [FileName], [FileNameAr], [ModuleType], [IsContentDivideTwo], [ContentFileName], [Description2]) VALUES (12, 12, 10, N'Why take the TEF?', N'', CAST(N'2019-07-05T11:30:24.000' AS DateTime), CAST(N'2019-07-05T11:30:24.000' AS DateTime), N'1', N'False', N'e98f417d-a516-4da8-93b9-77af3599df0e.jpg', N'', N'Page', 0, N'', N'')
GO
INSERT [dbo].[Pages] ([id], [MenuID], [Parent_ID], [Title], [Description], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [FileName], [FileNameAr], [ModuleType], [IsContentDivideTwo], [ContentFileName], [Description2]) VALUES (13, 13, 0, N'LIBRARY', N'', CAST(N'2019-07-05T11:31:03.000' AS DateTime), CAST(N'2019-07-05T11:31:03.000' AS DateTime), N'1', N'False', N'54d87cc7-7251-4918-b24f-464ba69101e6.jpg', N'', N'Page', 0, N'', N'')
GO
INSERT [dbo].[Pages] ([id], [MenuID], [Parent_ID], [Title], [Description], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [FileName], [FileNameAr], [ModuleType], [IsContentDivideTwo], [ContentFileName], [Description2]) VALUES (14, 14, 0, N'STUDY IN FRANCE', N'', CAST(N'2019-07-05T11:31:58.000' AS DateTime), CAST(N'2019-07-05T11:31:58.000' AS DateTime), N'1', N'False', N'', N'', N'Page', 0, NULL, NULL)
GO
INSERT [dbo].[Pages] ([id], [MenuID], [Parent_ID], [Title], [Description], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [FileName], [FileNameAr], [ModuleType], [IsContentDivideTwo], [ContentFileName], [Description2]) VALUES (15, 15, 14, N'Campus France', N'<p>
                                        For any information related to studies in a university in France, please do not hesitate to contact us on :
                                        <a href="&#109;&#97;&#105;&#108;&#116;&#111;&#58;&#109;&#97;&#115;&#99;&#97;&#116;&#101;&#64;&#99;&#97;&#109;&#112;&#117;&#115;&#102;&#114;&#97;&#110;&#99;&#101;&#46;&#111;&#114;&#103;" class="yellow-link"> mascate@campusfrance.org</a>
                                    </p>', CAST(N'2019-07-05T11:32:26.000' AS DateTime), CAST(N'2019-07-05T11:32:26.000' AS DateTime), N'1', N'False', N'e4f745d6-8902-4ff4-86a4-899eeb9b8518.jpg', N'', N'Page', 0, N'', N'')
GO
INSERT [dbo].[Pages] ([id], [MenuID], [Parent_ID], [Title], [Description], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [FileName], [FileNameAr], [ModuleType], [IsContentDivideTwo], [ContentFileName], [Description2]) VALUES (16, 16, 14, N'Cavilam', N'<p>
                                        We have established a privileged partnership with Alliance francaise Cavilam Vichy, in the centre of France. Through CFO, CFO students (adults and teenagers) get a 10% discount on the course fees in an immersion program. For more information, do not hesitate to contact us
                                        <a href="&#109;&#97;&#105;&#108;&#116;&#111;&#58;&#105;&#110;&#102;&#111;&#64;&#99;&#102;&#111;&#109;&#97;&#110;&#46;&#111;&#114;&#103;" class="yellow-link"> info@cfoman.org</a>
                                    </p>', CAST(N'2019-07-05T11:32:45.000' AS DateTime), CAST(N'2019-07-05T11:32:45.000' AS DateTime), N'1', N'False', N'92ab9dfc-9ef4-4063-81f3-c1ebfe16074f.jpg', N'', N'Page', 0, N'', N'')
GO
INSERT [dbo].[Pages] ([id], [MenuID], [Parent_ID], [Title], [Description], [Cr_Date], [Mo_Date], [Added_By], [ExtLinkNewWindow], [FileName], [FileNameAr], [ModuleType], [IsContentDivideTwo], [ContentFileName], [Description2]) VALUES (17, 17, 0, N'CONTACT US', N'', CAST(N'2019-07-05T11:33:14.000' AS DateTime), CAST(N'2019-07-05T11:33:14.000' AS DateTime), N'1', N'False', N'7563ba24-9a89-4f03-b46a-f27e4af4e07c.jpg', N'', N'Page', 0, N'', N'')
GO
SET IDENTITY_INSERT [dbo].[Pages] OFF
GO
SET IDENTITY_INSERT [dbo].[Products] ON 
GO
INSERT [dbo].[Products] ([Id], [Title], [Description], [Details], [Sort], [FileName], [IsImageRight], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (6, N'', N'<p>At full factory capacity NGDF is able to supply a full range of HVAC products as listed below. The below are standard HVAC product, however the product ranges was extended to other products based on market demand opportunities.</p>
                            <table style="width:100%" id="">
                                <tbody><tr>
                                    <td><a href="http://gct.om/designer/designer7/html/ngdf/02-01-2018/ceiling-diffusers.html">Ceiling Diffusers</a> </td>
                                    <td><a href="http://gct.om/designer/designer7/html/ngdf/02-01-2018/grilles-registers.html">Grilles and Registers </a></td> 
                                </tr>
                                 <tr>
                                    <td><a href="http://gct.om/designer/designer7/html/ngdf/02-01-2018/linear-bar-grilles.html">Linear Bar Grilles and Registers</a></td>
                                    <td><a href="http://gct.om/designer/designer7/html/ngdf/02-01-2018/vcd-catalog.html">VCD (Volume Control Dampers)</a> </td>
                                </tr>
                                <tr>
                                    <td><a href="http://gct.om/designer/designer7/html/ngdf/02-01-2018/linear-slot-diffusers.html">Linear slot Diffusers</a></td>
                                    <td>Louvers</td>
                                </tr>
                                <tr>
                                    <td>Jet Diffusers </td>
                                    <td>Sand Trap Louvers </td>
                                </tr>
                                <tr>
                                    <td>Decorative Grilels</td>
                                    <td>Disc Valves </td>
                               </tr>
                               <tr>
                                    <td>ECG Grate Grilles</td>
                                    <td>Access Door</td> 
                                </tr>
                                <tr>
                                    <td>Curved Linear Bar Grilles</td>
                                    <td>VAV </td>
                                </tr>
                                <tr>
                                    <td>Round Diffusers </td>
                                    <td>Bypass VAV</td>
                                </tr>
                                <tr>
                                    <td>Curved Linear Slot Diffusers </td>
                                    <td>Fire and Smoke Dampers</td>
                                </tr>
                                <tr>
                                    <td>Door Grilles</td>
                                </tr>
                            </tbody></table>
                            <p>Other products currently manufactured at the factory which not part of the original factory feasibility study and design are exhaust fan covers; pipes duct covers and Aluminum Rolling Shutters. <b> (See Appendix 1 for production catalogues) </b> </p>', N'', 1, N'', 0, N'True', CAST(N'2019-07-01T17:01:03.000' AS DateTime), CAST(N'2019-07-01T17:01:03.000' AS DateTime), N'1')
GO
INSERT [dbo].[Products] ([Id], [Title], [Description], [Details], [Sort], [FileName], [IsImageRight], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (7, N'Exhaust Fans covers', N'<p>Current design of houses leaving open holes for ventilation fan in kitchens, toilets and bathroom which spoils the image of a beautiful house. NGDF came up with innovative product that provides;</p>', N'<ul id="markdown-toc" class="commun-ul">
                                    <li>Better looks</li>
                                    <li>Protects against insects &amp; lizards entry into the house (mesh filter)</li>
                                    <li>Prevents birds nesting on ventilation openings</li>
                                    <li>Products available in all sizes </li>
                                    <li>Easy to install (Just Plug in) </li>
                                    <li>Low cost </li>
                                </ul>', 2, N'2019-7-1-17-2-6fans-cover.jpg', 1, N'True', CAST(N'2019-07-01T17:02:06.000' AS DateTime), CAST(N'2019-07-01T17:02:06.000' AS DateTime), N'1')
GO
INSERT [dbo].[Products] ([Id], [Title], [Description], [Details], [Sort], [FileName], [IsImageRight], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (8, N'Pipe Duct Covers', N'<p>Another innovative product by NGDF is the Aluminum Pipes Duct Cover. Traditionally pipes ducts are left open to look ugly or covered by GRC material which in time cracks and breaks and need to reinvest money to replace. With the easy installation aluminum covers not just gives the house better look, it as well saves money on the long run.</p>', N'<ul id="markdown-toc" class="commun-ul">
                                    <li>Better looks</li>
                                    <li>Protects against insects & lizards entry into the house (mesh filter)</li>
                                    <li>Prevents birds nesting on ventilation openings</li>
                                    <li>Products available in all sizes </li>
                                    <li>Easy to install (Just Plug in) </li>
                                    <li>Low cost </li>
                                </ul>', 3, N'2019-7-1-17-2-52pipe-cover.jpg', 0, N'True', CAST(N'2019-07-01T17:02:52.000' AS DateTime), CAST(N'2019-07-01T17:02:52.000' AS DateTime), N'1')
GO
INSERT [dbo].[Products] ([Id], [Title], [Description], [Details], [Sort], [FileName], [IsImageRight], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (9, N'Rolling Shutters and Sectional Garage Doors', N'<p>The IAAE has been in rolling shutters and sectional garage doors installation business since 
2008. 
Until the end of 2014 IAAE used to import the rolling shutters and sectional doors from 
various parts of the world but mainly from UAE, Turkey and Italy. By 
the end of 2014 with
the 
start of production in the NGDF the IAAE took the opportunity and started manufacturing the 
rolling shutters and sectional doors at the factory utilising the NGDF facilities.</p>', N'', 4, N'', 0, N'True', CAST(N'2019-07-01T17:03:25.000' AS DateTime), CAST(N'2019-07-01T17:05:15.000' AS DateTime), N'1')
GO
INSERT [dbo].[Products] ([Id], [Title], [Description], [Details], [Sort], [FileName], [IsImageRight], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (10, N'', N'<p>Over the years the IAAE was one of the leading suppliers in themarket rolling shutters and sectional doors with customers rangingfor individuals to government firms.Some of our key customers in OmanMOD , ROP , PDO ,PASFR ,Galfar, Carillion, Alturki,Khimji Ramdas, Shapoorji  and STSBelow graph on figure 1.2 showing the IAAE sales of rolling shutters and sectional garage doorssince 2008 and the increased sales volume.</p>', N'', 5, N'2019-7-1-17-4-8scope.jpg', 0, N'True', CAST(N'2019-07-01T17:04:08.000' AS DateTime), CAST(N'2019-07-01T17:04:08.000' AS DateTime), N'1')
GO
INSERT [dbo].[Products] ([Id], [Title], [Description], [Details], [Sort], [FileName], [IsImageRight], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (11, N'Rolling Shutters and Sectional Garage Doors products range', N'<div class="col-md-12"> 
                                <h3>Residential Applications:</h3>
                                <ul id="markdown-toc" class="commun-ul">
                                    <li>Aluminum double skin rolling shutter doors. </li>
                                    <li>Aluminum double skin rolling shutter windows.</li>
                                    <li>Sectional garage doors.</li>
                                </ul>
                            </div>
                            <div class="col-md-12"> 
                                <h3>For the Commercial Applications:</h3>
                                <ul id="markdown-toc" class="commun-ul">
                                    <li>Polycarbonate rolling shutter doors for mall&#8217;s shops. </li>
                                    <li>Rolling shutter doors for the commercial shops and banks.</li>
                                    <li>Rolling shutter doors for the small stores and warehouses.</li>
                                </ul>
                            </div>
                            <div class="col-md-12"> 
                                <h3>For Industrial Applications:</h3>
                                <ul id="markdown-toc" class="commun-ul">
                                    <li>Rolling shutter doors for the big stores and warehouses. </li>
                                    <li>Fire rated doors for the stores.</li>
                                </ul>
                            </div>', N'', 7, N'', 0, N'True', CAST(N'2019-07-01T17:04:55.000' AS DateTime), CAST(N'2019-07-01T17:04:55.000' AS DateTime), N'1')
GO
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
SET IDENTITY_INSERT [dbo].[Projects] ON 
GO
INSERT [dbo].[Projects] ([Id], [ClientName], [Icon], [Sort], [Scope], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (2, N'Ministry of Defense', N'2019-7-1-16-0-20client-logo1.png', 1, N'Supply and installation of 15 Nos Rolling Shutter Doors in MOD Camps ( Murtafaa , Ghala , Wedam Al sahil )', N'True', CAST(N'2019-07-01T16:00:20.000' AS DateTime), CAST(N'2019-07-01T16:00:20.000' AS DateTime), N'1')
GO
INSERT [dbo].[Projects] ([Id], [ClientName], [Icon], [Sort], [Scope], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (3, N'ROP', N'2019-7-1-16-0-36client-logo2.png', 2, N'Supply and installation of 10 Nos Rolling Shutter Doors in CID Camps ( Qurum )', N'True', CAST(N'2019-07-01T16:00:36.000' AS DateTime), CAST(N'2019-07-01T16:00:36.000' AS DateTime), N'1')
GO
INSERT [dbo].[Projects] ([Id], [ClientName], [Icon], [Sort], [Scope], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (4, N'ROP', N'2019-7-1-16-0-55client-logo3.png', 3, N'Supply and installation of 5 Nos Rolling Shutter Doors in Vehicle inspections warehouses', N'True', CAST(N'2019-07-01T16:00:55.000' AS DateTime), CAST(N'2019-07-01T16:00:55.000' AS DateTime), N'1')
GO
INSERT [dbo].[Projects] ([Id], [ClientName], [Icon], [Sort], [Scope], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (5, N'Ministry of Education', N'2019-7-1-16-1-18client-logo4.png', 4, N'Supply and installation of 8 Nos Sectional Garage Doors in Main Parking for Ministry (Airport Heights)', N'True', CAST(N'2019-07-01T16:01:18.000' AS DateTime), CAST(N'2019-07-01T16:01:18.000' AS DateTime), N'1')
GO
INSERT [dbo].[Projects] ([Id], [ClientName], [Icon], [Sort], [Scope], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (6, N'Oman Public Prosecution', N'2019-7-1-16-1-35client-logo5.png', 5, N'Supply and installation of 5 Nos Rolling Shutter Doors in CID Camps ( Qurum )', N'True', CAST(N'2019-07-01T16:01:35.000' AS DateTime), CAST(N'2019-07-01T16:01:35.000' AS DateTime), N'1')
GO
INSERT [dbo].[Projects] ([Id], [ClientName], [Icon], [Sort], [Scope], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (7, N'PDO', N'2019-7-1-16-1-57client-logo1.png', 6, N'Supply and installation of 15 NosRolling Shutter Doors in Different Locations in PDO Sites.', N'True', CAST(N'2019-07-01T16:01:57.000' AS DateTime), CAST(N'2019-07-01T16:01:57.000' AS DateTime), N'1')
GO
INSERT [dbo].[Projects] ([Id], [ClientName], [Icon], [Sort], [Scope], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (8, N'Public Authority for Stores and Food Reserve', N'2019-7-1-16-2-18client-logo2.png', 7, N'Supply and installation of 9 Nos Rolling Shutter Doors in Different Locations', N'True', CAST(N'2019-07-01T16:02:18.000' AS DateTime), CAST(N'2019-07-01T16:02:24.000' AS DateTime), N'1')
GO
INSERT [dbo].[Projects] ([Id], [ClientName], [Icon], [Sort], [Scope], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (9, N'Carrefour Qurum', N'2019-7-1-16-2-42client-logo4.png', 8, N'Supply and installation of 8 Nos Rolling Shutter Doors in Carrefour Receiving Area', N'True', CAST(N'2019-07-01T16:02:42.000' AS DateTime), CAST(N'2019-07-01T16:02:42.000' AS DateTime), N'1')
GO
INSERT [dbo].[Projects] ([Id], [ClientName], [Icon], [Sort], [Scope], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (10, N'Carrefour Qurum', N'2019-7-1-16-3-2client-logo3.png', 9, N'Supply and installation of 15 Nos Polycarbonate Rolling Shutter Doors for Different Shops.', N'True', CAST(N'2019-07-01T16:03:02.000' AS DateTime), CAST(N'2019-07-01T16:03:02.000' AS DateTime), N'1')
GO
INSERT [dbo].[Projects] ([Id], [ClientName], [Icon], [Sort], [Scope], [Active], [Cr_Date], [Mo_Date], [AddedBy]) VALUES (11, N'Carrefour Seeb', N'2019-7-1-16-3-21client-logo5.png', 10, N'Supply and installation of 17 Nos Polycarbonate Rolling Shutter Doors for Different Shops.', N'True', CAST(N'2019-07-01T16:03:21.000' AS DateTime), CAST(N'2019-07-01T16:03:21.000' AS DateTime), N'1')
GO
SET IDENTITY_INSERT [dbo].[Projects] OFF
GO
SET IDENTITY_INSERT [dbo].[Section] ON 
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (4, 3, N'', N'', N'<h3><span class="blue">Loustics (aged 6-8)</span> In order to follow a 6-8 years old rhythm, our session is: </h3>
                                <p>Afterschool, twice 60 minutes per week &#8226; 9 weeks &#8226; 18 hours long &#8226; 12 students max </p>
                                <p>Loustics&#8217; classes introduce kids to French language through hands-on, age appropriate activities including        stories, creative mini-projects, songs and fun educational games in order to increase your child&#8217;s French spoken    expression and comprehension. Kids are encouraged to interact in French during the class through numerous     activities. Our curriculum based on colourful and imaginative books is taught in French by our teachers. Our     multi-sensory approach promotes a gentle immersion experience in small classes that allow your child to seamlessly become familiar with oral French. Kids will learn to understand and use simple instructions, basic phrases and     vocabulary. </p>
                                <p>The Loustics curriculum consists of different consecutive modules for beginner level: Loustics 1, 2. </p>
                                <p>
                                    <ul class="list">
                                        <li>Complete beginners aged 6-8 years old (students who have never learnt French before) can enrol directly in  Loustics 1.1. </li>
                                        <li>Children who are new to the CFO but have previous exposure to the French language will be placed in the                         right level by one of our French teachers after taking a quick placement test. </li>
                                    </ul>
                                </p>
                                <p>For any further details, please contact us through <u><a href="#">this form</a></u>, by e-mail at <a href="#">info@cfoman.org</a> or by phone at 24 69 75 79. </p>
                                <p>After filling our preregistration online, you are welcome to come to our reception with a copy of your ID and the                total amount of the course (only cash accepted). </p>
                                <p>When registering for the first time, 15 OMR will apply (non-refundable). Please, note that tuition fees do not      include the price of the books. </p>', 1, N'', N'', 0, 1, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (5, 3, N'', N'', N'<h3><span class="blue">TipTop (aged 9-11)</span> In order to follow a 9-11 years old rhythm, our session is: </h3>
                                <p>Afterschool, twice 75 minutes per week &#8226; 9 weeks &#8226; 22.5 hours long &#8226; 14 students max </p>
                                <p>Enrol your child in a new language and boost their scholastic performance in French with one of our kids&#8217; courses! Our multidisciplinary approach encourages interactions in French with role playing everyday tasks to awaken kids&#8217; interest and imaginations. Our courses focus on developing oral communication, including both listening comprehension and speaking skills. Kids will additionally build a solid foundation in reading and writing in French at a beginner and intermediate level while learning strategies to become a more independent foreign language learner. </p>
                                <p>The TipTop curriculum consists of consecutive tiers from beginner to elementary levels: TipTop 1, 2, 3. </p>
                                <p>
                                    <ul class="list">
                                        <li>Complete beginners aged 9-11 years old (students who have never learnt French before) can enrol directly    in Tip Top 1.1. </li>
                                        <li>Children who are new to the CFO but have previous exposure to the French language will be placed in    the right level by one of our French teachers after taking a quick placement test. </li>
                                    </ul>
                                </p>
                                <p>For any further details, please contact us through <u><a href="#">this form </a></u>, by e-mail at <a href="#">info@cfoman.org</a> or by phone at 24 69 75 79. </p>
                                <p>After filling our preregistration online, you are welcome to come to our reception with a copy of your ID and the   total amount of the course (only cash accepted). </p>
                                <p>When registering for the first time, 15 OMR will apply (non-refundable). Please, note that tuition fees do not     include the price of the books. </p>', 2, N'', N'', 0, 1, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (6, 3, N'', N'', N'<h3><span class="blue">Adosph&#232;re (aged 12-16)</span> In order to follow a 12-16 years old rhythm, our session is: </h3>
                                <p>Afterschool, twice 90 minutes per week &#8226; 9 weeks &#8226; 27 hours long &#8226; 14 students max </p>
                                <p>Enrol your child in a new language and boost their scholastic performance in French with one of our teenagers&#8217;      courses! Our multidisciplinary approach encourages interactions in French with role playing everyday tasks to      awaken teenagers&#8217; interest and imaginations. Our courses focus on developing oral communication, including both        listening comprehension and speaking skills. Teenagers will additionally build a solid foundation in reading and                writing in French at a beginner and intermediate level while learning strategies to become a more independent      foreign language learner. </p>
                                <p>The Adosph&#232;re curriculum integrates preparation for the DELF JUNIOR exams. </p>
                                <p>
                                    <ul class="list">
                                        <li>Complete beginners aged 12-16 years old (students who have never learnt French before) can enrol directly   in Adosph&#232;re 1.1. </li>
                                        <li>Teenagers who are new to the CFO but have previous exposure to the French language will be placed in the   right level by one of our French teachers after taking a quick placement test. </li>
                                    </ul>
                                </p>
                                <p>For any further details, please contact us through <u><a href="#">this form</u></a>, by e-mail at <a href="#">info@cfoman.org</a> or by phone at 24 69 75 79. </p>
                                <p>After filling our preregistration online, you are welcome to come to our reception with a copy of your ID and the  total amount of the course (only cash accepted). </p>
                                <p>When registering for the first time, 15 OMR will apply (non-refundable). Please, note that tuition fees do not include the price of the books. </p>', 3, N'', N'', 0, 1, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (7, 4, N'', N'', N'<p>The CFO follows the <b>Common European Framework of Reference for Languages</b> (CEFRL) and its different language levels (A1, A2, B1, B2, C1, C2) with a recommended number of learning hours.</p>
                                        <ul class="list-inline">
                                            <li>
                                                <h4>A1 Beginner</h4>
                                                (100/120h)
                                            </li>
                                            <li>
                                                <h4>A2 Elementary</h4>
                                                (+120/150h)
                                            </li>
                                            <li>
                                                <h4>B1 Intermediate</h4>
                                                (+180/220h)
                                            </li>
                                            <li>
                                                <h4>B2 Upper intermediate</h4>
                                                (+180/220h)
                                            </li>
                                            <li>
                                                <h4>C1 Advanced</h4>
                                                (+200/220h)
                                            </li>
                                            <li>
                                                <h4>C2 Mastery </h4>
                                                (+200/220h)
                                            </li>
                                        </ul>', 1, N'', N'', 0, 1, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (8, 4, N'', N'', N'<p>Speak French from day one! Build a solid foundation in French with our comprehensive methods designed for French as a foreign language students. The full beginner A1 level programme can be achieved within 3 sessions. You choose the pace: twice or 3 times a week!</p>
                                    <p>You are only available once a week? You want to add an extra class? Check our language workshops!</p>
                                    <p>The adults curriculum consists of different consecutive modules for all levels: Totem 1, 2, 3, Alter Ego +4.</p>
                                    <p><b>Complete beginners</b> (adults who have never learnt French before) can enrol directly in Totem 1.1.</p>
                                    <p><b>Adults who are new to the CFO but have previous exposure to the French language</b> will be placed in the right level by one of our French teachers after taking a quick placement test.</p>
                                    <p>For any further details, please <b>contact us</b> through this form, by e-mail at <a href="&#109;&#97;&#105;&#108;&#116;&#111;&#58;&#105;&#110;&#102;&#111;&#64;&#99;&#102;&#111;&#109;&#97;&#110;&#46;&#111;&#114;&#103;" class="yellow-link">info@cfoman.org</a> or by phone at <b>24 69 75 79</b>.</p>
                                    <p>After filling our preregistration online, you are welcome to come to our reception with a copy of your ID and the total amount of the course (only cash accepted).</p>
                                    <p>When registering for the first time, 15 OMR will apply (non-refundable). Please, note that tuition fees do not include the price of the books.</p>', 2, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (9, 4, N'Workshops', N'<div class="col-sm-6">
                                    <h4>Talisman Bris&#233; - A1.3 & A2.1 levels &#8211; 12 hours</h4>
                                    <p>Come follow a police plot! And learn French with Kwame to save Professor Omar!</p>
                                    <p>Each lesson, you will:</p>
                                    <ul>
                                        <li>-Listen to a new episode of the story</li>
                                        <li>-Talk about that in French</li>
                                        <li>-Revise a French grammar point</li>
                                        <li>-Do some exercises</li>
                                        <li>-Practice with fun activities!</li>
                                    </ul>
                                    <p>Then&#8230; Come to save Professor Omar thanks to French!!!</p>
                                </div>
                                <div class="col-sm-6">
                                    <h4>Phonetics & pronunciation - A1 level in progress - 12 hours</h4>
                                    <p>Through oral exercises, you will improve your listening and speaking skills and get more familiar with the sound of French. Learn how to avoid the most common mistakes, why you do not write as you speak and prevent people from misunderstanding you when talking in French.</p>
                                    <p><i>Vous souhaitez am&#233;liorer votre prononciation et parler comme un Fran&#231;ais ? Essayez cet atelier !</i></p>
                                </div>', N'<p>To develop your skills, you might also want to add a workshop to your general course. The following workshops are generally offered during our sessions. Try them!</p>', 3, N'', N'', 1, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (10, 4, N'', N'', N'<h4>Oral and written grammar - A2 - 12 hours</h4>
                            <p>Write smoothly and gain confidence in French grammar! Solidify your knowledge of grammar skills in everyday life. In these workshops you will practice and deepen your knowledge of grammar in context, reinforcing key concepts and structures through real-world tasks and interactions. This workshop is designed to match the needs of the students in class and are the ideal complement to a general French language class.</p>
                            <p>A2: place of adjectives, the use of articles, tenses, pronouns, etc</p>', 4, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (12, 4, N'', N'', N'<h4>Focus on speaking - A2 - 12 hours</h4>
                            <p>For those who wish to develop their listening and conversational skills and strategies. Equip yourself with more vocabulary through role plays, talks and presentations. You have a hobby, a passion, a little something that means a lot to you? Talk about them in French as you will be the one to choose the theme of the class! This workshop will give you opportunities to practice and develop what you already know in authentic situational exercises and will introduce you to the structure and use of the French language in everyday life.</p>', 5, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (13, 4, N'', N'', N'<h4>La France, sa culture et ses r&#233;gions B1 & B2 levels - 12 hours</h4>
                            <p>Discover one of the French regions through interesting and unique facts. This is a perfect opportunity to deepen your knowledge about specificities that make France so diverse! Through historical changes, cultural habits or culinary specialties, come and broaden your vision about France.</p>', 6, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (14, 4, N'', N'', N'<h4>Atelier Francophiles B2 level achieved - 12 hours</h4>
                            <p> Come discuss any society topic complemented with a cultural and francophone perspectives! This workshop is perfect for all those who spent time in a French environment and who are happy to know more about a country through its cultural and artistic life, its famous characters or its "patrimoine"!</p>', 7, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (15, 5, N'', N'', N'<p class="table-title blue">Fees per package:</p>
                                <div class="table-responsive">
                                    <table width="100%" class="fee-packages table-bordered">
                                        <tr>
                                            <th>&nbsp;</th>
                                            <th>10 hours</th>
                                            <th>5 hours</th>
                                        </tr>
                                        <tr>
                                            <td>1 student</td>
                                            <td>200 OMR*</td>
                                            <td>110 OMR</td>
                                        </tr>
                                        <tr>
                                            <td>2 students</td>
                                            <td>280 OMR</td>
                                            <td>-</td>
                                        </tr>
                                        <tr>
                                            <td>3/4 students</td>
                                            <td>330 OMR</td>
                                            <td>-</td>
                                        </tr>
                                    </table>
                                </div>
                                <p> <i> *Second package will have a cost of 180 OMR. For home-based classes, extra charge will apply    depending on the area. For other specific tuitions, please, contact our reception. </i></p>
                                </p>', 1, N'', N'', 0, 1, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (16, 5, N'', N'', N'<p>To register, please download and fill in the document below and deposit it at our reception with the    full amount of the course in cash.</p>
                            <p><a href="" class="yellow-link">Download [612.06 KB]</a></p>', 2, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (17, 6, N'', N'', N'<p> POSTED ON </p>
                                <p> <u>30 MAY 2018</u> </p>
                                <h3 class="blue"><b>Summer session 2018 (July 1st to August 16th)</b></h3>
                                <p> Registration period: from May 30th </p>
                                <p> First registration fee to CFO: 15 OMR </p>
                                <p> <b>Book fee:</b> 20 OMR for adults ; 15 OMR for kids and teenagers. Books are valid for 3 sessions. </p>
                                <p>Courses for kids (9+ years old)</p>
                                <p> <b>Book fee:</b> 20 OMR for adults ; 15 OMR for kids and teenagers. Books are valid for 3 sessions. </p>', 1, N'', N'', 0, 1, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (18, 6, N'', N'', N'<p class="table-title blue">Courses for kids (9+ years old)</p>
                            <div class="table-responsive">
                                <table width="100%" class="fee-packages table-bordered">
                                    <tr>
                                        <th>Course level</th>
                                        <th>Days</th>
                                        <th>Class begins at</th>
                                        <th>Class ends at</th>
                                        <th>Course starts on</th>
                                        <th>Course ends on</th>
                                        <th>Number of hours</th>
                                        <th>Fees</th>
                                    </tr>
                                    <tr>
                                        <td>Tip Top 1.1</td>
                                        <td>S, M, Tu, W, Th</td>
                                        <td>10am</td>
                                        <td>12:45pm</td>
                                        <td>01/07/2018</td>
                                        <td>11/07/2018</td>
                                        <td>22,5</td>
                                        <td>70</td>
                                    </tr>
                                </table>
                            </div>', 2, N'', N'', 0, 1, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (19, 6, N'', N'', N'<p class="table-title blue">
                            Courses for kids (9+ years old)
                            <div>Summer camp for kids (6-12 years old)</div>
                        </p>
<div class="table-responsive">
<table width="100%" class="fee-packages table-bordered">
     <tbody>
         <tr>
             <th>Course level</th>
             <th>Days</th>
             <th>Class begins at</th>
             <th>Class ends at</th>
             <th>Course starts on</th>
             <th>Course ends on</th>
             <th>Number of hours</th>
             <th>Fees</th>
         </tr>
         <tr>
             <td>Playful and creative activities &#8211; immersion in French</td>
             <td>S, M, Tu, W, Th</td>
             <td>10am</td>
             <td>1pm</td>
             <td>01/07/2018</td>
             <td>12/07/2018</td>
             <td>30</td>
             <td>105</td>
         </tr>
         <tr>
             <td>&nbsp;</td>
             <td>S, M, Tu, W, Th</td>
             <td>10am</td>
             <td>1pm</td>
             <td>15/07/2018</td>
             <td>26/07/2018</td>
             <td>30</td>
             <td>105</td>
         </tr>
     </tbody>
</table>
</div>', 4, N'', N'', 0, 1, N'&nbsp;&nbsp;&nbsp;', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (21, 6, N'', N'', N'<p>
Courses for teenagers (12+ years old)
</p>
<div><b>Book fee:</b> 20 OMR for adults ; 15 OMR for kids and teenagers. Books are valid for 3 sessions.</div>', 3, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (22, 6, N'', N'', N'<p>
Courses for teenagers (12+ years old)
</p>
<div><b>Book fee:</b> 20 OMR for adults ; 15 OMR for kids and teenagers. Books are valid for 3 sessions.</div>
<p>
Courses for kids (9+ years old)
</p>
<div>Summer camp for kids (6-12 years old)</div>', 5, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (23, 6, N'', N'', N'<p class="table-title blue">Courses for teenagers (12+ years old)</p>
                    <div class="table-responsive">
                        <table width="100%" class="fee-packages table-bordered">
                            <tbody><tr>
                                <th>Course level</th>
                                <th>Days</th>
                                <th>Class begins at</th>
                                <th>Class ends at</th>
                                <th>Course starts on</th>
                                <th>Course ends on</th>
                                <th>Number of hours</th>
                                <th>Fees</th>
                            </tr>
                            <tr>
                                <td>Adosph&#232;re 1.1</td>
                                <td>S, M, Tu, W</td>
                                <td>5pm</td>
                                <td>6:45pm</td>
                                <td>01/07/2018</td>
                                <td>25/07/2018</td>
                                <td>27</td>
                                <td>80</td>
                            </tr>
                        </tbody></table>
                    </div>', 6, N'', N'', 0, 1, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (24, 6, N'', N'', N'<p>
Courses for adults
</p>
<div><b>Book fee:</b> 20 OMR for adults ; 15 OMR for kids and teenagers. Books are valid for 3 sessions.</div>
<p>
Courses for kids (9+ years old)
</p>
<div>Summer camp for kids (6-12 years old)</div>
<p>Courses for teenagers (12+ years old)</p>', 7, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (25, 6, N'', N'', N'<p class="table-title blue">Courses for adults</p>
<div class="table-responsive">
<table width="100%" class="fee-packages table-bordered">
     <tbody>
         <tr>
             <th>Course level</th>
             <th>Days</th>
             <th>Class begins at</th>
             <th>Class ends at</th>
             <th>Course starts on</th>
             <th>Course ends on</th>
             <th>Number of hours</th>
             <th>Fees</th>
         </tr>
         <tr>
             <td>A1.1 GC at Gulf College Mabeela morning time</td>
             <td>S, M, Tu, W</td>
             <td>11am</td>
             <td>1pm</td>
             <td>01/07/2018</td>
             <td>30/07/2018</td>
             <td>36</td>
             <td>90</td>
         </tr>
         <tr>
             <td>A1.1-A</td>
             <td>S, M, Tu, W</td>
             <td>4:45pm</td>
             <td>6:45pm</td>
             <td>01/07/2018</td>
             <td>30/07/2018</td>
             <td>36</td>
             <td>90</td>
         </tr>
         <tr>
             <td>A1.1-B</td>
             <td>S, M, Tu, W</td>
             <td>7pm</td>
             <td>9pm</td>
             <td>01/07/2018</td>
             <td>30/07/2018</td>
             <td>36</td>
             <td>90</td>
         </tr>
         <tr>
             <td>A1.1 GCB at Gulf College Mabeela</td>
             <td>S, M, Tu, W</td>
             <td>5pm</td>
             <td>7pm</td>
             <td>01/07/2018</td>
             <td>30/07/2018</td>
             <td>36</td>
             <td>90</td>
         </tr>
         <tr>
             <td>A1.1-D</td>
             <td>M, Tu, W</td>
             <td>4:45pm</td>
             <td>6:45pm</td>
             <td>09/07/2018</td>
             <td>15/08/2018</td>
             <td>36</td>
             <td>90</td>
         </tr>
         <tr>
             <td>A1.2-A</td>
             <td>S, M, Tu, W</td>
             <td>4:45pm</td>
             <td>6:45pm</td>
             <td>01/07/2018</td>
             <td>30/07/2018</td>
             <td>36</td>
             <td>90</td>
         </tr>
         <tr>
             <td>A1.3-B</td>
             <td>S, M, Tu, W</td>
             <td>7pm</td>
             <td>9pm</td>
             <td>01/07/2018</td>
             <td>30/07/2018</td>
             <td>36</td>
             <td>90</td>
         </tr>
         <tr>
             <td>A2.1-B</td>
             <td>S, M, Tu, W</td>
             <td>7pm</td>
             <td>9pm</td>
             <td>01/07/2018</td>
             <td>30/07/2018</td>
             <td>36</td>
             <td>90</td>
         </tr>
     </tbody>
</table>
</div>', 8, N'', N'', 0, 1, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (26, 6, N'', N'', N'<p>
Workshops for adults
</p>
<div><b>Book fee:</b> 20 OMR for adults ; 15 OMR for kids and teenagers. Books are valid for 3 sessions.</div>
<p>
Courses for kids (9+ years old)
</p>
<div>Summer camp for kids (6-12 years old)</div>
<p>Courses for teenagers (12+ years old)</p>
<p>Courses for adults</p>', 9, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (27, 6, N'', N'', N'<p class="table-title blue">Workshops for adults</p>
            <div class="table-responsive">
                <table width="100%" class="fee-packages table-bordered">
                    <tr>
                        <th>Course level</th>
                        <th>Days</th>
                        <th>Class begins at</th>
                        <th>Class ends at</th>
                        <th>Course starts on</th>
                        <th>Course ends on</th>
                        <th>Number of hours</th>
                        <th>Fees</th>
                    </tr>
                    <tr>
                        <td>A1 oral & written practice</td>
                        <td>M & W</td>
                        <td>7pm</td>
                        <td>8:30pm</td>
                        <td>02/07/2018</td>
                        <td>25/07/2018</td>
                        <td>12</td>
                        <td>50</td>
                    </tr>
                    <tr>
                        <td>A1-A2 grammar reinforcement</td>
                        <td>M, Tu & W</td>
                        <td>5pm</td>
                        <td>6:30pm</td>
                        <td>02/07/2018</td>
                        <td>31/07/2018</td>
                        <td>21</td>
                        <td>80</td>
                    </tr>
                    <tr>
                        <td>A2 focus on listening, grammar and writing</td>
                        <td>M & W</td>
                        <td>5pm</td>
                        <td>7pm</td>
                        <td>02/07/2018</td>
                        <td>08/08/2018</td>
                        <td>20</td>
                        <td>80</td>
                    </tr>
                    <tr>
                        <td>B1/B2 oral & written practice workshop</td>
                        <td>S & Tu</td>
                        <td>5pm</td>
                        <td>7pm</td>
                        <td>08/07/2018</td>
                        <td>14/08/2018</td>
                        <td>20</td>
                        <td>80</td>
                    </tr>
                    <tr>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                    <tr>
                        <td>Special A1 level for OTC & SQU students (no beginners) at Gulf College Mabeela</td>
                        <td>M, Tu & W</td>
                        <td>7pm</td>
                        <td>8:30pm</td>
                        <td>02/07/2018</td>
                        <td>31/07/2018</td>
                        <td>20</td>
                        <td>50</td>
                    </tr>
                    <tr>
                        <td>Special A2/B1 workshop for Nizwa students &#8211; focus on writing</td>
                        <td>M & W</td>
                        <td>3pm</td>
                        <td>5pm</td>
                        <td>02/07/2018</td>
                        <td>30/07/2018</td>
                        <td>18</td>
                        <td>35</td>
                    </tr>
                </table>
            </div>', 10, N'', N'', 0, 1, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (28, 6, N'', N'', N'<p> <b>Contact us: </b><!--<a href="#"--> info@cfoman.org, 24 69 75 79 </p>', 11, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (29, 13, N'', N'', N'<p> <b>Working hours :</b></p>
                                        <ul class="list-inline">
                                            <li>
                                                <h4>Sunday to Thursday </h4>
                                                9am-1pm and 2pm-7:00pm
                                            </li>
                                        </ul>', 1, N'', N'', 0, 1, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (30, 13, N'Services', N'<div class="col-sm-4">
                                    <h4>Subscription: </h4>
                                    <p>General public 20 OMR for 1 year &#8211; CFO students: free for the duration of the session</p>
                                </div>
                                <div class="col-sm-4">
                                    <h4>Check-out:</h4>
                                    <p>5 books maximum</p>
                                </div>
                                <div class="col-sm-4">
                                    <h4>Duration:</h4>
                                    <p>3 weeks maximum</p>
                                </div>', N'<p>
                                        The library offers a large choice of books for adults and children. Novels, children literature, documentaries and magazines are available to check-out or to read on-site. Some computers are also available for web surfing.
                                        The registration process are below:
                                    </p>', 2, N'', N'', 1, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (31, 13, N'Student library', N'', N'<p>
                                    Come and discover our novelties to learn French.
                                </p>
                                <p>You will find many books available according to your level of French. Whether you are beginner, intermediate or advanced, you will find easy French books and tools to help you in your learning process.</p>', 3, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (32, 13, N'Books kit for schools', N'', N'<p>Books can be loaned to schools where French is tought to give students the opportunity to read in French, and the teacher to work with the same title distributed in several copies in the classroom. Find below information about of these kits and contact us to borrow them.</p>
                                <p>Contact :  &nbsp;<a href="#" class="yellow-link">mediatheque@cfoman.org</a></p>', 4, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (33, 13, N'Culturetheque', N'', N'<p>
                                    If you suscribed to the library, you can also access Culturetheque, the online library of the French Institute. You&#8217;ll be free to enjoy e-books, newspapers, magazines or vidfeos from wherever you&#8217;ll be connected. To discover the website, click on :
                                </p>
                                <p>Link to Cultureth&#232;que :  &nbsp;<a href="http://www.culturetheque.com" class="yellow-link" target="_blank">www.culturetheque.com</a></p>
                                <p>Contact : &nbsp;<a href="#" class="yellow-link">mediatheque@cfoman.org</a></p>', 5, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (34, 11, N'', N'', N'<p class="table-title blue">Fees and registration procedure</p>
                                <div class="table-responsive registration-table">
                                    <table width="100%" class="fee-packages table-bordered">
                                        <tr>
                                            <th></th>
                                            <th>A1.1</th>
                                            <th>A1</th>
                                            <th>A2</th>
                                            <th>B1</th>
                                            <th>B2</th>
                                            <th>DALF C1</th>
                                            <th>DALF C2</th>
                                        </tr>
                                        <tr>
                                            <td><div><b>DELF PRIM</b></div> Children (7 to 11 years old)</td>
                                            <td class="alignment">35 OMR</td>
                                            <td class="alignment">35 OMR</td>
                                            <td class="alignment">35 OMR</td>
                                            <td class="alignment">---</td>
                                            <td class="alignment">---</td>
                                            <td class="alignment">---</td>
                                            <td class="alignment">---</td>
                                        </tr>
                                        <tr>
                                            <td><span style="display:block;"><b>DELF JUNIOR</b></span> <div>(Adolescents from 12 to 17 years old)</span><div>&#8211; CFO students</span><span style="display:block;">&#8211; Others</span></td>
                                            <td class="alignment"><div>---</div>---</td>
                                            <td class="alignment"><div>30 OMR</div>40 OMR</td>
                                            <td class="alignment"><div>30 OMR</div>40 OMR</td>
                                            <td class="alignment"><div>35 OMR</div>45 OMR</td>
                                            <td class="alignment"><div>35 OMR</div>45 OMR</td>
                                            <td class="alignment"><div>---</div>---</td>
                                            <td class="alignment"><div>---</div>---</td>
                                        </tr>
                                        <tr>
                                            <td><span style="display:block;"><b>DELF TOUT PUBLIC</b></span> <div>(Adults)</span><div>&#8211; CFO students</span><span style="display:block;">&#8211; Others</span></td>
                                            <td class="alignment"><div>---</div>---</td>
                                            <td class="alignment"><div>30 OMR</div>40 OMR</td>
                                            <td class="alignment"><div>30 OMR</div>40 OMR</td>
                                            <td class="alignment"><div>40 OMR</div>50 OMR</td>
                                            <td class="alignment"><div>40 OMR</div>50 OMR</td>
                                            <td class="alignment"><div>50 OMR</div>60 OMR</td>
                                            <td class="alignment"><div>50 OMR</div>60 OMR</td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            </p>
                            <p>
                                At each level, 4 skills are evaluated: listening, speaking, reading and writing. The examinations were therefore created to include the four skills at every level, with varying degrees of interaction and mediation required depending on the level. A mark of at least 50/100 is required in order to be awarded the diploma.
                            </p>
                            <p>
                                Usually, you will receive a certificate one month after the exam, then you will have to wait three months for the diploma.
                            </p>
                            <p><i>Source :</i><a href="#" class="yellow-link">  http://www.ciep.fr/en/delf-dalf</a></p>
                            <div class="white-box-left mt-20">
                                <h3 class="blue"><b>Fees and registration procedure</b></h3>
                                <p>
                                    To register, please come to the Centre Franco-Omanais reception in Mascate <u>with your <b>passport</b> or your <b>ID.</b></u> You will have to <u><b>fill and sign the registration form</b></u> (you can also download it below) and pay the fees. Only <b>cash</b> is accepted.
                                </p>
                                <p>
                                    <b>One week before the exam,</b> you will receive by email an <b>examination notification</b> which specify the details about the exams schedules.
                                </p>
                                <p><a href="" class="yellow-link"><u>Download [101.23 KB]</u></a></p>
                            </div>
                        </div>
                    </div>
                </div>', 1, N'', N'', 0, 1, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (35, 12, N'', N'', N'<ul>
     <li>To study in France (TEF &#201;tudes)</li>
     <li>To obtain French citizenship (TEF Naturalisation)</li>
     <li>To obtain a resident card (TEF Carte de r&#233;sident)</li>
     <li>To emigrate to Canada and obtain Canadian citizenship (TEF Canada)</li>
     <li>To emigrate to Quebec (TEF Qu&#233;bec &#8211; TEFAQ)</li>
     <li>To certify your level of French proficiency in a professional context, to assess candidates&#8217; proficiency in French in a recruitment context, to position students in a training or study abroad context, etc.</li>
</ul>', 1, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (36, 12, N'TEF, what is it?', N'', N'<p class="mt-30"> The TEF exam takes a picture of your level in each of the evaluated skills, on the very day of the exam. There are different versions of the TEF (General Training, Higher Education in France, French nationality, Immigration purposes towards Canada, or Quebec). Each of them have their own specificities. </p>', 2, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (37, 12, N'', N'', N'<p class="table-title blue">What TEF should I register for?</p>
                                <div class="table-responsive">
                                    <table width="100%" class="fee-packages table-bordered">
                                        <tr>
                                            <th>TEF</th>
                                            <th>TEF naturalisation</th>
                                            <th>TEF Canada</th>
                                            <th>
                                                TEFAQ
                                                <div>(TEF Qu&#233;bec)</div>
                                            </th>
                                        </tr>
                                        <tr>
                                            <td>Academic and General purposes</td>
                                            <td>Citizenship application</td>
                                            <td>Immigration application to Canada or Quebec</td>
                                            <td>Immigration application to Quebec <u>only</u></td>
                                        </tr>
                                        <tr>
                                            <th colspan="4">Compulsory sections</th>
                                        </tr>
                                        <tr>
                                            <td>Listening / Reading / Grammar / Writing</td>
                                            <td>Listening / Speaking</td>
                                            <td>Listening / Reading / Writing / Speaking</td>
                                            <td>Listening / Speaking <u>Optional parts</u> Reading / Writing</td>
                                        </tr>
                                    </table>
                                </div>', 3, N'', N'', 0, 1, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (38, 12, N'', N'', N'<p class="table-title blue">How is it organized?</p>
                                <div class="table-responsive">
                                    <table width="100%" class="fee-packages table-bordered">
                                        <tr>
                                            <th>Reading</th>
                                            <th>Writing</th>
                                            <th>Grammar</th>
                                            <th>Listening</th>
                                            <th>Speaking</th>
                                        </tr>
                                        <tr>
                                            <td>50 questions</td>
                                            <td>2 subjects required</td>
                                            <td>40 questions</td>
                                            <td>60 questions</td>
                                            <td>2 subjects required</td>
                                        </tr>
                                        <tr>
                                            <td>Understand written documents (overall or detailed understanding)</td>
                                            <td>Write the sequel of an anecdote; express and justify your point of view about a general topic.</td>
                                            <td>Use vocabulary and grammar structures in a correct and adequate manner.</td>
                                            <td>Understand spoken French from different French-speaking areas (overall or detailed understanding)</td>
                                            <td>Obtain information about a service; argue to convince someone to do something.</td>
                                        </tr>
                                        <tr>
                                            <td>Posters, signs, boards, mail, press articles</td>
                                            <td>The beginning of a press article, of an argumentative statement.</td>
                                            <td>Gapped sentences and press articles.</td>
                                            <td>Messages left on a voicemail service, public announcements, street interviews, radio excerpts &#8230;</td>
                                            <td>Advertisements, little ads, prospectus</td>
                                        </tr>
                                    </table>
                                </div>', 4, N'', N'', 0, 1, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (39, 12, N'How is my level evaluated?', N'', N'<h3 class="blue mt-30"><b>The CEFR and the CLB</b></h3>
                            <p>After your Speaking exam, you will be evaluated on a scale of six levels. They go from A1 (elementary abilities in the target language) to C2 (full mastery). This scale refers to the six levels of the CEFRL (Common European Framework of Reference for Languages, in French: CECRL) of the Council of Europe. Here is a summed up version for each of these levels. </p>', 5, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (40, 12, N'', N'', N'<p class="table-title purple">Common European Framework</p>
                                <div class="table-responsive">
                                    <table width="100%" class="fee-packages table-bordered tef-table">
                                        <tr>
                                            <th>Levels - CEF</th>
                                            <th>Listening / Speaking</th>
                                            <th>Reading</th>
                                            <th>Writing</th>
                                        </tr>
                                        <tr class="tef-bg-light">
                                            <td>
                                                <div class="tef-textalign">A1</div>
                                                Beginners
                                            </td>
                                            <td>Can understand basic instructions or take part in a basic factual conversation on a predictable topic.</td>
                                            <td>Can understand basic notices, instructions or information.</td>
                                            <td>Can complete basic forms, and write notes including times, dates and places</td>
                                        </tr>
                                        <tr class="tef-bg-white">
                                            <td>
                                                <div class="tef-textalign">A2</div>
                                                Pre-Intermediate
                                            </td>
                                            <td>Can express simple opinions or requirements in a familiar context.</td>
                                            <td>Can understand straightforward information within a known area, such as simple textbools or reports on familiar matters.</td>
                                            <td>Can complete forms and write short simple letters or postcards releted to personal information.</td>
                                        </tr>
                                        <tr class="tef-bg-light">
                                            <td>
                                                <div class="tef-textalign">B1</div>
                                                Intermediate
                                            </td>
                                            <td>Can understand the main points of familiar matters, with enough language to get by in everyday situations.</td>
                                            <td>Can understand non-complex, routine information and articles.</td>
                                            <td>Can write simple letters/texts on familiar topics with reasonable accuracy and express personal ideas and opinions. </td>
                                        </tr>
                                        <tr class="tef-bg-white">
                                            <td>
                                                <div class="tef-textalign">B2</div>
                                                Higher-Intermediate
                                            </td>
                                            <td>Can understand and express ideas with some fluency and reasonable accuracy in everyday contexts.</td>
                                            <td>Can understand the general meaning of non-routine information within familiar areas.</td>
                                            <td>Can produce longer texts, with pragraphs using range of structure with a fair degree of accuracy.</td>
                                        </tr>
                                        <tr class="tef-bg-light">
                                            <td>
                                                <div class="tef-textalign">B2+</div>
                                                Higher Int. Plus
                                            </td>
                                            <td>Can understand and express opinions on abstract/cultural matters in a limited way or offer advice within a known area and understand instructions or public announcements.</td>
                                            <td>Can understand the main ideas of a complex on both concrete and abstract topics.</td>
                                            <td>Can produce clear, detailed text on a wide range of subjects and give advantages and disadvantages of various options. </td>
                                        </tr>
                                        <tr class="tef-bg-light">
                                            <td>
                                                <div class="tef-textalign">C1</div>
                                                Advanced
                                            </td>
                                            <td>Can understand and express feelings,opinions and ideas with sufficient clarity to work in an English-speaking environment.</td>
                                            <td>Can scan texts for relevent information and understand detailed instructions or advice.</td>
                                            <td>Can make reasonably clear notes while someone is talking or write a letter including non-standard requests.</td>
                                        </tr>
                                        <tr class="tef-bg-white">
                                            <td>
                                                <div class="tef-textalign">C1+</div>
                                                Advanced Plus
                                            </td>
                                            <td>Can contribute effectivelt to meetings and seminars within own area of work and keep up a casual conversation with a good degree of fluency, coping with abstract expressions.</td>
                                            <td>Can read quickly enough to cope with an acadamic course, read various media for informaion and understand non-standard correspondence.</td>
                                            <td>Can prepare/draft professional correpondence, take accurate notes in meetings or write essay which shows a highly effective ability to communicate.</td>
                                        </tr>
                                        <tr class="tef-bg-white">
                                            <td>
                                                <div class="tef-textalign">C2</div>
                                                Proficiency
                                            </td>
                                            <td>Can adviceon or talk about complex or sensitive issues, understand colloquial referances and deal confidently with hostile questions.</td>
                                            <td>Can understabd documents, correspondence and reports, includig the finer points of complex texts.</td>
                                            <td>Can write letters on any subject and full notes of meetings or seminars with good expression and accuracy.</td>
                                        </tr>
                                    </table>
                                </div>', 6, N'', N'', 0, 1, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (41, 12, N'', N'', N'<p class="mt-30"> If your project is to migrate to Canada or Quebec, bridges exist between this scale and the CLB (Canadian Language Benchmarks), and the Canadian authorities will consider the CLB result. </p>', 7, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (42, 12, N'What is my Speaking level?', N'', N'<p class="mt-10">Here are a few characteristics, proper to each of the CLB levels, combined to the CEFRL&#8217;s. In order to have a rough idea of your level, here is a document we created for you. We suggest that you think about each of those situations, sound out at them and try to evaluate your ease of language. This will give you a first idea of your level. </p>
                            <img class="speaking-level img-responsive" src="images/speaking.jpg" alt="speaking level" />', 8, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (43, 12, N'How are the evaluators selected?', N'', N'<p class="mt-10">They are chosen locally regarding their knowledge of French as a Foreign Language (FLE, Fran&#231;ais Langue Etrang&#232;re), their teaching and evaluating skills, and their mastery of the CERFL.  Then, they receive a specific training to be empowered to evaluate TEF candidates, before being certified by the CCIP. </p>
                            <p> Our main idea is that the content of your speech itself is not judged. We hear at your ability to ask questions about a specific service, and to convince someone to take part to something. Again, your ease of language will be highly appreciated in the assessment. </p>
                            <p>
                                Accommodation for our candidates with special needs.
                                The CCIP proposes different exam arrangements in order to make it accessible to candidates with disabilities. In order to pass a TEF exam in these conditions, the candidate shall ask his physician to establish a medical certificate, which would explain the nature of the disability and bear recommendations about the needed arrangements, in the light of the possible adaptations.  The specific needs taken in consideration by the CCIP are the following: hearing impairment, motor disability preventing the candidate to fill in the answer sheet or to manipulate a computer&#8217;s mouse, dyslexia, and other cases being treated ad hoc.
                            </p>', 9, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (44, 12, N'Before, during and after D-Day!', N'', N'<p><b>Where can I train before D-Day?</b></p>
                                <p>
                                    If you have registered, you will receive the Candidate Handbook as well as some links helpful to train for the very B2 level. It is imperative that you read this Handbook entirely as it holds a lot of advice for the exam. (French Only)
                                    <ul>
                                        <li><a href="#" class="yellow-link">Download [2.50 MB]</a></li>
                                        <li><a href="#" class="yellow-link">Download [2.39 MB]</a></li>
                                        <li><a href="#" class="yellow-link">Download [1.80 MB]</a></li>
                                        <li><a href="#" class="yellow-link">Download [2.26 MB]</a></li>
                                    </ul>
                                </p>
                                <p>Our media library also has a few books to borrow or to consult on the spot, to know more about the structure of the exam. You could also register for one of our classes or workshops if you prepare your project well in advance. </p>', 12, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (45, 12, N'D-Day : What do I need to take with me?', N'', N'<p class="mt-30">
                                    <ul>
                                        <li>A pen or a black felt tip pen</li>
                                        <li>My ID</li>
                                        <li>My convocation</li>
                                        <li>The missing documents to my registration (see section above "Documents for registration")</li>
                                        <li>A watch (because yes, phones need to be turned off, no silent mode authorized)</li>
                                    </ul>
                                </p>', 13, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (46, 12, N'D-Day : What should I NOT take with me?', N'', N'<p class="mt-30">
                                    <ul>
                                        <li>A white corrector. Scrap paper is provided.</li>
                                        <li>Your phone that will have to be turned off and in your bag.</li>
                                        <li>Personnal preparation papers</li>
                                    </ul>
                                </p>
                                <p class="mt-30">
                                    I am supposed to pass the TEF, but I cannot make it. What happens?
                                    First, you shall certainly not drive faster. If you cannot make it on (exact) time, the CFO cannot let you access the exam room, according to the CCIP conditions.
                                </p>
                                <p>If you encounter a great impediment (illness, unannounced professional reasons, death of a parent), the candidate shall present a documentary proof to the CFO (medical certificate, employer certificate). You need to transmit it to the CCIP as soon as possible to grow your chances to register for another day. The possibility to register for a later date does not depend on the CFO, but on the CCIP that will examine your case. </p>
                                <p>
                                    <b>Registering again :</b> I want to pass the TEF again, is that possible?
                                    Yes, it is! However, a waiting period of two months has to be observed. Otherwise, the CCIP will not be able to accept you as a candidate. No request of repayment shall be accepted for the annulment of a registration if this period of time is not respected (Read Conditions of Registration and Examination of the CCIP).
                                </p>
                                <p><b>Registering again </b>: do I have to pass all sections again, or can I choose?
                                <p>
                                <p>Both Canadian and French immigration bodies require that you provide one and only one certificate reference number. This is the reason why you have to pass all sections again.</p>', 14, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (47, 12, N'Workshops', N'', N'<p>To develop your skills, you might also want to add a workshop to your general course. The following workshops are generally offered during our sessions. Try them!</p>', 16, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (48, 12, N'', N'', N'<h3 class="blue">A1 - Moli&#232;res (9-12 years old)</h3>
                                            <p>For those who finished TipTop 3 level &#8211; 36 hours &#8211; from October to April. Using drama in a foreign language can help you become more confident in speaking it, and make you familiar with both the music and idioms of this language. It is also such fun! All the sessions will be in French and you will work with one of our dynamic and enthusiastic French teacher, on role playing, improvisation and short extracts of French plays. Kids will be studying a written excerpt. After working on the written text, they will perform!</p>', 17, N'', N'', 0, 1, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (49, 12, N'', N'', N'<h3 class="blue">Oral and written grammar - Adosph&#232;re 2 - 12 hours</h3>
                                            <p>Write smoothly and gain confidence in French grammar! Solidify your knowledge of grammar skills in everyday life. In these workshops you will practice and deepen your knowledge of grammar in context, reinforcing key concepts and structures through real-world tasks and interactions. This workshop is designed to match the needs of the students in class and are the ideal complement to a general French language class.</p>
                                            <p>Adosph&#232;re 2: articles, pronouns, present, past and future tenses</p>', 18, N'', N'', 0, 1, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (50, 12, N'', N'', N'<h3 class="blue">A2 - Focus on speaking - Adosph&#232;re 3 - 12 hours</h3>
                                            <p>For those who wish to develop their listening and conversational skills and strategies. Equip yourself with more vocabulary through role plays, talks and presentations. You have a hobby, a passion, a little something that means a lot to you? Talk about them in French as you will be the one to choose the theme of the class! This workshop will give you opportunities to practice and develop what you already know in authentic situational exercises and will introduce you to the structure and use of the French language in everyday life.</p>', 19, N'', N'', 0, 1, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (51, 12, N'Registration, dates and fees', N'', N'<p>You can register at our reception desk or remotely (tef@cfoman.org), with the          following documents (per person):</p>
                                <p>
                                    <ul>
                                        <li>
                                            The registration form, duly completed and signed
                                            <div><a href="#" class="yellow-link">Download [65.29 KB]</a></div>
                                        </li>
                                        <li>A copy of your passport (ID page)</li>
                                        <li>
                                            The amount of your registration
                                            <ul>
                                                <li><b>Cash</b> for the candidates who register at our reception desk.</li>
                                                <li>A document proving your bank transfer, if you register remotely.<b> Western Union transfers can take a lot of time before they appear effective on our side, it is preferable that you do this transaction through your regular bank.</b></li>
                                            </ul>
                                        </li>
                                        <li>
                                            It will be asked that you sign at the back of your registration form. Your signature is scanned and sent to the CCIP; it is then affixed to your result certificate.<b> You`re registering remotely? Please fill in this document.</b>
                                            <div><a href="#" class="yellow-link">Download [80.47 KB]</a></div>
                                        </li>
                                        <li><b>Your picture will be taken on the day of the exam, </b>and affixed on your result certificate.</li>
                                        <li>
                                            Your signature down your registration form equals acceptance of the conditions of registration and examination, edited by the CCIP. Consult them here (French only).
                                            <div><a href="#" class="yellow-link">Download [304.89 KB]</a></div>
                                        </li>
                                        <li>
                                            We can send your result certificate through OmanPost, with the possibility to track your shipment on the Internet. <b>Fill in the following document. </b>(12 OMR fees apply).
                                            <div><a href="#" class="yellow-link">Download [130.84 KB]</a></div>
                                        </li>
                                    </ul>
                                </p>', 20, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (52, 12, N'', N'', N'<p>Be aware: if one the mentioned documents is missing on the day of the exam, the CFO will not let you access to the exam room. No repayment shall be granted.</p>', 20, N'', N'', 0, 1, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (53, 12, N'Fees (2018)', N'', N'<p class="mt-30"></p>', 22, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (54, 12, N'', N'', N'<p class="table-title blue">For a definition of each of these TEF versions, consult the following section: "What TEF should I register for?"</p>
                                <div class="table-responsive">
                                    <table width="100%" class="fee-packages table-bordered">
                                        <tr>
                                            <th>TEF TP</th>
                                            <th>TEF naturalisation</th>
                                            <th>TEF Canada</th>
                                            <th>
                                                TEFAQ
                                                <div>(TEF Qu&#233;bec)</div>
                                            </th>
                                        </tr>
                                        <tr>
                                            <td>125 OMR</td>
                                            <td>
                                                75 OMR : compulsory sections (Listening / Speaking)
                                                <div>75 OMR : optionnal sections (Reading / Writting)</div>
                                            </td>
                                            <td>150 OMR</td>
                                            <td>75 OMR</td>
                                        </tr>
                                    </table>
                                </div>', 23, N'', N'', 0, 1, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (55, 12, N'', N'', N'<p>Be aware: if one the mentioned documents is missing on the day of the exam, the CFO will not let you access to the exam room. No repayment shall be granted.</p>', 23, N'', N'', 0, 1, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (56, 12, N'Frequently Asked Questions', N'', N'<div class="mt-20">
                                <div class="panel-group wrap" id="accordion" role="tablist" aria-multiselectable="true">
                                    <div class="panel">
                                        <div class="panel-heading" role="tab" id="headingOne">
                                            <h4 class="panel-title"> <a role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne"> I live far away from Muscat, or abroad. How can I pick up my certificate? </a> </h4>
                                        </div>
                                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                            <div class="panel-body">
                                                <p>We can send over to you through OmanPost services. You will be able to follow its conveyance on the Internet with the tracking number we will provide you. To that end, you shall fill in the following form: <a href="#" class="yellow-link">Envoi attestation a distance</a> (130.84 Ko), and send it back to us (<a href="#" class="yellow-link">tef@cfoman.org</a>). You can subscribe to that service anytime, at our reception desk or remotely, all details are within the form.</p>
                                                <p>If a relative of yours lives in Muscat, he can totally pick up your certificate, presenting the following document: procuration (that you need to fill in beforehand), with a copy of his own ID.</p>
                                                <p>Please consider that no results are given through the phone or by email, for confidentiality reasons.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end of panel -->
                                    <div class="panel">
                                        <div class="panel-heading" role="tab" id="headingTwo">
                                            <h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo"> I passed a TEFAQ or a TEF Nat, and I didn`t receive a paper version of my certificate. Is that normal? </a> </h4>
                                        </div>
                                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                            <div class="panel-body">
                                                <p>Yes. Since November 1st, 2016, certificates for these two exams are sent by email.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end of panel -->
                                    <div class="panel">
                                        <div class="panel-heading" role="tab" id="headingThree">
                                            <h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree"> I lost my certificate. Can I ask for a duplicate? </a> </h4>
                                        </div>
                                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                            <div class="panel-body">
                                                <p>Yes, but only once, and it is a chargeable service It can only be asked to the CCIP, on that page.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end of panel -->
                                    <div class="panel">
                                        <div class="panel-heading" role="tab" id="headingFour">
                                            <h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFour" aria-expanded="false" aria-controls="collapseFour"> I have a TEF Canada and I want to migrate towards Quebec. Is my TEF Canada accepted in this situation? </a> </h4>
                                        </div>
                                        <div id="collapseFour" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFour">
                                            <div class="panel-body">
                                                <p>Yes, it will, because you will have passed the four compulsory sections.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end of panel -->
                                    <div class="panel">
                                        <div class="panel-heading" role="tab" id="headingFive">
                                            <h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseFive" aria-expanded="false" aria-controls="collapseFive"> I have a TEFaQ certificate and I want to migrate towards Canada. Can it work? </a> </h4>
                                        </div>
                                        <div id="collapseFive" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingFive">
                                            <div class="panel-body">
                                                <p>No, you must pass the TEF Canada exams.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end of panel -->
                                    <div class="panel">
                                        <div class="panel-heading" role="tab" id="headingSix">
                                            <h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSix" aria-expanded="false" aria-controls="collapseSix"> What information appear on my certificate? </a> </h4>
                                        </div>
                                        <div id="collapseSix" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSix">
                                            <div class="panel-body">
                                                <ul>
                                                    <li>
                                                        TEF Canada and TEFaQ
                                                        <p>Your certificate includes the number of points you received for each of the tested skills. Next to this number appears your European level (A1 -&gt; C2). However, the Canadian immigration body has a sharper scale with 12 levels (from 1 to 12), and they use this system to evaluate your immigration file. To know about the equivalences between the Canadian and the French system, click on the following link and refer to the tabs with the number of points you obtained <a href="#" class="blue">Correspondances nclc cecr</a> (136.13 Ko) </p>
                                                    </li>
                                                    <li>
                                                        All certificates
                                                        <p>For each evaluated skill, you will receive a number of points, out of a maximum. This number of points equals a CERF level that is also stated on your certificate. To understand these levels, refer to our section "The CEFR and the CLB". Your name, date of birth, picture and signature make this official document personal. </p>
                                                    </li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end of panel -->
                                    <div class="panel">
                                        <div class="panel-heading" role="tab" id="headingSeven">
                                            <h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseSeven" aria-expanded="false" aria-controls="collapseSeven"> I need to miss work to be able to pass a TEF exam. How can I do? </a> </h4>
                                        </div>
                                        <div id="collapseSeven" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingSeven">
                                            <div class="panel-body">
                                                <p>We can provide you a certificate stating that you will be setting for your exam on a particular day and hours.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end of panel -->
                                    <div class="panel">
                                        <div class="panel-heading" role="tab" id="headingEight">
                                            <h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseEight" aria-expanded="false" aria-controls="collapseEight"> I don`t live in Oman, and I need a TEF asap. Is my certificate going to be valid if I passed it in another country than the one I reside in? </a> </h4>
                                        </div>
                                        <div id="collapseEight" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingEight">
                                            <div class="panel-body">
                                                <p>Absolutely! There is no obligation stating that you must pass your exam in the country you live in.</p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end of panel -->
                                    <div class="panel">
                                        <div class="panel-heading" role="tab" id="headingEight">
                                            <h4 class="panel-title"> <a class="collapsed" role="button" data-toggle="collapse" data-parent="#accordion" href="#collapseNine" aria-expanded="false" aria-controls="collapseNine"> When am I going to receive my results? </a> </h4>
                                        </div>
                                        <div id="collapseNine" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingNine">
                                            <div class="panel-body">
                                                <p>This is one of the big question you ask us, and an important information you need to be able to organize your project accordingly. The official waiting time is between 6 and 8 weeks. It can take less, it can take more. Except the Speaking skill which is evaluated here (and possibly evaluated a second time in Paris), all the other sections are sent to France and corrected there. We basically cannot give you a formal answer about this matter, because it depends on the time of the year, and the number of sessions in other countries too!</p>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- end of panel -->
                                </div>
                            </div>', 10, N'', N'', 0, 0, N'', N'True')
GO
INSERT [dbo].[Section] ([id], [Page_ID], [Title], [Details], [Description], [Sort], [FileName], [UploadFile], [IsContentInBlueBackground], [IsContentInBox], [Sources], [Active]) VALUES (57, 12, N'', N'', N'<p>You haven`t found an information you need, we invite you to contact us, or visit the <a href="#" class="yellow-link"> CCIP page</a></p>
                                <p>We try to keep these information up to date as often as possible. </p>
                                <p> Last update- June 2017 </p>', 11, N'', N'', 0, 0, N'', N'True')
GO
SET IDENTITY_INSERT [dbo].[Section] OFF
GO
SET IDENTITY_INSERT [dbo].[Slider] ON 
GO
INSERT [dbo].[Slider] ([id], [Title], [Picture], [Link], [Description], [Sort], [Active], [Type]) VALUES (2, N'omani mark', N'4e3ef5e4-c5d5-4163-a785-083888950245.jpg', N'', N'', 1, 1, N'Standards')
GO
INSERT [dbo].[Slider] ([id], [Title], [Picture], [Link], [Description], [Sort], [Active], [Type]) VALUES (3, N'BASEC', N'6c326a32-9bb0-4715-9d28-836638235c35.jpg', N'', N'', 2, 1, N'Standards')
GO
INSERT [dbo].[Slider] ([id], [Title], [Picture], [Link], [Description], [Sort], [Active], [Type]) VALUES (4, N'BV', N'f49e6757-731a-4368-9195-ad44a9fec125.jpg', N'', N'', 3, 0, N'Standards')
GO
INSERT [dbo].[Slider] ([id], [Title], [Picture], [Link], [Description], [Sort], [Active], [Type]) VALUES (5, N'KEMA', N'1bedd12f-771f-424a-819a-abf7beaa1e73.jpg', N'', N'', 4, 1, N'Standards')
GO
INSERT [dbo].[Slider] ([id], [Title], [Picture], [Link], [Description], [Sort], [Active], [Type]) VALUES (6, N'LPCB', N'cb9f9871-8f63-4c5b-928b-27214bc870a0.jpg', N'', N'', 5, 1, N'Standards')
GO
INSERT [dbo].[Slider] ([id], [Title], [Picture], [Link], [Description], [Sort], [Active], [Type]) VALUES (7, N'BSI', N'20eb00d5-4f08-4123-9dbb-e13dfbeba6e9.jpg', N'', N'', 6, 1, N'Standards')
GO
INSERT [dbo].[Slider] ([id], [Title], [Picture], [Link], [Description], [Sort], [Active], [Type]) VALUES (8, N'customers2', N'fcd491fd-e62b-4098-94bf-7e4eee5c78e1.jpg', N'', N'', 2, 1, N'OurGlobalReach')
GO
INSERT [dbo].[Slider] ([id], [Title], [Picture], [Link], [Description], [Sort], [Active], [Type]) VALUES (9, N'globalreach ', N'74d5bd18-cc4f-487a-9009-0e604377b3df.jpg', N'', N'', 1, 1, N'OurGlobalReach')
GO
INSERT [dbo].[Slider] ([id], [Title], [Picture], [Link], [Description], [Sort], [Active], [Type]) VALUES (10, N'Medium Voltage Cables', N'1feb5292-a057-4a09-8801-a80dde1aa6d7.jpg', N'/products?type=MediumVoltageCables', N'', 1, 1, N'ProductRanges')
GO
INSERT [dbo].[Slider] ([id], [Title], [Picture], [Link], [Description], [Sort], [Active], [Type]) VALUES (11, N'Low Voltage Cables', N'ac492708-f4ce-45f1-beb1-cf2050daa19b.jpg', N'/products?type=LowVoltageCables', N'', 2, 1, N'ProductRanges')
GO
INSERT [dbo].[Slider] ([id], [Title], [Picture], [Link], [Description], [Sort], [Active], [Type]) VALUES (12, N'Overhead Line Conductors', N'04a4dc9d-3e71-4e6b-81e0-18d362676bac.jpg', N'/products?type=overheadlineconductors', N'', 5, 1, N'ProductRanges')
GO
INSERT [dbo].[Slider] ([id], [Title], [Picture], [Link], [Description], [Sort], [Active], [Type]) VALUES (13, N'Fire Rated Cables and Wires', N'8e7e98a5-b0a9-4c3a-8019-b53626b02bf8.jpg', N'/products?type=Fireratedcablesandwires', N'', 3, 1, N'ProductRanges')
GO
INSERT [dbo].[Slider] ([id], [Title], [Picture], [Link], [Description], [Sort], [Active], [Type]) VALUES (14, N'Building Wires and Cables', N'193c8943-c7a4-488b-8dc2-af347e6238ad.jpg', N'/products?type=BUildingwiresandcables', N'45', 5, 1, N'ProductRanges')
GO
INSERT [dbo].[Slider] ([id], [Title], [Picture], [Link], [Description], [Sort], [Active], [Type]) VALUES (15, N'Control Cables', N'81884263-0acf-4c67-9c86-8404035ea354.jpg', N'/products?type=LowVoltageCables', N'', 6, 1, N'ProductRanges')
GO
SET IDENTITY_INSERT [dbo].[Slider] OFF
GO
SET IDENTITY_INSERT [dbo].[Tracking] ON 
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (1, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>04/Jul/2019 10:53:56 AM<br/>::1', CAST(N'2019-07-04T10:53:56.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (2, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>04/Jul/2019 11:06:26 AM<br/>::1', CAST(N'2019-07-04T11:06:26.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (3, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>04/Jul/2019 02:26:45 PM<br/>::1', CAST(N'2019-07-04T14:26:45.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (4, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>04/Jul/2019 02:50:16 PM<br/>::1', CAST(N'2019-07-04T14:50:16.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (5, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>04/Jul/2019 02:58:34 PM<br/>::1', CAST(N'2019-07-04T14:58:34.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (16, N'1', N'Home', N'Insert', N'<p>
                                Founded in 1979 through bilateral cooperation agreements between the Sultanate of Oman and the French Republic, the Centre Franco Omanais offers French as a foreign language courses. You will also find a library and information about studies in France through our Campus France office.
                            </p>
                            <br />
                            <p>The CFO works under the authority of the Ministry of Education of Oman and the French Embassy in Oman.</p>', CAST(N'2019-07-04T16:36:17.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (90, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>05/Jul/2019 06:15:18 PM<br/>::1', CAST(N'2019-07-05T18:15:18.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (91, N'1', N'Menus', N'Insert', N'0<br/>test<br/>WebPage<br/>0<br/>22<br/>True<br/>test<br/><br/>TopMenu', CAST(N'2019-07-05T18:15:32.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (92, N'1', N'Pages', N'Insert', N'19<br/>0<br/>test<br/>22', CAST(N'2019-07-05T18:15:32.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (93, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>05/Jul/2019 07:21:06 PM<br/>::1', CAST(N'2019-07-05T19:21:06.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (94, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>05/Jul/2019 07:37:03 PM<br/>::1', CAST(N'2019-07-05T19:37:03.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (6, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>04/Jul/2019 03:02:49 PM<br/>::1', CAST(N'2019-07-04T15:02:49.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (7, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>04/Jul/2019 03:11:01 PM<br/>::1', CAST(N'2019-07-04T15:11:01.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (8, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>04/Jul/2019 03:19:08 PM<br/>::1', CAST(N'2019-07-04T15:19:08.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (9, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>04/Jul/2019 03:25:03 PM<br/>::1', CAST(N'2019-07-04T15:25:03.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (10, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>04/Jul/2019 03:29:33 PM<br/>::1', CAST(N'2019-07-04T15:29:33.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (11, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>04/Jul/2019 03:33:57 PM<br/>::1', CAST(N'2019-07-04T15:33:57.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (12, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>04/Jul/2019 03:39:06 PM<br/>::1', CAST(N'2019-07-04T15:39:06.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (13, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>04/Jul/2019 03:49:21 PM<br/>::1', CAST(N'2019-07-04T15:49:21.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (14, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>04/Jul/2019 03:57:23 PM<br/>::1', CAST(N'2019-07-04T15:57:23.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (15, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>04/Jul/2019 04:16:50 PM<br/>::1', CAST(N'2019-07-04T16:16:50.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (17, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>04/Jul/2019 05:02:54 PM<br/>::1', CAST(N'2019-07-04T17:02:54.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (18, N'1', N'HomeSliderSection', N'Insert', N'OUR LIBRARY<br/>Lorem Ipsum has been the industry`s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br/>1<br/>2019-7-4-17-3-39banner.jpg', CAST(N'2019-07-04T17:03:39.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (19, N'1', N'HomeSliderSection', N'Insert', N'OUR LIBRARY 2<br/>Lorem Ipsum has been the industry`s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.<br/>2<br/>2019-7-4-17-4-4banner.jpg', CAST(N'2019-07-04T17:04:04.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (20, N'1', N'HomeCourses', N'Insert', N'KIDS & TEEN<br/><p>Find the parfait program for your child&#8212;from those new to the language to native speakers...</p><br/>1<br/>2019-7-4-17-6-59box-1.jpg', CAST(N'2019-07-04T17:06:59.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (21, N'1', N'HomeCourses', N'Insert', N'ADULTS<br/><p>Whether you are stuck for words after &#8220;Bonjour,&#8221; want to discover some typical French films...</p><br/>2<br/>2019-7-4-17-7-28box-2.jpg', CAST(N'2019-07-04T17:07:28.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (22, N'1', N'HomeCourses', N'Insert', N'Private tutions<br/><p>Away from the distraction of a busy office or home life, our One-to-One programme gives...</p><br/>3<br/>2019-7-4-17-8-4box-3.jpg', CAST(N'2019-07-04T17:08:04.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (23, N'1', N'HomeCourses', N'Insert', N'Current session<br/><p>Book fee: 20 OMR for adults ; 15 OMR for kids and teenagers. Books are valid for 3 sessions...</p><br/>4<br/>2019-7-4-17-8-47box-4.jpg', CAST(N'2019-07-04T17:08:47.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (24, N'1', N'HomeCourses', N'Update', N'Current session<br/><p>Book fee: 20 OMR for adults ; 15 OMR for kids and teenagers. Books are valid for 3 sessions...</p><br/>4<br/>2019-7-4-17-8-47box-4.jpg', CAST(N'2019-07-04T17:08:53.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (25, N'1', N'Home', N'Update', N'<p>
                                Founded in 1979 through bilateral cooperation agreements between the Sultanate of Oman and the French Republic, the Centre Franco Omanais offers French as a foreign language courses. You will also find a library and information about studies in France through our Campus France office.
                            </p>
                            <br />
                            <p>The CFO works under the authority of the Ministry of Education of Oman and the French Embassy in Oman.</p>', CAST(N'2019-07-04T17:09:28.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (26, N'1', N'Home', N'Update', N'<p>
                                Founded in 1979 through bilateral cooperation agreements between the Sultanate of Oman and the French Republic, the Centre Franco Omanais offers French as a foreign language courses. You will also find a library and information about studies in France through our Campus France office.
                            </p>
                            <br />
                            <p>The CFO works under the authority of the Ministry of Education of Oman and the French Embassy in Oman.</p>', CAST(N'2019-07-04T17:17:44.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (27, N'1', N'Home', N'Update', N'<p>
                                Founded in 1979 through bilateral cooperation agreements between the Sultanate of Oman and the French Republic, the Centre Franco Omanais offers French as a foreign language courses. You will also find a library and information about studies in France through our Campus France office.
                            </p>
                            <br />
                            <p>The CFO works under the authority of the Ministry of Education of Oman and the French Embassy in Oman.</p>', CAST(N'2019-07-04T17:19:42.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (28, N'1', N'Home', N'Update', N'<p>
                                Founded in 1979 through bilateral cooperation agreements between the Sultanate of Oman and the French Republic, the Centre Franco Omanais offers French as a foreign language courses. You will also find a library and information about studies in France through our Campus France office.
                            </p>
                            <br />
                            <p>The CFO works under the authority of the Ministry of Education of Oman and the French Embassy in Oman.</p>', CAST(N'2019-07-04T17:20:02.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (29, N'1', N'Home', N'Update', N'<p>
                                Founded in 1979 through bilateral cooperation agreements between the Sultanate of Oman and the French Republic, the Centre Franco Omanais offers French as a foreign language courses. You will also find a library and information about studies in France through our Campus France office.
                            </p>
                            <br />
                            <p>The CFO works under the authority of the Ministry of Education of Oman and the French Embassy in Oman.</p>', CAST(N'2019-07-04T17:20:14.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (30, N'1', N'Home', N'Update', N'<p>
                                Founded in 1979 through bilateral cooperation agreements between the Sultanate of Oman and the French Republic, the Centre Franco Omanais offers French as a foreign language courses. You will also find a library and information about studies in France through our Campus France office.
                            </p>
                            <br />
                            <p>The CFO works under the authority of the Ministry of Education of Oman and the French Embassy in Oman.</p>', CAST(N'2019-07-04T17:20:49.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (31, N'1', N'Home', N'Update', N'<p>
                                Founded in 1979 through bilateral cooperation agreements between the Sultanate of Oman and the French Republic, the Centre Franco Omanais offers French as a foreign language courses. You will also find a library and information about studies in France through our Campus France office.
                            </p>
                            <br />
                            <p>The CFO works under the authority of the Ministry of Education of Oman and the French Embassy in Oman.</p>', CAST(N'2019-07-04T17:21:02.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (32, N'1', N'HomeCultureEvents', N'Insert', N'text<br/>test<br/>1<br/>04/07/2019 17:21<br/>2019-7-4-17-21-38event1.PNG', CAST(N'2019-07-04T17:21:38.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (33, N'1', N'HomeCultureEvents', N'Update', N'text1<br/>test1<br/>13<br/>06/07/2019 05:21<br/>2019-7-4-17-22-1box-2.jpg', CAST(N'2019-07-04T17:22:01.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (34, N'1', N'HomeCultureEvents', N'Insert', N'<br/><p> Ballerina An animation film by Eric Summer & Eric Warin, 2016 </p>
                                                <p>Exhibition room, Free entry</p><br/>1<br/>04/07/2019 17:24<br/>2019-7-4-17-24-23event1.PNG', CAST(N'2019-07-04T17:24:23.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (35, N'1', N'HomeCultureEvents', N'Insert', N'<br/><p> Story time, Reading and animation for kids 3 to 6 </p>
                                                <p>CFO Library</p><br/>2<br/>05/07/2019 17:24<br/>2019-7-4-17-24-54event2.PNG', CAST(N'2019-07-04T17:24:54.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (36, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>05/Jul/2019 11:22:55 AM<br/>::1', CAST(N'2019-07-05T11:22:55.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (37, N'1', N'Menus', N'Insert', N'0<br/>ABOUT US<br/>WebPage<br/>0<br/>1<br/>True<br/>about-us<br/><br/>TopMenu', CAST(N'2019-07-05T11:23:27.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (38, N'1', N'Pages', N'Insert', N'1<br/>0<br/>ABOUT US<br/>1', CAST(N'2019-07-05T11:23:27.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (39, N'1', N'Menus', N'Insert', N'0<br/>COURSES<br/>WebPage<br/>0<br/>2<br/>True<br/>courses<br/><br/>TopMenu', CAST(N'2019-07-05T11:23:53.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (40, N'1', N'Pages', N'Insert', N'2<br/>0<br/>COURSES<br/>2', CAST(N'2019-07-05T11:23:53.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (41, N'1', N'Menus', N'Insert', N'2<br/>Kids & Teens<br/>WebPage<br/>0<br/>1<br/>True<br/>kids-teens<br/><br/>TopMenu', CAST(N'2019-07-05T11:24:26.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (42, N'1', N'Pages', N'Insert', N'3<br/>2<br/>Kids & Teens<br/>1', CAST(N'2019-07-05T11:24:26.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (43, N'1', N'Menus', N'Insert', N'2<br/>Adults<br/>WebPage<br/>0<br/>2<br/>True<br/>adults<br/><br/>InnerMenu', CAST(N'2019-07-05T11:24:45.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (44, N'1', N'Pages', N'Insert', N'4<br/>2<br/>Adults<br/>2', CAST(N'2019-07-05T11:24:45.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (45, N'1', N'Menus', N'Update', N'2<br/>Kids & Teens<br/>WebPage<br/><br/>1<br/>True<br/>False<br/>kids-teens<br/>3', CAST(N'2019-07-05T11:24:53.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (46, N'1', N'Menus', N'Insert', N'2<br/>Private tuitions<br/>WebPage<br/>0<br/>3<br/>True<br/>private-tuitions<br/><br/>InnerMenu', CAST(N'2019-07-05T11:25:14.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (47, N'1', N'Pages', N'Insert', N'5<br/>2<br/>Private tuitions<br/>3', CAST(N'2019-07-05T11:25:14.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (48, N'1', N'Menus', N'Insert', N'2<br/>Current session<br/>WebPage<br/>0<br/>3<br/>True<br/>current-session<br/><br/>InnerMenu', CAST(N'2019-07-05T11:25:37.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (49, N'1', N'Pages', N'Insert', N'6<br/>2<br/>Current session<br/>3', CAST(N'2019-07-05T11:25:37.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (50, N'1', N'Menus', N'Update', N'2<br/>Current session<br/>WebPage<br/><br/>4<br/>True<br/>False<br/>current-session<br/>6', CAST(N'2019-07-05T11:25:45.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (51, N'1', N'Menus', N'Insert', N'0<br/>CULTURAL EVENTS<br/>WebPage<br/>0<br/>3<br/>True<br/>cultural-events<br/><br/>TopMenu', CAST(N'2019-07-05T11:26:24.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (52, N'1', N'Pages', N'Insert', N'7<br/>0<br/>CULTURAL EVENTS<br/>3', CAST(N'2019-07-05T11:26:24.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (53, N'1', N'Menus', N'Insert', N'7<br/>Upcomming events in muscat<br/>WebPage<br/>0<br/>1<br/>True<br/>upcomming-events<br/><br/>InnerMenu', CAST(N'2019-07-05T11:27:00.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (54, N'1', N'Pages', N'Insert', N'8<br/>7<br/>Upcomming events in muscat<br/>1', CAST(N'2019-07-05T11:27:00.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (55, N'1', N'Menus', N'Insert', N'0<br/>Past events in muscat<br/>WebPage<br/>0<br/>2<br/>True<br/>past-events<br/><br/>InnerMenu', CAST(N'2019-07-05T11:27:31.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (56, N'1', N'Pages', N'Insert', N'9<br/>0<br/>Past events in muscat<br/>2', CAST(N'2019-07-05T11:27:31.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (57, N'1', N'Menus', N'Update', N'7<br/>Past events in muscat<br/>WebPage<br/><br/>2<br/>True<br/>False<br/>past-events<br/>9', CAST(N'2019-07-05T11:27:43.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (58, N'1', N'Menus', N'Insert', N'0<br/>TESTS & CERTIFICATES<br/>WebPage<br/>0<br/>4<br/>True<br/>tests-certificates<br/><br/>TopMenu', CAST(N'2019-07-05T11:29:17.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (59, N'1', N'Pages', N'Insert', N'10<br/>0<br/>TESTS & CERTIFICATES<br/>4', CAST(N'2019-07-05T11:29:17.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (60, N'1', N'Menus', N'Insert', N'10<br/>DELF/DALF<br/>WebPage<br/>0<br/>1<br/>True<br/>delf<br/><br/>InnerMenu', CAST(N'2019-07-05T11:29:50.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (61, N'1', N'Pages', N'Insert', N'11<br/>10<br/>DELF/DALF<br/>1', CAST(N'2019-07-05T11:29:50.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (62, N'1', N'Menus', N'Insert', N'10<br/>TEF<br/>WebPage<br/>0<br/>2<br/>True<br/>tef<br/><br/>InnerMenu', CAST(N'2019-07-05T11:30:24.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (63, N'1', N'Pages', N'Insert', N'12<br/>10<br/>TEF<br/>2', CAST(N'2019-07-05T11:30:24.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (64, N'1', N'Menus', N'Insert', N'0<br/>LIBRARY<br/>WebPage<br/>0<br/>5<br/>True<br/>library<br/><br/>TopMenu', CAST(N'2019-07-05T11:31:03.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (65, N'1', N'Pages', N'Insert', N'13<br/>0<br/>LIBRARY<br/>5', CAST(N'2019-07-05T11:31:03.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (66, N'1', N'Menus', N'Insert', N'0<br/>STUDY IN FRANCE<br/>WebPage<br/>0<br/>6<br/>True<br/>study-in-france<br/><br/>TopMenu', CAST(N'2019-07-05T11:31:58.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (67, N'1', N'Pages', N'Insert', N'14<br/>0<br/>STUDY IN FRANCE<br/>6', CAST(N'2019-07-05T11:31:58.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (68, N'1', N'Menus', N'Insert', N'14<br/>Campus France<br/>WebPage<br/>0<br/>1<br/>True<br/>campus-france<br/><br/>InnerMenu', CAST(N'2019-07-05T11:32:26.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (69, N'1', N'Pages', N'Insert', N'15<br/>14<br/>Campus France<br/>1', CAST(N'2019-07-05T11:32:26.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (70, N'1', N'Menus', N'Insert', N'14<br/>Cavilam<br/>WebPage<br/>0<br/>2<br/>True<br/>cavilam<br/><br/>TopMenu', CAST(N'2019-07-05T11:32:45.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (71, N'1', N'Pages', N'Insert', N'16<br/>14<br/>Cavilam<br/>2', CAST(N'2019-07-05T11:32:45.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (72, N'1', N'Menus', N'Insert', N'0<br/>CONTACT US<br/>WebPage<br/>0<br/>7<br/>True<br/>contact-us<br/><br/>TopMenu', CAST(N'2019-07-05T11:33:14.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (73, N'1', N'Pages', N'Insert', N'17<br/>0<br/>CONTACT US<br/>7', CAST(N'2019-07-05T11:33:14.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (74, N'1', N'Menus', N'Insert', N'0<br/>test<br/>WebPage<br/>0<br/>10<br/>True<br/>test<br/><br/>TopMenu', CAST(N'2019-07-05T12:33:12.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (75, N'1', N'Pages', N'Insert', N'18<br/>0<br/>test<br/>10', CAST(N'2019-07-05T12:33:12.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (76, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>05/Jul/2019 03:41:00 PM<br/>::1', CAST(N'2019-07-05T15:41:00.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (77, N'1', N'HomeCourses', N'Insert', N'Test<br/>test<br/>5<br/>', CAST(N'2019-07-05T15:42:04.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (78, N'1', N'HomeCourses', N'Insert', N'test<br/>test<br/>8<br/>2019-7-5-15-42-30box-1.jpg', CAST(N'2019-07-05T15:42:30.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (79, N'1', N'HomeCourses', N'Insert', N'test<br/>test<br/>5<br/>2019-7-5-15-43-49bg.jpg', CAST(N'2019-07-05T15:43:49.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (80, N'1', N'HomeCourses', N'Insert', N'test1<br/>test<br/>45<br/>2019-7-5-15-44-11bg.png', CAST(N'2019-07-05T15:44:11.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (81, N'1', N'HomeCourses', N'Update', N'test1<br/>test<br/>45<br/>2019-7-5-15-44-11bg.png', CAST(N'2019-07-05T15:44:54.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (82, N'1', N'HomeCourses', N'Update', N'test1<br/>test<br/>45<br/>2019-7-5-15-44-11bg.png', CAST(N'2019-07-05T15:45:04.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (83, N'1', N'HomeCultureEvents', N'Update', N'<br/><p> Ballerina An animation film by Eric Summer &amp; Eric Warin, 2016 </p>
                                                <p>Exhibition room, Free entry</p><br/>1<br/>04/07/2019 05:24<br/>2019-7-4-17-24-23event1.PNG', CAST(N'2019-07-05T15:50:22.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (84, N'1', N'HomeCultureEvents', N'Update', N'<br/><p> Story time, Reading and animation for kids 3 to 6 </p>
                                                <p>CFO Library</p><br/>2<br/>05/07/2019 05:24<br/>2019-7-4-17-24-54event2.PNG', CAST(N'2019-07-05T15:50:37.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (85, N'1', N'HomeCultureEvents', N'Update', N'<br/><p> Ballerina An animation film by Eric Summer &amp; Eric Warin, 2016 </p>
                                                <p>Exhibition room, Free entry</p><br/>1<br/>05/07/2019 05:24<br/>2019-7-4-17-24-23event1.PNG', CAST(N'2019-07-05T15:58:26.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (86, N'1', N'HomeCultureEvents', N'Update', N'<br/><p> Story time, Reading and animation for kids 3 to 6 </p>
                                                <p>CFO Library</p><br/>2<br/>07/05/2019 05:24<br/>2019-7-4-17-24-54event2.PNG', CAST(N'2019-07-05T16:00:20.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (87, N'1', N'HomeCultureEvents', N'Update', N'<br/><p> Story time, Reading and animation for kids 3 to 6 </p>
                                                <p>CFO Library</p><br/>2<br/>05/07/2019 05:24<br/>2019-7-4-17-24-54event2.PNG', CAST(N'2019-07-05T16:00:33.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (88, N'1', N'HomeCultureEvents', N'Insert', N'<br/>Hello<br/>3<br/>12/07/2019 16:02<br/>2019-7-5-16-2-53event1.PNG', CAST(N'2019-07-05T16:02:53.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (89, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>05/Jul/2019 05:41:06 PM<br/>::1', CAST(N'2019-07-05T17:41:06.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (95, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>08/Jul/2019 02:47:14 PM<br/>::1', CAST(N'2019-07-08T14:47:14.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (96, N'1', N'CMSUsers', N'Delete', N'marketingteam < br/>ocimarketing < br/>313986a726b900eeb95646e9ac4c0487 < br/>Menus.aspx,MenusNew.aspx,MenusEdit.aspx,HomePage.aspx,RegionalSalesOffices.aspx,ProjectsCategory.aspx,DocumentCategory.aspx,Projects.aspx,GalleryCategory.aspx,Gallery.aspx,Newsletter.aspx,Video.aspx,News.aspx,Board.aspx,Logs.aspx,LogsView.aspx,Users.aspx,UsersNew.aspx,UsersEdit.aspx < br/>mohan.raj@omancables.com < br/>93949092 < br/> < br/> < br/> < br/>1', CAST(N'2019-07-08T14:47:23.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (97, N'1', N'CMSUsers', N'Update', N'AdminUser<br/>adminuser<br/>07/08/2019 2:47:27 PM<br/>07/08/2019 2:47:27 PM<br/>Menus.aspx,MenusNew.aspx,MenusEdit.aspx,HomePage.aspx,Events.aspx,Logs.aspx,LogsView.aspx,Users.aspx,UsersNew.aspx,UsersEdit.aspx,ContactUs.aspx<br/>True<br/>techsupport1@gulfcybertech.com<br/>90909091<br/>1', CAST(N'2019-07-08T14:47:27.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (98, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>08/Jul/2019 02:47:44 PM<br/>::1', CAST(N'2019-07-08T14:47:44.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (99, N'1', N'ContactUs', N'Insert', N'Center Franco Omanais 207, Al inshirah Street MSQ<br/>info@cfoman.org<br/>+968 24 69 75 79<br/>+968 96 66 36 22<br/>https://fr-fr.facebook.com/CentreFrancoOmanaiscfo/<br/>CenterFranco-Omanais(CFO)<br/>https://www.instagram/cfo_oman<br/>cfo_oman<br/>https://www.youtube.com/channel/UC2bY3X5hQlJfWCvTJxbiWQw<br/><br/>from Sunday to Thrusday<br />
                                        9AM - 1PM & 2PM - 8PM', CAST(N'2019-07-08T15:01:34.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (100, N'1', N'ContactUs', N'Update', N'Center Franco Omanais 207, Al inshirah Street MSQ1<br/>info@cfoman.org1<br/>+968 24 69 75 791<br/>+968 96 66 36 221<br/>https://fr-fr.facebook.com/CentreFrancoOmanaiscfo/1<br/>CenterFranco-Omanais(CFO)1<br/>https://www.instagram/cfo_oman1<br/>cfo_oman1<br/>https://www.youtube.com/channel/UC2bY3X5hQlJfWCvTJxbiWQw1<br/>1<br/>from Sunday to Thrusday1<br />
                                        9AM - 1PM &amp; 2PM - 8PM', CAST(N'2019-07-08T15:01:53.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (101, N'1', N'ContactUs', N'Update', N'Center Franco Omanais 207, Al inshirah Street MSQ<br/>info@cfoman.org<br/>+968 24 69 75 79<br/>+968 96 66 36 22<br/>https://fr-fr.facebook.com/CentreFrancoOmanaiscfo/<br/>CenterFranco-Omanais(CFO)<br/>https://www.instagram/cfo_oman<br/>cfo_oman<br/>https://www.youtube.com/channel/UC2bY3X5hQlJfWCvTJxbiWQw<br/><br/>from Sunday to Thrusday<br />
                                        9AM - 1PM &amp; 2PM - 8PM', CAST(N'2019-07-08T15:02:18.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (102, N'1', N'CultureEvents', N'Insert', N'<br/>miral&nbsp;&nbsp;&nbsp;<br/>1<br/>08/07/2019 15:05<br/>2019-7-8-15-5-31event1.PNG', CAST(N'2019-07-08T15:05:31.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (103, N'1', N'CultureEvents', N'Update', N'<br/>miral&nbsp; &nbsp;123<br/>111<br/>09/07/2019 15:05<br/>2019-7-8-15-7-20box-1.jpg', CAST(N'2019-07-08T15:07:20.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (104, N'1', N'CultureEvents', N'Update', N'<br/><p> Ballerina An animation film by Eric Summer & Eric Warin, 2016 </p>
                                            <p>Exhibition room, Free entry</p><br/>111<br/>08/07/2019 15:05<br/>2019-7-8-15-7-42event1.PNG', CAST(N'2019-07-08T15:07:42.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (105, N'1', N'CultureEvents', N'Insert', N'<br/><p> Story time, Reading and animation for kids 3 to 6 </p>
                                            <p>CFO Library</p><br/>2<br/>09/07/2019 15:07<br/>2019-7-8-15-7-59event2.PNG', CAST(N'2019-07-08T15:07:59.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (106, N'1', N'CultureEvents', N'Insert', N'<br/><p> Story time, Reading and animation for kids 3 to 6 </p>
                                            <p>CFO Library</p><br/>3<br/>11/07/2019 15:08<br/>2019-7-8-15-8-19event1.PNG', CAST(N'2019-07-08T15:08:19.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (107, N'1', N'CultureEvents', N'Insert', N'<br/><p> Story time, Reading and animation for kids 3 to 6 </p>
                                            <p>CFO Library</p><br/>4<br/>04/07/2019 15:08<br/>2019-7-8-15-8-54event1.PNG', CAST(N'2019-07-08T15:08:54.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (108, N'1', N'CultureEvents', N'Update', N'<br/><p> Ballerina An animation film by Eric Summer &amp; Eric Warin, 2016 </p>
                                            <p>Exhibition room, Free entry</p><br/>1<br/>08/07/2019 15:05<br/>2019-7-8-15-7-42event1.PNG', CAST(N'2019-07-08T15:09:00.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (109, N'1', N'CultureEvents', N'Insert', N'<br/><p> Story time, Reading and animation for kids 3 to 6 </p>
                                            <p>CFO Library</p><br/>5<br/>03/07/2019 15:09<br/>2019-7-8-15-9-18event2.PNG', CAST(N'2019-07-08T15:09:18.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (110, N'1', N'Menus', N'Update', N'0<br/>CONTACT US<br/>Module<br/><br/>7<br/>True<br/>False<br/>contact-us<br/>17', CAST(N'2019-07-08T15:31:29.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (111, N'1', N'Menus', N'Update', N'7<br/>Upcomming events in muscat<br/>Module<br/><br/>1<br/>True<br/>False<br/>upcomming-events<br/>8', CAST(N'2019-07-08T15:32:04.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (112, N'1', N'Menus', N'Update', N'7<br/>Past events in muscat<br/>Module<br/><br/>2<br/>True<br/>False<br/>past-events<br/>9', CAST(N'2019-07-08T15:32:15.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (113, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>08/Jul/2019 03:40:58 PM<br/>::1', CAST(N'2019-07-08T15:40:58.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (114, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>08/Jul/2019 04:44:32 PM<br/>::1', CAST(N'2019-07-08T16:44:32.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (115, N'1', N'ContactUs', N'Update', N'Center Franco Omanais 207, Al inshirah Street MSQ<br/>info@cfoman.org<br/>+968 24 69 75 79<br/>+968 96 66 36 22<br/><br/>CenterFranco-Omanais(CFO)<br/>https://www.instagram/cfo_oman<br/>cfo_oman<br/>https://www.youtube.com/channel/UC2bY3X5hQlJfWCvTJxbiWQw<br/><br/>from Sunday to Thrusday<br />
                                        9AM - 1PM &amp; 2PM - 8PM', CAST(N'2019-07-08T16:44:53.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (116, N'1', N'ContactUs', N'Update', N'Center Franco Omanais 207, Al inshirah Street MSQ<br/>info@cfoman.org<br/>+968 24 69 75 79<br/>+968 96 66 36 22<br/>https://fr-fr.facebook.com/CentreFrancoOmanaiscfo/<br/>CenterFranco-Omanais(CFO)<br/>https://www.instagram/cfo_oman<br/>cfo_oman<br/>https://www.youtube.com/channel/UC2bY3X5hQlJfWCvTJxbiWQw<br/><br/>from Sunday to Thrusday<br />
                                        9AM - 1PM &amp; 2PM - 8PM', CAST(N'2019-07-08T16:45:48.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (117, N'1', N'HomeCourses', N'Update', N'KIDS & TEEN<br/><p>Find the parfait program for your child&#8212;from those new to the language to native speakers...</p><br/>1<br/>2019-7-4-17-6-59box-1.jpg', CAST(N'2019-07-08T17:04:19.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (118, N'1', N'HomeCourses', N'Update', N'ADULTS<br/><p>Whether you are stuck for words after &#8220;Bonjour,&#8221; want to discover some typical French films...</p><br/>2<br/>2019-7-4-17-7-28box-2.jpg', CAST(N'2019-07-08T17:05:52.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (119, N'1', N'HomeCourses', N'Update', N'Private tutions<br/><p>Away from the distraction of a busy office or home life, our One-to-One programme gives...</p><br/>3<br/>2019-7-4-17-8-4box-3.jpg', CAST(N'2019-07-08T17:06:00.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (120, N'1', N'HomeCourses', N'Update', N'Current session<br/><p>Book fee: 20 OMR for adults ; 15 OMR for kids and teenagers. Books are valid for 3 sessions...</p><br/>4<br/>2019-7-4-17-8-47box-4.jpg', CAST(N'2019-07-08T17:06:08.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (121, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>08/Jul/2019 05:39:27 PM<br/>::1', CAST(N'2019-07-08T17:39:27.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (122, N'1', N'CultureEvents', N'Insert', N'<br/>sadsa<br/>15<br/>17/07/2019 17:45<br/>2019-7-8-17-45-17call.png', CAST(N'2019-07-08T17:45:17.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (123, N'1', N'CultureEvents', N'Delete', N'', CAST(N'2019-07-08T17:45:20.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (124, N'1', N'Login', N'Login', N'cms<br/>1<br/>AdminUser<br/>08/Jul/2019 06:21:20 PM<br/>::1', CAST(N'2019-07-08T18:21:20.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (125, N'1', N'Home', N'Update', N'<p>
                                Founded in 1979 through bilateral cooperation agreements between the Sultanate of Oman and the French Republic, the Centre Franco Omanais offers French as a foreign language courses. You will also find a library and information about studies in France through our Campus France office.
                            </p>
                            <br />
                            <p>The CFO works under the authority of the Ministry of Education of Oman and the French Embassy in Oman.</p>', CAST(N'2019-07-08T18:33:51.000' AS DateTime), N'::1')
GO
INSERT [dbo].[Tracking] ([id], [UserId], [TableName], [Operation], [Record], [Date], [IPAddress]) VALUES (126, N'1', N'Home', N'Update', N'<p>
                                Founded in 1979 through bilateral cooperation agreements between the Sultanate of Oman and the French Republic, the Centre Franco Omanais offers French as a foreign language courses. You will also find a library and information about studies in France through our Campus France office.
                            </p>
                            <br />
                            <p>The CFO works under the authority of the Ministry of Education of Oman and the French Embassy in Oman.</p>', CAST(N'2019-07-08T18:34:42.000' AS DateTime), N'::1')
GO
SET IDENTITY_INSERT [dbo].[Tracking] OFF
GO
ALTER TABLE [dbo].[Pages] ADD  DEFAULT ((0)) FOR [IsContentDivideTwo]
GO
