USE [MalusAdmin]
GO
/****** Object:  Table [dbo].[t_business_news]    Script Date: 2024/4/29 13:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_business_news](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SysCreateUser] [int] NULL,
	[SysCreateTime] [datetime] NOT NULL,
	[SysUpdateUser] [int] NULL,
	[SysUpdateTime] [datetime] NOT NULL,
	[SysDeleteUser] [int] NULL,
	[SysDeleteTime] [datetime] NULL,
	[SysIsDelete] [tinyint] NULL,
	[DeptId] [int] NULL,
	[TypeId] [int] NULL,
	[Title] [nvarchar](100) NULL,
	[Content] [nvarchar](max) NULL,
	[Author] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_business_news_type]    Script Date: 2024/4/29 13:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_business_news_type](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SysCreateUser] [int] NULL,
	[SysCreateTime] [datetime] NOT NULL,
	[SysUpdateUser] [int] NULL,
	[SysUpdateTime] [datetime] NOT NULL,
	[SysDeleteUser] [int] NULL,
	[SysDeleteTime] [datetime] NULL,
	[SysIsDelete] [tinyint] NULL,
	[DeptId] [int] NULL,
	[Name] [nvarchar](20) NULL,
	[Description] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_sys_dept]    Script Date: 2024/4/29 13:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_sys_dept](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_sys_dict_data]    Script Date: 2024/4/29 13:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_sys_dict_data](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TypeId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Value1] [nvarchar](200) NULL,
	[Value2] [nvarchar](200) NULL,
	[Value3] [nvarchar](200) NULL,
	[Status] [tinyint] NULL,
	[Sort] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_sys_dict_type]    Script Date: 2024/4/29 13:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_sys_dict_type](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Description] [nvarchar](50) NULL,
	[Status] [tinyint] NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_sys_files]    Script Date: 2024/4/29 13:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_sys_files](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DeptId] [int] NULL,
	[Name] [nvarchar](20) NULL,
	[Path] [nvarchar](150) NULL,
	[IsShare] [bit] NULL,
	[SharePwd] [nvarchar](6) NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_sys_login_log]    Script Date: 2024/4/29 13:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_sys_login_log](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SysCreateUser] [int] NULL,
	[SysCreateTime] [datetime] NULL,
	[SysUpdateUser] [int] NULL,
	[SysUpdateTime] [datetime] NULL,
	[SysDeleteUser] [int] NULL,
	[SysDeleteTime] [datetime] NULL,
	[SysIsDelete] [bit] NOT NULL,
	[UserId] [int] NOT NULL,
	[IP] [nvarchar](20) NULL,
	[IPInfo] [nvarchar](50) NULL,
	[UAStr] [nvarchar](500) NULL,
	[Browser] [nvarchar](50) NULL,
	[OS] [nvarchar](20) NULL,
	[Device] [nvarchar](30) NULL,
 CONSTRAINT [PK__t_sys_lo__3214EC0765E2AABF] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_sys_menu]    Script Date: 2024/4/29 13:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_sys_menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ParentId] [int] NOT NULL,
	[MenuType] [int] NOT NULL,
	[MenuName] [nvarchar](20) NULL,
	[RouteName] [nvarchar](20) NOT NULL,
	[RoutePath] [nvarchar](100) NOT NULL,
	[Status] [int] NULL,
	[HideInMenu] [bit] NOT NULL,
	[Sort] [int] NULL,
	[Component] [nvarchar](100) NOT NULL,
	[Icon] [nvarchar](50) NOT NULL,
	[IconType] [int] NOT NULL,
	[KeepAlive] [bit] NULL,
	[Redirect] [nvarchar](200) NULL,
	[Href] [nvarchar](200) NULL,
	[SysCreateUser] [int] NULL,
	[SysCreateTime] [datetime] NOT NULL,
	[SysUpdateUser] [int] NULL,
	[SysUpdateTime] [datetime] NOT NULL,
	[SysDeleteUser] [int] NULL,
	[SysDeleteTime] [datetime] NULL,
	[SysIsDelete] [bit] NULL,
 CONSTRAINT [PK__t_sys_me__3214EC077959FA94] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_sys_role]    Script Date: 2024/4/29 13:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_sys_role](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SysCreateUser] [int] NULL,
	[SysCreateTime] [datetime] NULL,
	[SysUpdateUser] [int] NULL,
	[SysUpdateTime] [datetime] NULL,
	[SysDeleteUser] [int] NULL,
	[SysDeleteTime] [datetime] NULL,
	[SysIsDelete] [bit] NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Desc] [nvarchar](50) NULL,
	[Status] [bit] NOT NULL,
	[DataRang] [nvarchar](20) NULL,
	[Permission] [nvarchar](200) NULL,
 CONSTRAINT [PK__t_sys_ro__3214EC07073CF5EB] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_sys_role_menu]    Script Date: 2024/4/29 13:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_sys_role_menu](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SysCreateUser] [int] NULL,
	[SysCreateTime] [datetime] NULL,
	[SysUpdateUser] [int] NULL,
	[SysUpdateTime] [datetime] NULL,
	[SysDeleteUser] [int] NULL,
	[SysDeleteTime] [datetime] NULL,
	[SysIsDelete] [bit] NULL,
	[RoleId] [int] NOT NULL,
	[MenuId] [int] NOT NULL,
 CONSTRAINT [PK_t_sys_role_menu] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_sys_role_permiss]    Script Date: 2024/4/29 13:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_sys_role_permiss](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SysCreateUser] [int] NULL,
	[SysCreateTime] [datetime] NULL,
	[SysUpdateUser] [int] NULL,
	[SysUpdateTime] [datetime] NULL,
	[SysDeleteUser] [int] NULL,
	[SysDeleteTime] [datetime] NULL,
	[SysIsDelete] [bit] NOT NULL,
	[RoleId] [int] NOT NULL,
	[UserPermiss] [nvarchar](100) NOT NULL,
 CONSTRAINT [PK_bs_sys_user_button_permiss] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[t_sys_user]    Script Date: 2024/4/29 13:55:02 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[t_sys_user](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Account] [nvarchar](20) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[PassWord] [nvarchar](32) NOT NULL,
	[UserRolesId] [nvarchar](100) NOT NULL,
	[Status] [int] NOT NULL,
	[Avatar] [nvarchar](100) NULL,
	[Tel] [nvarchar](20) NULL,
	[Email] [nvarchar](50) NULL,
	[Remark] [nvarchar](200) NULL,
	[SysCreateUser] [int] NULL,
	[SysCreateTime] [datetime] NULL,
	[SysUpdateUser] [int] NULL,
	[SysUpdateTime] [datetime] NULL,
	[SysDeleteUser] [int] NULL,
	[SysDeleteTime] [datetime] NULL,
	[SysIsDelete] [tinyint] NULL,
	[DeptId] [int] NOT NULL,
 CONSTRAINT [PK__t_sys_us__3214EC0749A204F2] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[t_sys_login_log] ON 

INSERT [dbo].[t_sys_login_log] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [UserId], [IP], [IPInfo], [UAStr], [Browser], [OS], [Device]) VALUES (1, 0, CAST(N'2024-04-28T16:49:51.893' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'127.0.0.1', N'0-0-内网IP', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', N'Edge', N'Windows', N'Other')
INSERT [dbo].[t_sys_login_log] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [UserId], [IP], [IPInfo], [UAStr], [Browser], [OS], [Device]) VALUES (2, 0, CAST(N'2024-04-28T17:42:46.457' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'127.0.0.1', N'0-0-内网IP', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', N'Edge', N'Windows', N'Other')
INSERT [dbo].[t_sys_login_log] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [UserId], [IP], [IPInfo], [UAStr], [Browser], [OS], [Device]) VALUES (3, 0, CAST(N'2024-04-28T17:44:05.853' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'127.0.0.1', N'0-0-内网IP', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', N'Edge', N'Windows', N'Other')
INSERT [dbo].[t_sys_login_log] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [UserId], [IP], [IPInfo], [UAStr], [Browser], [OS], [Device]) VALUES (4, 0, CAST(N'2024-04-28T17:44:29.983' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'127.0.0.1', N'0-0-内网IP', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', N'Edge', N'Windows', N'Other')
INSERT [dbo].[t_sys_login_log] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [UserId], [IP], [IPInfo], [UAStr], [Browser], [OS], [Device]) VALUES (5, 0, CAST(N'2024-04-28T17:46:50.590' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'127.0.0.1', N'0-0-内网IP', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', N'Edge', N'Windows', N'Other')
INSERT [dbo].[t_sys_login_log] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [UserId], [IP], [IPInfo], [UAStr], [Browser], [OS], [Device]) VALUES (6, 0, CAST(N'2024-04-28T17:48:58.087' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'127.0.0.1', N'0-0-内网IP', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36 Edg/124.0.0.0', N'Edge', N'Windows', N'Other')
INSERT [dbo].[t_sys_login_log] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [UserId], [IP], [IPInfo], [UAStr], [Browser], [OS], [Device]) VALUES (7, 0, CAST(N'2024-04-29T10:16:00.570' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'127.0.0.1', N'0-0-内网IP', N'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.6045.160 Safari/537.36', N'Chrome', N'Windows', N'Other')
INSERT [dbo].[t_sys_login_log] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [UserId], [IP], [IPInfo], [UAStr], [Browser], [OS], [Device]) VALUES (8, 0, CAST(N'2024-04-29T13:08:19.147' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'127.0.0.1', N'0-0-内网IP', N'Mozilla/5.0 (Linux; Android 14; 22127RK46C Build/UKQ1.230804.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/122.0.6261.120 Mobile Safari/537.36 XWEB/1220033 MMWEBSDK/20240301 MMWEBID/8552 MicroMessenger/8.0.48.2580(0x2800307D) WeChat/arm64 Weixin NetType/WIFI Language/en ABI/arm64', N'Chrome Mobile WebView', N'Android', N'22127RK46C')
INSERT [dbo].[t_sys_login_log] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [UserId], [IP], [IPInfo], [UAStr], [Browser], [OS], [Device]) VALUES (9, 0, CAST(N'2024-04-29T13:08:26.990' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'127.0.0.1', N'0-0-内网IP', N'Mozilla/5.0 (Linux; Android 14; 22127RK46C Build/UKQ1.230804.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/122.0.6261.120 Mobile Safari/537.36 XWEB/1220033 MMWEBSDK/20240301 MMWEBID/8552 MicroMessenger/8.0.48.2580(0x2800307D) WeChat/arm64 Weixin NetType/WIFI Language/en ABI/arm64', N'Chrome Mobile WebView', N'Android', N'22127RK46C')
INSERT [dbo].[t_sys_login_log] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [UserId], [IP], [IPInfo], [UAStr], [Browser], [OS], [Device]) VALUES (10, 0, CAST(N'2024-04-29T13:10:57.410' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'127.0.0.1', N'0-0-内网IP', N'Mozilla/5.0 (Linux; Android 14; 22127RK46C Build/UKQ1.230804.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/122.0.6261.120 Mobile Safari/537.36 XWEB/1220033 MMWEBSDK/20240301 MMWEBID/8552 MicroMessenger/8.0.48.2580(0x2800307D) WeChat/arm64 Weixin NetType/WIFI Language/en ABI/arm64', N'Chrome Mobile WebView', N'Android', N'22127RK46C')
INSERT [dbo].[t_sys_login_log] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [UserId], [IP], [IPInfo], [UAStr], [Browser], [OS], [Device]) VALUES (11, 0, CAST(N'2024-04-29T13:11:09.210' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'127.0.0.1', N'0-0-内网IP', N'Mozilla/5.0 (Linux; Android 14; 22127RK46C Build/UKQ1.230804.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/122.0.6261.120 Mobile Safari/537.36 XWEB/1220033 MMWEBSDK/20240301 MMWEBID/8552 MicroMessenger/8.0.48.2580(0x2800307D) WeChat/arm64 Weixin NetType/WIFI Language/en ABI/arm64', N'Chrome Mobile WebView', N'Android', N'22127RK46C')
INSERT [dbo].[t_sys_login_log] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [UserId], [IP], [IPInfo], [UAStr], [Browser], [OS], [Device]) VALUES (12, 0, CAST(N'2024-04-29T13:11:32.650' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'127.0.0.1', N'0-0-内网IP', N'Mozilla/5.0 (Linux; Android 14; 22127RK46C Build/UKQ1.230804.001; wv) AppleWebKit/537.36 (KHTML, like Gecko) Version/4.0 Chrome/122.0.6261.120 Mobile Safari/537.36 XWEB/1220033 MMWEBSDK/20240301 MMWEBID/8552 MicroMessenger/8.0.48.2580(0x2800307D) WeChat/arm64 Weixin NetType/WIFI Language/en ABI/arm64', N'Chrome Mobile WebView', N'Android', N'22127RK46C')
SET IDENTITY_INSERT [dbo].[t_sys_login_log] OFF
GO
SET IDENTITY_INSERT [dbo].[t_sys_menu] ON 

INSERT [dbo].[t_sys_menu] ([Id], [ParentId], [MenuType], [MenuName], [RouteName], [RoutePath], [Status], [HideInMenu], [Sort], [Component], [Icon], [IconType], [KeepAlive], [Redirect], [Href], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete]) VALUES (9, 0, 2, N'首页', N'home', N'/home', 1, 0, 1, N'layout.base$view.home', N'mdi:monitor-dashboard', 1, NULL, NULL, NULL, 1, CAST(N'2024-04-25T10:17:11.450' AS DateTime), 0, CAST(N'2024-04-25T10:17:11.450' AS DateTime), 0, NULL, 0)
INSERT [dbo].[t_sys_menu] ([Id], [ParentId], [MenuType], [MenuName], [RouteName], [RoutePath], [Status], [HideInMenu], [Sort], [Component], [Icon], [IconType], [KeepAlive], [Redirect], [Href], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete]) VALUES (10, 0, 1, N'系统管理', N'manage', N'/manage', 1, 0, 5, N'layout.base', N'carbon:cloud-service-management', 1, NULL, NULL, NULL, 1, CAST(N'2024-04-25T10:25:19.950' AS DateTime), 0, CAST(N'2024-04-25T10:25:19.950' AS DateTime), 0, NULL, 0)
INSERT [dbo].[t_sys_menu] ([Id], [ParentId], [MenuType], [MenuName], [RouteName], [RoutePath], [Status], [HideInMenu], [Sort], [Component], [Icon], [IconType], [KeepAlive], [Redirect], [Href], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete]) VALUES (11, 10, 2, N'用户管理', N'manage_user', N'/manage/user', 1, 0, 1, N'view.manage_user', N'ic:round-manage-accounts', 1, NULL, NULL, NULL, 1, CAST(N'2024-04-25T10:26:00.833' AS DateTime), 0, CAST(N'2024-04-25T10:26:00.833' AS DateTime), 0, NULL, 0)
INSERT [dbo].[t_sys_menu] ([Id], [ParentId], [MenuType], [MenuName], [RouteName], [RoutePath], [Status], [HideInMenu], [Sort], [Component], [Icon], [IconType], [KeepAlive], [Redirect], [Href], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete]) VALUES (12, 10, 2, N'角色管理', N'manage_role', N'/manage/role', 1, 0, 2, N'view.manage_role', N'carbon:user-role', 1, NULL, NULL, NULL, 1, CAST(N'2024-04-25T10:26:45.897' AS DateTime), 0, CAST(N'2024-04-25T10:26:45.897' AS DateTime), 0, NULL, 0)
INSERT [dbo].[t_sys_menu] ([Id], [ParentId], [MenuType], [MenuName], [RouteName], [RoutePath], [Status], [HideInMenu], [Sort], [Component], [Icon], [IconType], [KeepAlive], [Redirect], [Href], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete]) VALUES (13, 10, 2, N'菜单管理', N'manage_menu', N'/manage/menu', 1, 0, 3, N'view.manage_menu', N'material-symbols:route', 1, NULL, NULL, NULL, 1, CAST(N'2024-04-25T10:27:20.993' AS DateTime), 0, CAST(N'2024-04-25T10:27:20.993' AS DateTime), 0, NULL, 0)
INSERT [dbo].[t_sys_menu] ([Id], [ParentId], [MenuType], [MenuName], [RouteName], [RoutePath], [Status], [HideInMenu], [Sort], [Component], [Icon], [IconType], [KeepAlive], [Redirect], [Href], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete]) VALUES (14, 0, 1, N'系统功能', N'function', N'/function', 1, 0, 2, N'layout.base', N'icon-park-outline:all-application', 1, NULL, NULL, NULL, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[t_sys_menu] ([Id], [ParentId], [MenuType], [MenuName], [RouteName], [RoutePath], [Status], [HideInMenu], [Sort], [Component], [Icon], [IconType], [KeepAlive], [Redirect], [Href], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete]) VALUES (15, 14, 2, N'标签页', N'function_tab', N'function_tab', 1, 0, 1, N'view.function_tab', N'ic:round-tab', 1, NULL, NULL, NULL, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[t_sys_menu] ([Id], [ParentId], [MenuType], [MenuName], [RouteName], [RoutePath], [Status], [HideInMenu], [Sort], [Component], [Icon], [IconType], [KeepAlive], [Redirect], [Href], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete]) VALUES (16, 0, 2, N'关于', N'about', N'/about', 1, 0, 9, N'layout.base$view.about', N'fluent:book-information-24-regular', 1, NULL, NULL, NULL, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0)
INSERT [dbo].[t_sys_menu] ([Id], [ParentId], [MenuType], [MenuName], [RouteName], [RoutePath], [Status], [HideInMenu], [Sort], [Component], [Icon], [IconType], [KeepAlive], [Redirect], [Href], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete]) VALUES (17, 0, 2, N'服务监控', N'system', N'/system', 1, 0, 9, N'layout.base$view.system', N'fluent:send-logging-24-regular', 1, NULL, NULL, NULL, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[t_sys_menu] OFF
GO
SET IDENTITY_INSERT [dbo].[t_sys_role] ON 

INSERT [dbo].[t_sys_role] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [Name], [Desc], [Status], [DataRang], [Permission]) VALUES (1, NULL, CAST(N'2024-04-16T17:03:06.770' AS DateTime), NULL, NULL, NULL, NULL, 0, N'超级管理员', N'超级管理员', 1, N'全部', N'')
INSERT [dbo].[t_sys_role] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [Name], [Desc], [Status], [DataRang], [Permission]) VALUES (2, 0, CAST(N'2024-04-16T17:03:06.780' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1, N'管理员', N'管理员', 1, N'全部', N'')
INSERT [dbo].[t_sys_role] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [Name], [Desc], [Status], [DataRang], [Permission]) VALUES (3, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'总经理', N'总经理1', 1, N'本部门及以下', N'')
INSERT [dbo].[t_sys_role] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [Name], [Desc], [Status], [DataRang], [Permission]) VALUES (4, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'测试角色', N'测试角色1112', 1, N'本部门', N'')
INSERT [dbo].[t_sys_role] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [Name], [Desc], [Status], [DataRang], [Permission]) VALUES (5, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, N'员工', N'员工2', 1, N'仅本人', N'')
INSERT [dbo].[t_sys_role] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [Name], [Desc], [Status], [DataRang], [Permission]) VALUES (6, 0, CAST(N'2024-04-22T14:08:57.717' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1, N'string', N'string', 1, NULL, NULL)
INSERT [dbo].[t_sys_role] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [Name], [Desc], [Status], [DataRang], [Permission]) VALUES (7, 0, CAST(N'2024-04-22T14:11:22.910' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1, N'222', N'231', 1, NULL, NULL)
INSERT [dbo].[t_sys_role] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [Name], [Desc], [Status], [DataRang], [Permission]) VALUES (8, 0, CAST(N'2024-04-22T14:11:33.407' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 1, N'321', N'123', 1, NULL, NULL)
SET IDENTITY_INSERT [dbo].[t_sys_role] OFF
GO
SET IDENTITY_INSERT [dbo].[t_sys_role_menu] ON 

INSERT [dbo].[t_sys_role_menu] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [MenuId]) VALUES (18, 0, CAST(N'2024-04-25T10:11:33.370' AS DateTime), 0, NULL, 0, NULL, 0, 3, 1)
INSERT [dbo].[t_sys_role_menu] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [MenuId]) VALUES (19, 0, CAST(N'2024-04-25T10:11:33.370' AS DateTime), 0, NULL, 0, NULL, 0, 3, 4)
INSERT [dbo].[t_sys_role_menu] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [MenuId]) VALUES (20, 0, CAST(N'2024-04-25T10:11:33.370' AS DateTime), 0, NULL, 0, NULL, 0, 3, 5)
INSERT [dbo].[t_sys_role_menu] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [MenuId]) VALUES (21, 0, CAST(N'2024-04-25T10:11:33.370' AS DateTime), 0, NULL, 0, NULL, 0, 3, 7)
INSERT [dbo].[t_sys_role_menu] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [MenuId]) VALUES (22, 0, CAST(N'2024-04-25T10:11:33.370' AS DateTime), 0, NULL, 0, NULL, 0, 3, 8)
SET IDENTITY_INSERT [dbo].[t_sys_role_menu] OFF
GO
SET IDENTITY_INSERT [dbo].[t_sys_role_permiss] ON 

INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (4, 0, CAST(N'2024-04-19T10:16:08.510' AS DateTime), 0, NULL, 0, NULL, 0, 2, N'api:SysMenu:Add')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (5, 0, CAST(N'2024-04-19T10:16:08.510' AS DateTime), 0, NULL, 0, NULL, 0, 2, N'api:SysMenu:MenuTreeList')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (12, 0, CAST(N'2024-04-23T10:59:18.837' AS DateTime), 0, NULL, 0, NULL, 0, 5, N'api:SysMenu:MenuTreeList')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (13, 0, CAST(N'2024-04-23T10:59:18.837' AS DateTime), 0, NULL, 0, NULL, 0, 5, N'api:SysMenu:Add')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (14, 0, CAST(N'2024-04-23T10:59:18.837' AS DateTime), 0, NULL, 0, NULL, 0, 5, N'api:SysMenu:Update')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (15, 0, CAST(N'2024-04-23T10:59:18.837' AS DateTime), 0, NULL, 0, NULL, 0, 5, N'api:SysMenu:Delete')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (16, 0, CAST(N'2024-04-23T10:59:18.837' AS DateTime), 0, NULL, 0, NULL, 0, 5, N'api:SysRole:PageList')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (17, 0, CAST(N'2024-04-23T10:59:18.837' AS DateTime), 0, NULL, 0, NULL, 0, 5, N'api:SysRole:Add')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (18, 0, CAST(N'2024-04-23T10:59:18.837' AS DateTime), 0, NULL, 0, NULL, 0, 5, N'api:SysRole:Delete')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (19, 0, CAST(N'2024-04-23T10:59:18.837' AS DateTime), 0, NULL, 0, NULL, 0, 5, N'api:SysRole:Update')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (20, 0, CAST(N'2024-04-23T13:50:25.170' AS DateTime), 0, NULL, 0, NULL, 0, 3, N'api:SysMenu:Delete')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (21, 0, CAST(N'2024-04-23T13:50:25.170' AS DateTime), 0, NULL, 0, NULL, 0, 3, N'api:SysRole:PageList')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (22, 0, CAST(N'2024-04-23T13:50:47.410' AS DateTime), 0, NULL, 0, NULL, 0, 4, N'api:SysUser:Update')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (23, 0, CAST(N'2024-04-23T13:50:47.410' AS DateTime), 0, NULL, 0, NULL, 0, 4, N'api:SysUser:Delete')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (24, 0, CAST(N'2024-04-23T13:50:47.410' AS DateTime), 0, NULL, 0, NULL, 0, 4, N'api:SysUser:Add')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (25, 0, CAST(N'2024-04-23T13:50:47.410' AS DateTime), 0, NULL, 0, NULL, 0, 4, N'api:SysUser:PageList')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (26, 0, CAST(N'2024-04-23T13:50:47.410' AS DateTime), 0, NULL, 0, NULL, 0, 4, N'api:SysRolePermission:AddUserButtonPermiss')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (27, 0, CAST(N'2024-04-23T13:50:47.410' AS DateTime), 0, NULL, 0, NULL, 0, 4, N'api:SysRolePermission:GetRoleButen')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (28, 0, CAST(N'2024-04-23T13:50:47.410' AS DateTime), 0, NULL, 0, NULL, 0, 4, N'api:SysRole:Update')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (29, 0, CAST(N'2024-04-23T13:50:47.410' AS DateTime), 0, NULL, 0, NULL, 0, 4, N'api:SysRole:Delete')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (30, 0, CAST(N'2024-04-23T13:50:47.410' AS DateTime), 0, NULL, 0, NULL, 0, 4, N'api:SysRole:Add')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (31, 0, CAST(N'2024-04-23T13:50:47.410' AS DateTime), 0, NULL, 0, NULL, 0, 4, N'api:SysRole:PageList')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (32, 0, CAST(N'2024-04-23T13:50:47.410' AS DateTime), 0, NULL, 0, NULL, 0, 4, N'api:SysMenu:Delete')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (33, 0, CAST(N'2024-04-23T13:50:47.410' AS DateTime), 0, NULL, 0, NULL, 0, 4, N'api:SysMenu:Update')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (34, 0, CAST(N'2024-04-23T13:50:47.410' AS DateTime), 0, NULL, 0, NULL, 0, 4, N'api:SysMenu:Add')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (35, 0, CAST(N'2024-04-25T10:11:09.563' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'api:SysMenu:MenuTreeList')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (36, 0, CAST(N'2024-04-25T10:11:09.563' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'api:SysMenu:Add')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (37, 0, CAST(N'2024-04-25T10:11:09.563' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'api:SysMenu:Update')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (38, 0, CAST(N'2024-04-25T10:11:09.563' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'api:SysMenu:Delete')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (39, 0, CAST(N'2024-04-25T10:11:09.563' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'api:SysRole:PageList')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (40, 0, CAST(N'2024-04-25T10:11:09.563' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'api:SysRole:Add')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (41, 0, CAST(N'2024-04-25T10:11:09.563' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'api:SysRole:Delete')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (42, 0, CAST(N'2024-04-25T10:11:09.563' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'api:SysRole:Update')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (43, 0, CAST(N'2024-04-25T10:11:09.563' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'api:SysRoleMenu:Get')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (44, 0, CAST(N'2024-04-25T10:11:09.563' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'api:SysRoleMenu:Set')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (45, 0, CAST(N'2024-04-25T10:11:09.563' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'api:SysRolePermission:GetRoleButen')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (46, 0, CAST(N'2024-04-25T10:11:09.563' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'api:SysRolePermission:AddUserButtonPermiss')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (47, 0, CAST(N'2024-04-25T10:11:09.563' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'api:SysUser:PageList')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (48, 0, CAST(N'2024-04-25T10:11:09.563' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'api:SysUser:Add')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (49, 0, CAST(N'2024-04-25T10:11:09.563' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'api:SysUser:Delete')
INSERT [dbo].[t_sys_role_permiss] ([Id], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [RoleId], [UserPermiss]) VALUES (50, 0, CAST(N'2024-04-25T10:11:09.563' AS DateTime), 0, NULL, 0, NULL, 0, 1, N'api:SysUser:Update')
SET IDENTITY_INSERT [dbo].[t_sys_role_permiss] OFF
GO
SET IDENTITY_INSERT [dbo].[t_sys_user] ON 

INSERT [dbo].[t_sys_user] ([Id], [Account], [Name], [PassWord], [UserRolesId], [Status], [Avatar], [Tel], [Email], [Remark], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [DeptId]) VALUES (1, N'admin', N'超级管理员', N'4FE72A4D294138C2933AD35F5AB1DBBD', N'[1]', 1, NULL, N'18888888888', N'18888888888@163.com', NULL, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, 1)
INSERT [dbo].[t_sys_user] ([Id], [Account], [Name], [PassWord], [UserRolesId], [Status], [Avatar], [Tel], [Email], [Remark], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [DeptId]) VALUES (2, N'001', N'管理员', N'E10ADC3949BA59ABBE56E057F20F883E', N'[2]', 1, NULL, N'18888888888', N'18888888888@163.com', NULL, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, 2)
INSERT [dbo].[t_sys_user] ([Id], [Account], [Name], [PassWord], [UserRolesId], [Status], [Avatar], [Tel], [Email], [Remark], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [DeptId]) VALUES (3, N'0011', N'总经理', N'E10ADC3949BA59ABBE56E057F20F883E', N'[3]', 1, NULL, N'18888888888', N'18888888888@163.com', NULL, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, 2)
INSERT [dbo].[t_sys_user] ([Id], [Account], [Name], [PassWord], [UserRolesId], [Status], [Avatar], [Tel], [Email], [Remark], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [DeptId]) VALUES (4, N'0012', N'部门经理', N'E10ADC3949BA59ABBE56E057F20F883E', N'[4,3,2,1]', 1, NULL, N'18888888888', N'18888888888@163.com', NULL, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, 2)
INSERT [dbo].[t_sys_user] ([Id], [Account], [Name], [PassWord], [UserRolesId], [Status], [Avatar], [Tel], [Email], [Remark], [SysCreateUser], [SysCreateTime], [SysUpdateUser], [SysUpdateTime], [SysDeleteUser], [SysDeleteTime], [SysIsDelete], [DeptId]) VALUES (5, N'0013', N'员工1', N'E10ADC3949BA59ABBE56E057F20F883E', N'[5,4]', 1, NULL, N'18888888888', N'18888888888@163.com', NULL, 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, CAST(N'1900-01-01T00:00:00.000' AS DateTime), 0, 0)
SET IDENTITY_INSERT [dbo].[t_sys_user] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UC_Name]    Script Date: 2024/4/29 13:55:02 ******/
ALTER TABLE [dbo].[t_sys_dept] ADD  CONSTRAINT [UC_Name] UNIQUE NONCLUSTERED 
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[t_business_news] ADD  CONSTRAINT [DF_business_news_SysCreateTime]  DEFAULT (getdate()) FOR [SysCreateTime]
GO
ALTER TABLE [dbo].[t_business_news] ADD  CONSTRAINT [DF_business_news_SysUpdateTime]  DEFAULT (getdate()) FOR [SysUpdateTime]
GO
ALTER TABLE [dbo].[t_business_news] ADD  DEFAULT ((0)) FOR [SysIsDelete]
GO
ALTER TABLE [dbo].[t_business_news_type] ADD  CONSTRAINT [DF_news_type_SysCreateTime]  DEFAULT (getdate()) FOR [SysCreateTime]
GO
ALTER TABLE [dbo].[t_business_news_type] ADD  CONSTRAINT [DF_news_type_SysUpdateTime]  DEFAULT (getdate()) FOR [SysUpdateTime]
GO
ALTER TABLE [dbo].[t_business_news_type] ADD  DEFAULT ((0)) FOR [SysIsDelete]
GO
ALTER TABLE [dbo].[t_sys_dept] ADD  DEFAULT ((0)) FOR [ParentId]
GO
ALTER TABLE [dbo].[t_sys_dept] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[t_sys_dict_data] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[t_sys_dict_data] ADD  DEFAULT ((0)) FOR [Sort]
GO
ALTER TABLE [dbo].[t_sys_dict_type] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[t_sys_login_log] ADD  CONSTRAINT [DF_t_sys_login_log_SysCreateTime]  DEFAULT (getdate()) FOR [SysCreateTime]
GO
ALTER TABLE [dbo].[t_sys_login_log] ADD  CONSTRAINT [DF_t_sys_login_log_SysIsDelete]  DEFAULT ((0)) FOR [SysIsDelete]
GO
ALTER TABLE [dbo].[t_sys_menu] ADD  CONSTRAINT [DF__t_sys_men__IsHid__52593CB8]  DEFAULT ((0)) FOR [HideInMenu]
GO
ALTER TABLE [dbo].[t_sys_menu] ADD  CONSTRAINT [DF__t_sys_menu__Sort__5812160E]  DEFAULT ((0)) FOR [Sort]
GO
ALTER TABLE [dbo].[t_sys_menu] ADD  CONSTRAINT [DF__t_sys_men__IsIfr__5441852A]  DEFAULT ((0)) FOR [Icon]
GO
ALTER TABLE [dbo].[t_sys_menu] ADD  CONSTRAINT [DF__t_sys_men__IsAff__5535A963]  DEFAULT ((0)) FOR [IconType]
GO
ALTER TABLE [dbo].[t_sys_menu] ADD  CONSTRAINT [DF__t_sys_men__IsKee__534D60F1]  DEFAULT ((1)) FOR [KeepAlive]
GO
ALTER TABLE [dbo].[t_sys_menu] ADD  CONSTRAINT [DF_menu_SysCreateTime]  DEFAULT (getdate()) FOR [SysCreateTime]
GO
ALTER TABLE [dbo].[t_sys_menu] ADD  CONSTRAINT [DF_menu_SysUpdateTime]  DEFAULT (getdate()) FOR [SysUpdateTime]
GO
ALTER TABLE [dbo].[t_sys_menu] ADD  CONSTRAINT [DF__t_sys_men__SysIs__5165187F]  DEFAULT ((0)) FOR [SysIsDelete]
GO
ALTER TABLE [dbo].[t_sys_role] ADD  CONSTRAINT [DF__t_sys_rol__SysCr__778AC167]  DEFAULT (getdate()) FOR [SysCreateTime]
GO
ALTER TABLE [dbo].[t_sys_role] ADD  CONSTRAINT [DF__t_sys_rol__SysIs__787EE5A0]  DEFAULT ((0)) FOR [SysIsDelete]
GO
ALTER TABLE [dbo].[t_sys_role] ADD  CONSTRAINT [DF__t_sys_rol__Statu__797309D9]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[t_sys_role_menu] ADD  CONSTRAINT [DF_t_sys_role_menu_SysCreateTime]  DEFAULT (getdate()) FOR [SysCreateTime]
GO
ALTER TABLE [dbo].[t_sys_role_menu] ADD  CONSTRAINT [DF_t_sys_role_menu_SysIsDelete]  DEFAULT ((0)) FOR [SysIsDelete]
GO
ALTER TABLE [dbo].[t_sys_role_permiss] ADD  CONSTRAINT [DF_bs_sys_user_button_permiss_SysCreateTime]  DEFAULT (getdate()) FOR [SysCreateTime]
GO
ALTER TABLE [dbo].[t_sys_role_permiss] ADD  CONSTRAINT [DF_bs_sys_user_button_permiss_SysIsDelete]  DEFAULT ((0)) FOR [SysIsDelete]
GO
ALTER TABLE [dbo].[t_sys_user] ADD  CONSTRAINT [DF__t_sys_use__Statu__6477ECF3]  DEFAULT ('10') FOR [Status]
GO
ALTER TABLE [dbo].[t_sys_user] ADD  CONSTRAINT [DF__t_sys_use__SysCr__619B8048]  DEFAULT (getdate()) FOR [SysCreateTime]
GO
ALTER TABLE [dbo].[t_sys_user] ADD  CONSTRAINT [DF__t_sys_use__SysUp__628FA481]  DEFAULT (getdate()) FOR [SysUpdateTime]
GO
ALTER TABLE [dbo].[t_sys_user] ADD  CONSTRAINT [DF__t_sys_use__SysIs__6383C8BA]  DEFAULT ((0)) FOR [SysIsDelete]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'父级菜单ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_sys_menu', @level2type=N'COLUMN',@level2name=N'ParentId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单类型1 .目录 2.菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_sys_menu', @level2type=N'COLUMN',@level2name=N'MenuType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_sys_menu', @level2type=N'COLUMN',@level2name=N'MenuName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'路由名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_sys_menu', @level2type=N'COLUMN',@level2name=N'RouteName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'路由路径' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_sys_menu', @level2type=N'COLUMN',@level2name=N'RoutePath'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'菜单状态' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_sys_menu', @level2type=N'COLUMN',@level2name=N'Status'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'隐藏菜单' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_sys_menu', @level2type=N'COLUMN',@level2name=N'HideInMenu'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'排序' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_sys_menu', @level2type=N'COLUMN',@level2name=N'Sort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'页面组件' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_sys_menu', @level2type=N'COLUMN',@level2name=N'Component'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_sys_menu', @level2type=N'COLUMN',@level2name=N'Icon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'图标类型' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_sys_menu', @level2type=N'COLUMN',@level2name=N'IconType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_sys_role_menu', @level2type=N'COLUMN',@level2name=N'RoleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户id' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_sys_role_permiss', @level2type=N'COLUMN',@level2name=N'RoleId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户访问接口的权限' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N't_sys_role_permiss', @level2type=N'COLUMN',@level2name=N'UserPermiss'
GO
