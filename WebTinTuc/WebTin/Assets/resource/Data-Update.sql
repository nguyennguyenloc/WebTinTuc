USE [master]
GO
/****** Object:  Database [TrainingWebTinTuc]    Script Date: 04/04/2019 19:59:26 ******/
CREATE DATABASE [TrainingWebTinTuc]
GO
ALTER DATABASE [TrainingWebTinTuc] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [TrainingWebTinTuc] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [TrainingWebTinTuc] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [TrainingWebTinTuc] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [TrainingWebTinTuc] SET ARITHABORT OFF 
GO
ALTER DATABASE [TrainingWebTinTuc] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TrainingWebTinTuc] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TrainingWebTinTuc] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TrainingWebTinTuc] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TrainingWebTinTuc] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [TrainingWebTinTuc] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [TrainingWebTinTuc] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TrainingWebTinTuc] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [TrainingWebTinTuc] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TrainingWebTinTuc] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TrainingWebTinTuc] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TrainingWebTinTuc] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TrainingWebTinTuc] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TrainingWebTinTuc] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TrainingWebTinTuc] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TrainingWebTinTuc] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TrainingWebTinTuc] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TrainingWebTinTuc] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [TrainingWebTinTuc] SET  MULTI_USER 
GO
ALTER DATABASE [TrainingWebTinTuc] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TrainingWebTinTuc] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TrainingWebTinTuc] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TrainingWebTinTuc] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
USE [TrainingWebTinTuc]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 04/04/2019 19:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CategoryName] [nvarchar](200) NULL,
	[Level] [int] NULL,
	[ParentId] [bigint] NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedTime] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedTime] [datetime] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 04/04/2019 19:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[PasswordEncrypted] [nvarchar](500) NULL,
	[PasswordSalt] [nvarchar](10) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[PhoneNumber] [nvarchar](15) NULL,
	[Email] [nvarchar](150) NULL,
	[Address] [nvarchar](500) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedTime] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedTime] [datetime] NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Function]    Script Date: 04/04/2019 19:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Function](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Function] [nvarchar](200) NULL,
	[Level] [int] NULL,
	[ParentId] [bigint] NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedTime] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifieTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedTime] [datetime] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Function] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 04/04/2019 19:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[CategoryId] [bigint] NULL,
	[Title] [nvarchar](500) NULL,
	[Alias] [nvarchar](500) NULL,
	[Content] [ntext] NULL,
	[Summary] [nvarchar](100) NULL,
	[Resource] [nvarchar](50) NULL,
	[Image] [nvarchar](1000) NULL,
	[View] [bigint] NULL,
	[Tags] [nvarchar](500) NULL,
	[PostStatus] [smallint] NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedTime] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedTime] [datetime] NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostComment]    Script Date: 04/04/2019 19:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostComment](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PostId] [bigint] NULL,
	[CommentedBy] [bigint] NULL,
	[Content] [nvarchar](200) NULL,
	[CommentedTime] [datetime] NULL,
 CONSTRAINT [PK_PostComment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PostRate]    Script Date: 04/04/2019 19:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PostRate](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[PostId] [bigint] NULL,
	[RatedBy] [bigint] NULL,
	[Mark] [smallint] NULL,
	[RatedTime] [datetime] NULL,
 CONSTRAINT [PK_PostRate] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 04/04/2019 19:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Role] [nvarchar](200) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedTime] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedTime] [datetime] NULL,
	[Status] [bit] NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RoleFunctionRelationship]    Script Date: 04/04/2019 19:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RoleFunctionRelationship](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[RoleId] [bigint] NULL,
	[FunctionId] [bigint] NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedTime] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedTime] [datetime] NULL,
 CONSTRAINT [PK_RoleFunctionRelationship] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User]    Script Date: 04/04/2019 19:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[Username] [nvarchar](50) NULL,
	[PasswordEncrypted] [nvarchar](500) NULL,
	[PasswordSalt] [nvarchar](10) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Sex] [smallint] NULL,
	[DateOfBirth] [datetime] NULL,
	[PhoneNumber] [nvarchar](20) NULL,
	[Email] [nvarchar](100) NULL,
	[Address] [nvarchar](500) NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedTime] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedTime] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserRoleRelationship]    Script Date: 04/04/2019 19:59:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRoleRelationship](
	[Id] [bigint] IDENTITY(1,1) NOT NULL,
	[UserId] [bigint] NULL,
	[RoleId] [bigint] NULL,
	[CreatedBy] [bigint] NULL,
	[CreatedTime] [datetime] NULL,
	[ModifiedBy] [bigint] NULL,
	[ModifiedTime] [datetime] NULL,
	[IsDeleted] [bit] NULL,
	[DeletedBy] [bigint] NULL,
	[DeletedTime] [datetime] NULL,
 CONSTRAINT [PK_UserRoleRelationship] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([Id], [CategoryName], [Level], [ParentId], [CreatedBy], [CreatedTime], [ModifiedBy], [ModifiedTime], [IsDeleted], [DeletedBy], [DeletedTime], [Status]) VALUES (1, N'Thiết kế web', 1, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1)
INSERT [dbo].[Category] ([Id], [CategoryName], [Level], [ParentId], [CreatedBy], [CreatedTime], [ModifiedBy], [ModifiedTime], [IsDeleted], [DeletedBy], [DeletedTime], [Status]) VALUES (2, N'JavaScript', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Category] ([Id], [CategoryName], [Level], [ParentId], [CreatedBy], [CreatedTime], [ModifiedBy], [ModifiedTime], [IsDeleted], [DeletedBy], [DeletedTime], [Status]) VALUES (3, N'Css', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Category] ([Id], [CategoryName], [Level], [ParentId], [CreatedBy], [CreatedTime], [ModifiedBy], [ModifiedTime], [IsDeleted], [DeletedBy], [DeletedTime], [Status]) VALUES (4, N'Bootstrap', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
INSERT [dbo].[Category] ([Id], [CategoryName], [Level], [ParentId], [CreatedBy], [CreatedTime], [ModifiedBy], [ModifiedTime], [IsDeleted], [DeletedBy], [DeletedTime], [Status]) VALUES (5, N'Jquery', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1)
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Post] ON 

INSERT [dbo].[Post] ([Id], [CategoryId], [Title], [Alias], [Content], [Summary], [Resource], [Image], [View], [Tags], [PostStatus], [CreatedBy], [CreatedTime], [ModifiedBy], [ModifiedTime], [IsDeleted], [DeletedBy], [DeletedTime]) VALUES (1, 1, N'Lorem Ipsum: when, and when not to use it', NULL, N'Do you like Cheese Whiz? Spray tan? Fake eyelashes? That''s what is Lorem Ipsum to many—it rubs them the wrong way, all the way. It''s unreal, uncanny, makes you wonder if something is wrong, it seems to seek your attention for all the wrong reasons. Usually, we prefer the real thing, wine without sulfur based preservatives, real butter, not margarine, and so we''d like our layouts and designs to be filled with real words, with thoughts that count, information that has value.

The toppings you may chose for that TV dinner pizza slice when you forgot to shop for foods, the paint you may slap on your face to impress the new boss is your business. But what about your daily bread? Design comps, layouts, wireframes—will your clients accept that you go about things the facile way? Authorities in our business will tell in no uncertain terms that Lorem Ipsum is that huge, huge no no to forswear forever. Not so fast, I''d say, there are some redeeming factors in favor of greeking text, as its use is merely the symptom of a worse problem to take into consideration.', NULL, N'Hihi', NULL, NULL, NULL, 0, 1, CAST(N'2019-04-03T00:00:00.000' AS DateTime), NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Post] ([Id], [CategoryId], [Title], [Alias], [Content], [Summary], [Resource], [Image], [View], [Tags], [PostStatus], [CreatedBy], [CreatedTime], [ModifiedBy], [ModifiedTime], [IsDeleted], [DeletedBy], [DeletedTime]) VALUES (2, 1, N'Lorem Ipsum: when, and when not to use it - PART 2', NULL, N'Do you like Cheese Whiz? Spray tan? Fake eyelashes? That''s what is Lorem Ipsum to many—it rubs them the wrong way, all the way. It''s unreal, uncanny, makes you wonder if something is wrong, it seems to seek your attention for all the wrong reasons. Usually, we prefer the real thing, wine without sulfur based preservatives, real butter, not margarine, and so we''d like our layouts and designs to be filled with real words, with thoughts that count, information that has value.', NULL, NULL, NULL, NULL, NULL, 0, 1, CAST(N'2019-04-02T00:00:00.000' AS DateTime), NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[Post] ([Id], [CategoryId], [Title], [Alias], [Content], [Summary], [Resource], [Image], [View], [Tags], [PostStatus], [CreatedBy], [CreatedTime], [ModifiedBy], [ModifiedTime], [IsDeleted], [DeletedBy], [DeletedTime]) VALUES (4, NULL, N'Mã OTP Hoạt Động Thế Nào Và Cách Tạo Mã OTP', N'ma-otp-hoat-dong-the-nao-va-cach-tao-ma-otp', N'Chắc ai trong các bạn cũng biết được ứng dụng của mã OTP rồi. Mã OTP – One Time Password, được hiểu là mã chỉ dùng được một lần. Mã này sẽ có thời gian hiệu lực nhất định, thường là 30 giây đến 1 phút. Những đặc tính của OTP như sau:

Mã này có thời gian hiệu lực ngắn
Mã này thường là lớp mật khẩu cuối cùng
Mã này được sinh ra dựa trên một mã bí mật và định danh người dùng kèm thời gian hệ thống
Mã này có thể được tạo ra bằng nhiều cách:', N'Mã OTP Hoạt Động Thế Nào Và Cách Tạo Mã OTP', N'phamtuantech.com', NULL, NULL, NULL, 0, 1, CAST(N'2019-04-03T21:25:07.393' AS DateTime), NULL, NULL, 0, NULL, NULL)
INSERT [dbo].[Post] ([Id], [CategoryId], [Title], [Alias], [Content], [Summary], [Resource], [Image], [View], [Tags], [PostStatus], [CreatedBy], [CreatedTime], [ModifiedBy], [ModifiedTime], [IsDeleted], [DeletedBy], [DeletedTime]) VALUES (5, NULL, N'Mã OTP Hoạt Động Thế Nào Và Cách Tạo Mã OTP', N'ma-otp-hoat-dong-the-nao-va-cach-tao-ma-otp', N'Chắc ai trong các bạn cũng biết được ứng dụng của mã OTP rồi. Mã OTP – One Time Password, được hiểu là mã chỉ dùng được một lần. Mã này sẽ có thời gian hiệu lực nhất định, thường là 30 giây đến 1 phút. Những đặc tính của OTP như sau:

Mã này có thời gian hiệu lực ngắn
Mã này thường là lớp mật khẩu cuối cùng
Mã này được sinh ra dựa trên một mã bí mật và định danh người dùng kèm thời gian hệ thống
Mã này có thể được tạo ra bằng nhiều cách:', N'Mã OTP Hoạt Động Thế Nào Và Cách Tạo Mã OTP', N'phamtuantech.com', NULL, NULL, NULL, 0, 1, CAST(N'2019-04-03T21:27:00.817' AS DateTime), NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Post] OFF
SET IDENTITY_INSERT [dbo].[User] ON 

INSERT [dbo].[User] ([Id], [Username], [PasswordEncrypted], [PasswordSalt], [FirstName], [LastName], [Sex], [DateOfBirth], [PhoneNumber], [Email], [Address], [CreatedBy], [CreatedTime], [ModifiedBy], [ModifiedTime], [IsDeleted], [DeletedBy], [DeletedTime]) VALUES (1, N'admin', N'98c667d9de1a75a48e1918b72ed32e06', N'qwertyuiop', N'Trình', N'Lê Hoàng  ', 1, CAST(N'1990-01-01T00:00:00.000' AS DateTime), N'113', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL)
SET IDENTITY_INSERT [dbo].[User] OFF
ALTER TABLE [dbo].[Category] ADD  CONSTRAINT [DF_Category_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Function] ADD  CONSTRAINT [DF_Function_Status]  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[Role] ADD  CONSTRAINT [DF_Role_Status]  DEFAULT ((1)) FOR [Status]
GO
USE [master]
GO
ALTER DATABASE [TrainingWebTinTuc] SET  READ_WRITE 
GO
