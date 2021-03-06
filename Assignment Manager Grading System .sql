USE [Assignment Manager Grading System ] ]
GO
/****** Object:  Table [dbo].[Assesment]    Script Date: 7/17/2022 1:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assesment](
	[AssID] [varchar](50) NOT NULL,
	[Type] [varchar](150) NOT NULL,
	[Part] [int] NOT NULL,
	[Weight] [float] NOT NULL,
	[Completion Criteria] [varchar](50) NOT NULL,
	[Duration] [varchar](50) NULL,
	[Knowledge and Skill] [varchar](150) NOT NULL,
	[NOTE] [varchar](1) NULL,
 CONSTRAINT [PK__Assesmen__44ABB03E05E6A4F6] PRIMARY KEY CLUSTERED 
(
	[AssID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Assesment_Subject]    Script Date: 7/17/2022 1:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Assesment_Subject](
	[SubID] [varchar](50) NOT NULL,
	[AssID] [varchar](50) NOT NULL,
	[Weight] [float] NOT NULL,
	[TypeID] [varchar](50) NULL,
	[Duration] [varchar](150) NOT NULL,
 CONSTRAINT [pk_Assesment_Subject] PRIMARY KEY CLUSTERED 
(
	[SubID] ASC,
	[AssID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 7/17/2022 1:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[TypeID] [varchar](50) NOT NULL,
	[Decription] [varchar](150) NULL,
PRIMARY KEY CLUSTERED 
(
	[TypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 7/17/2022 1:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[ClassID] [varchar](50) NOT NULL,
	[ClassName] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CLASS_Semester]    Script Date: 7/17/2022 1:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CLASS_Semester](
	[ClassID] [varchar](50) NOT NULL,
	[SemID] [varchar](50) NOT NULL,
 CONSTRAINT [pk_CLASS_Semester] PRIMARY KEY CLUSTERED 
(
	[ClassID] ASC,
	[SemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Grade]    Script Date: 7/17/2022 1:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Grade](
	[GradeID] [varchar](50) NOT NULL,
	[StuID] [varchar](50) NOT NULL,
	[SubID] [varchar](50) NOT NULL,
	[AssID] [varchar](50) NOT NULL,
	[LID] [varchar](50) NOT NULL,
	[Mark] [float] NOT NULL,
 CONSTRAINT [PK_Grade] PRIMARY KEY CLUSTERED 
(
	[GradeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group]    Script Date: 7/17/2022 1:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group](
	[GID] [varchar](50) NOT NULL,
	[LID] [varchar](50) NOT NULL,
	[SubID] [varchar](50) NOT NULL,
	[ClassID] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[GID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lecturer]    Script Date: 7/17/2022 1:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecturer](
	[LID] [varchar](50) NOT NULL,
	[FName] [nvarchar](50) NOT NULL,
	[LName] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](150) NULL,
	[Gender] [bit] NOT NULL,
	[PhoneNumber] [int] NULL,
 CONSTRAINT [PK__Lecturer__C65557218A22DC6E] PRIMARY KEY CLUSTERED 
(
	[LID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Semester]    Script Date: 7/17/2022 1:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Semester](
	[SemID] [varchar](50) NOT NULL,
	[SemName] [varchar](150) NOT NULL,
	[Year] [nchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[SemID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student]    Script Date: 7/17/2022 1:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student](
	[StuID] [varchar](50) NOT NULL,
	[FName] [nvarchar](50) NOT NULL,
	[LName] [nvarchar](50) NOT NULL,
	[Major] [varchar](50) NOT NULL,
	[phoneNumber] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[StuID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Student_Class]    Script Date: 7/17/2022 1:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Student_Class](
	[StuID] [varchar](50) NOT NULL,
	[GID] [varchar](50) NOT NULL,
 CONSTRAINT [pk_Student_Class] PRIMARY KEY CLUSTERED 
(
	[StuID] ASC,
	[GID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Subject]    Script Date: 7/17/2022 1:53:45 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Subject](
	[SubID] [varchar](50) NOT NULL,
	[SubName] [varchar](150) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SubID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Assesment] ([AssID], [Type], [Part], [Weight], [Completion Criteria], [Duration], [Knowledge and Skill], [NOTE]) VALUES (N'ASM', N'On-going', 1, 0.2, N'>0', N'at home', N'sinple RDBS', NULL)
GO
INSERT [dbo].[Assesment] ([AssID], [Type], [Part], [Weight], [Completion Criteria], [Duration], [Knowledge and Skill], [NOTE]) VALUES (N'FE', N'final exam', 1, 0.3, N'>5', N'60''', N'all', NULL)
GO
INSERT [dbo].[Assesment] ([AssID], [Type], [Part], [Weight], [Completion Criteria], [Duration], [Knowledge and Skill], [NOTE]) VALUES (N'Labs', N'On-going', 5, 0.15, N'>0', N'in lab session', N'related to student modules ', NULL)
GO
INSERT [dbo].[Assesment] ([AssID], [Type], [Part], [Weight], [Completion Criteria], [Duration], [Knowledge and Skill], [NOTE]) VALUES (N'MT', N'quiz', 1, 0.3, N'>0', N'30''', N'dsafdsa', NULL)
GO
INSERT [dbo].[Assesment] ([AssID], [Type], [Part], [Weight], [Completion Criteria], [Duration], [Knowledge and Skill], [NOTE]) VALUES (N'PE', N'practical exam', 1, 0.25, N'>0', N'85''', N'DB programing skill', NULL)
GO
INSERT [dbo].[Assesment] ([AssID], [Type], [Part], [Weight], [Completion Criteria], [Duration], [Knowledge and Skill], [NOTE]) VALUES (N'PT', N'quiz', 2, 0.1, N'>0', N'20''', N'up to 04 covered chapters', NULL)
GO
INSERT [dbo].[Assesment_Subject] ([SubID], [AssID], [Weight], [TypeID], [Duration]) VALUES (N'CSD201', N'ASM', 0.2, N'On-going', N'at home')
GO
INSERT [dbo].[Assesment_Subject] ([SubID], [AssID], [Weight], [TypeID], [Duration]) VALUES (N'CSD201', N'Labs', 0.15, N'On-going', N'in labs session')
GO
INSERT [dbo].[Assesment_Subject] ([SubID], [AssID], [Weight], [TypeID], [Duration]) VALUES (N'CSD201', N'PT', 0.1, N'Quiz', N'20''')
GO
INSERT [dbo].[Assesment_Subject] ([SubID], [AssID], [Weight], [TypeID], [Duration]) VALUES (N'DBI202', N'ASM', 0.2, N'On-going', N'at home')
GO
INSERT [dbo].[Assesment_Subject] ([SubID], [AssID], [Weight], [TypeID], [Duration]) VALUES (N'DBI202', N'FE', 0.3, N'FE', N'60''')
GO
INSERT [dbo].[Assesment_Subject] ([SubID], [AssID], [Weight], [TypeID], [Duration]) VALUES (N'DBI202', N'Labs', 0.15, N'On-going', N'at home')
GO
INSERT [dbo].[Assesment_Subject] ([SubID], [AssID], [Weight], [TypeID], [Duration]) VALUES (N'DBI202', N'PE', 0.25, N'PE', N'85''')
GO
INSERT [dbo].[Assesment_Subject] ([SubID], [AssID], [Weight], [TypeID], [Duration]) VALUES (N'DBI202', N'PT', 0.1, N'On-going', N'20''')
GO
INSERT [dbo].[Assesment_Subject] ([SubID], [AssID], [Weight], [TypeID], [Duration]) VALUES (N'JPD113', N'MT', 0.3, N'On-going', N'30''')
GO
INSERT [dbo].[Assesment_Subject] ([SubID], [AssID], [Weight], [TypeID], [Duration]) VALUES (N'JPD113', N'PT', 0.1, N'Quiz', N'20''')
GO
INSERT [dbo].[Category] ([TypeID], [Decription]) VALUES (N'FE', N'asdfe')
GO
INSERT [dbo].[Category] ([TypeID], [Decription]) VALUES (N'Labs', N'dasfsda')
GO
INSERT [dbo].[Category] ([TypeID], [Decription]) VALUES (N'On-going', N'skdjfsasda')
GO
INSERT [dbo].[Category] ([TypeID], [Decription]) VALUES (N'PE', N'dajsf')
GO
INSERT [dbo].[Category] ([TypeID], [Decription]) VALUES (N'Quiz', N'dsjfdsljg')
GO
INSERT [dbo].[Class] ([ClassID], [ClassName]) VALUES (N'IA1604', N'IA1604                                            ')
GO
INSERT [dbo].[Class] ([ClassID], [ClassName]) VALUES (N'IA1605', N'IA1605                                            ')
GO
INSERT [dbo].[Class] ([ClassID], [ClassName]) VALUES (N'SE1623', N'SE1623                                            ')
GO
INSERT [dbo].[Class] ([ClassID], [ClassName]) VALUES (N'SE1653', N'SE1653                                            ')
GO
INSERT [dbo].[CLASS_Semester] ([ClassID], [SemID]) VALUES (N'IA1604', N'FALL21')
GO
INSERT [dbo].[CLASS_Semester] ([ClassID], [SemID]) VALUES (N'IA1604', N'SUM22')
GO
INSERT [dbo].[CLASS_Semester] ([ClassID], [SemID]) VALUES (N'IA1605', N'FALL22')
GO
INSERT [dbo].[CLASS_Semester] ([ClassID], [SemID]) VALUES (N'IA1605', N'SUM21')
GO
INSERT [dbo].[CLASS_Semester] ([ClassID], [SemID]) VALUES (N'SE1623', N'FALL22')
GO
INSERT [dbo].[CLASS_Semester] ([ClassID], [SemID]) VALUES (N'SE1623', N'SPR22')
GO
INSERT [dbo].[CLASS_Semester] ([ClassID], [SemID]) VALUES (N'SE1653', N'SPR21')
GO
INSERT [dbo].[CLASS_Semester] ([ClassID], [SemID]) VALUES (N'SE1653', N'SUM22')
GO
INSERT [dbo].[Grade] ([GradeID], [StuID], [SubID], [AssID], [LID], [Mark]) VALUES (N'1', N'HE130425', N'DBI202', N'PT', N'Sonnt5', 7)
GO
INSERT [dbo].[Grade] ([GradeID], [StuID], [SubID], [AssID], [LID], [Mark]) VALUES (N'10', N'HE160136', N'DBI202', N'PT', N'Sonnt5', 8)
GO
INSERT [dbo].[Grade] ([GradeID], [StuID], [SubID], [AssID], [LID], [Mark]) VALUES (N'11', N'HE160136', N'DBI202', N'ASM', N'Sonnt5', 7)
GO
INSERT [dbo].[Grade] ([GradeID], [StuID], [SubID], [AssID], [LID], [Mark]) VALUES (N'12', N'HE160136', N'CSD201', N'PT', N'Annt79', 9)
GO
INSERT [dbo].[Grade] ([GradeID], [StuID], [SubID], [AssID], [LID], [Mark]) VALUES (N'13', N'HE160136', N'CSD201', N'ASM', N'Annt79', 10)
GO
INSERT [dbo].[Grade] ([GradeID], [StuID], [SubID], [AssID], [LID], [Mark]) VALUES (N'15', N'HE130608', N'CSD201', N'PT', N'Annt79', 10)
GO
INSERT [dbo].[Grade] ([GradeID], [StuID], [SubID], [AssID], [LID], [Mark]) VALUES (N'16', N'HE160307', N'JPD113', N'PT', N'VanDT', 9)
GO
INSERT [dbo].[Grade] ([GradeID], [StuID], [SubID], [AssID], [LID], [Mark]) VALUES (N'2', N'HE130425', N'DBI202', N'ASM', N'Sonnt5', 6)
GO
INSERT [dbo].[Grade] ([GradeID], [StuID], [SubID], [AssID], [LID], [Mark]) VALUES (N'3', N'HE130425', N'DBI202', N'Labs', N'Sonnt5', 8)
GO
INSERT [dbo].[Grade] ([GradeID], [StuID], [SubID], [AssID], [LID], [Mark]) VALUES (N'4', N'HE130425', N'DBI202', N'PE', N'Sonnt5', 6)
GO
INSERT [dbo].[Grade] ([GradeID], [StuID], [SubID], [AssID], [LID], [Mark]) VALUES (N'5', N'HE130425', N'DBI202', N'FE', N'Sonnt5', 5)
GO
INSERT [dbo].[Grade] ([GradeID], [StuID], [SubID], [AssID], [LID], [Mark]) VALUES (N'6', N'HE130608', N'DBI202', N'ASM', N'Sonnt5', 7)
GO
INSERT [dbo].[Grade] ([GradeID], [StuID], [SubID], [AssID], [LID], [Mark]) VALUES (N'7', N'HE130608', N'DBI202', N'Labs', N'Sonnt5', 7)
GO
INSERT [dbo].[Grade] ([GradeID], [StuID], [SubID], [AssID], [LID], [Mark]) VALUES (N'8', N'HE130608', N'DBI202', N'PE', N'Sonnt5', 7)
GO
INSERT [dbo].[Grade] ([GradeID], [StuID], [SubID], [AssID], [LID], [Mark]) VALUES (N'9', N'HE130608', N'DBI202', N'FE', N'Sonnt5', 8)
GO
INSERT [dbo].[Group] ([GID], [LID], [SubID], [ClassID]) VALUES (N'IA1604-CSD', N'Annt79', N'CSD201', N'IA1604')
GO
INSERT [dbo].[Group] ([GID], [LID], [SubID], [ClassID]) VALUES (N'IA1604-DBI', N'Sonnt5', N'DBI202', N'IA1604')
GO
INSERT [dbo].[Group] ([GID], [LID], [SubID], [ClassID]) VALUES (N'IA1604-IAO', N'DucHM29', N'IAO202', N'IA1604')
GO
INSERT [dbo].[Group] ([GID], [LID], [SubID], [ClassID]) VALUES (N'IA1605_CSD', N'TienTD17', N'CSD201', N'IA1605')
GO
INSERT [dbo].[Group] ([GID], [LID], [SubID], [ClassID]) VALUES (N'IA1605_DBI', N'KhuongPD', N'DBI202', N'IA1605')
GO
INSERT [dbo].[Group] ([GID], [LID], [SubID], [ClassID]) VALUES (N'SE1623_LAB211', N'NangNTH', N'LAB211', N'SE1623')
GO
INSERT [dbo].[Group] ([GID], [LID], [SubID], [ClassID]) VALUES (N'SE1653_JPD', N'VanDT', N'JPD113', N'SE1653')
GO
INSERT [dbo].[Lecturer] ([LID], [FName], [LName], [Address], [Gender], [PhoneNumber]) VALUES (N'Annt79', N'Nguy???n', N'T??n ??n', N' ', 1, NULL)
GO
INSERT [dbo].[Lecturer] ([LID], [FName], [LName], [Address], [Gender], [PhoneNumber]) VALUES (N'DucHM29', N'Ho??ng', N'M???nh ?????c', N' ', 1, NULL)
GO
INSERT [dbo].[Lecturer] ([LID], [FName], [LName], [Address], [Gender], [PhoneNumber]) VALUES (N'HoaKT', N'Khu???t', N'Th??? Hoa', N'', 0, NULL)
GO
INSERT [dbo].[Lecturer] ([LID], [FName], [LName], [Address], [Gender], [PhoneNumber]) VALUES (N'KhuongPD', N'Ph??ng', N'Duy Kh????ng', N'\', 1, NULL)
GO
INSERT [dbo].[Lecturer] ([LID], [FName], [LName], [Address], [Gender], [PhoneNumber]) VALUES (N'NangNTH', N'Nguy???n', N'Th??? H???i N??ng', N'', 0, NULL)
GO
INSERT [dbo].[Lecturer] ([LID], [FName], [LName], [Address], [Gender], [PhoneNumber]) VALUES (N'Sonnt5', N'Ng??', N'T??ng S??n', N'', 1, NULL)
GO
INSERT [dbo].[Lecturer] ([LID], [FName], [LName], [Address], [Gender], [PhoneNumber]) VALUES (N'TienTD17', N'T???', N'????nh Ti???n', N'', 1, NULL)
GO
INSERT [dbo].[Lecturer] ([LID], [FName], [LName], [Address], [Gender], [PhoneNumber]) VALUES (N'TungH9', N'Ho??ng', N'T??ng', N'a', 1, NULL)
GO
INSERT [dbo].[Lecturer] ([LID], [FName], [LName], [Address], [Gender], [PhoneNumber]) VALUES (N'VanDT', N'?????', N'Th??? V??n', N'', 0, NULL)
GO
INSERT [dbo].[Semester] ([SemID], [SemName], [Year]) VALUES (N'FALL21', N'Fall202', NULL)
GO
INSERT [dbo].[Semester] ([SemID], [SemName], [Year]) VALUES (N'FALL22', N'Fall2022', NULL)
GO
INSERT [dbo].[Semester] ([SemID], [SemName], [Year]) VALUES (N'SPR21', N'Spring2021', NULL)
GO
INSERT [dbo].[Semester] ([SemID], [SemName], [Year]) VALUES (N'SPR22', N'Spring2022', NULL)
GO
INSERT [dbo].[Semester] ([SemID], [SemName], [Year]) VALUES (N'SUM21', N'Summer2021', NULL)
GO
INSERT [dbo].[Semester] ([SemID], [SemName], [Year]) VALUES (N'SUM22', N'Summer2022', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'	SE05692', N'Nguy???n ', N'H???u ?????c', N'SE', N'0163888245')
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE130025', N'Nguy???n ', N'Xu??n H???i', N'SE', N'0163888254')
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE130139', N'????o ', N'Ho??i Nam', N'SE', N'0163885687')
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE130425', N'V??', N'Qu???c Phong', N'SE', N'0163845687')
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE130608', N'D????ng', N'T??ng L??m', N'SE', N'0163457521')
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE130872', N'Nguy???n', N'Ti???n ?????t', N'SE', N'0165787548')
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE130919', N'Phan ', N'Vi???t B??ch', N'SE', N'0163845873')
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE130920', N'Nguy???n ', N'V??n Linh', N'SE', N'0163875466')
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE13100', N'Nguy???n ', N'V??n Thanh', N'SE', N'0164853421')
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE140272', N'B??i ', N'Duy H???i', N'SE', N'0163884567')
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE140399', N'H??? ', N'Qu???c B???o', N'SE', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE140585', N'Nguy???n', N'H???i Long', N'SE', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE140797', N'Nguy???n', N'Ho??i Nam', N'SE', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE141153', N'L?? ', N'Th??? Ti???u Mai', N'SE', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE150837', N'??inh ', N'C??ng L???p', N'SE', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE151170', N'Tr???nh ', N'Minh H??ng', N'SE', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE153561', N'Mai', N'Ho??ng Anh', N'SE', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE153622', N'Nguy???n ', N'Duy H??ng', N'SE', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE160136', N'?????', N'V??n Chung', N'IA', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE160307', N'Nguy???n ', N'V??n ?????c', N'IA', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE160318', N'L??', N'Vi???t Anh', N'IA', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE160594', N'H??', N'M???nh ?????t', N'IA', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE160666', N'T???', N'Vi???t Nam', N'IA', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE160866', N'V?? ', N'?????c Huy', N'SE', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE161106', N'Ch??u', N'Ng???c ?????c', N'IA', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE161116', N'????? ', N'?????c Anh', N'IA', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE161198', N'Nguy???n ', N'Nh???t Huy', N'IA', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE161260', N'Tr???n ', N'C??ng Do??n ?????t', N'SE', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE161665', N'Tr???n', N'Th??? Thanh T??m', N'IA', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE161753', N'Nguy???n', N'Th??nh ?????t', N'AI', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE161777', N'Tr???n', N'H???i H??', N'IA', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE161803', N'?????', N'Minh Qu??n', N'IA', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE161844', N'Nguy???n ', N'Ng???c D????ng', N'SE', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE161890', N'Nguy???n ', N'Doanh Th???nh', N'IA', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE163135', N'Nguy???n', N'T??ng D????ng', N'SE', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE163238', N'V??', N'Tu???n Anh', N'SE', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE163252', N'Ph???m', N'Th??? Ng???c Mai', N'SE', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE163374', N'Tri???u ', N'?????c Th??nh', N'IA', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE163469', N'V??', N'?????c Minh', N'SE', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE163474', N'L?? ', N'Kh???c Minh Hi???u', N'SE', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE163581', N'Nguy???n', N'V??n V????ng', N'IA', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE163589', N'Tr????ng', N'Ho??ng Minh', N'SE', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE163682', N'????o', N'V?? Hi???p ', N'IA', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE163693', N'????o', N'V?? Hi???p ', N'IA', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE163742', N'Nguy???n', N'C???nh Th????ng', N'IA', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE163767', N'Nguy???n ', N'Quang Huy', N'SE', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE163790', N'Nguy???n ', N'Nh???t Nam', N'IA', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE163833', N'Nguy???n', N'V??n Quang', N'SE', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE163856', N'Tr???nh ', N'T??ng S??n', N'IA', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE163868', N'Ph???m', N'H???ng ????ng', N'IA', NULL)
GO
INSERT [dbo].[Student] ([StuID], [FName], [LName], [Major], [phoneNumber]) VALUES (N'HE163963', N'V?? ', N'Vi???t M???nh', N'IA', NULL)
GO
INSERT [dbo].[Subject] ([SubID], [SubName]) VALUES (N'CSD201', N'Data Structures and Algorithms')
GO
INSERT [dbo].[Subject] ([SubID], [SubName]) VALUES (N'DBI202', N'Introduction to Databases')
GO
INSERT [dbo].[Subject] ([SubID], [SubName]) VALUES (N'IAO202', N'Introduction to Information Assurance')
GO
INSERT [dbo].[Subject] ([SubID], [SubName]) VALUES (N'JPD113', N'Elementary Japanese 1-A1.1')
GO
INSERT [dbo].[Subject] ([SubID], [SubName]) VALUES (N'LAB211', N'OOP with Java Lab')
GO
INSERT [dbo].[Subject] ([SubID], [SubName]) VALUES (N'MAD101', N'Discrete mathematics')
GO
INSERT [dbo].[Subject] ([SubID], [SubName]) VALUES (N'NWC204', N'Computer Networking')
GO
INSERT [dbo].[Subject] ([SubID], [SubName]) VALUES (N'OSG202', N'Operating Systems')
GO
INSERT [dbo].[Subject] ([SubID], [SubName]) VALUES (N'PRO192', N'Object-Oriented Programming')
GO
INSERT [dbo].[Subject] ([SuID], [SuName]) VALUES (N'SSG104', N'Communication and In-Group Working Skills')
GO
ALTER TABLE [dbo].[Assesment_Subject]  WITH CHECK ADD  CONSTRAINT [fk_Assesment] FOREIGN KEY([AssID])
REFERENCES [dbo].[Assesment] ([AssID])
GO
ALTER TABLE [dbo].[Assesment_Subject] CHECK CONSTRAINT [fk_Assesment]
GO
ALTER TABLE [dbo].[Assesment_Subject]  WITH CHECK ADD  CONSTRAINT [FK_Assesment_Subject_Category] FOREIGN KEY([TypeID])
REFERENCES [dbo].[Category] ([TypeID])
GO
ALTER TABLE [dbo].[Assesment_Subject] CHECK CONSTRAINT [FK_Assesment_Subject_Category]
GO
ALTER TABLE [dbo].[Assesment_Subject]  WITH CHECK ADD  CONSTRAINT [fK_Subject] FOREIGN KEY([SubID])
REFERENCES [dbo].[Subject] ([SubID])
GO
ALTER TABLE [dbo].[Assesment_Subject] CHECK CONSTRAINT [fK_Subject]
GO
ALTER TABLE [dbo].[CLASS_Semester]  WITH CHECK ADD  CONSTRAINT [FK_CLASS_Semester_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[CLASS_Semester] CHECK CONSTRAINT [FK_CLASS_Semester_Class]
GO
ALTER TABLE [dbo].[CLASS_Semester]  WITH CHECK ADD  CONSTRAINT [FK_CLASS_Semester_Semester] FOREIGN KEY([SemID])
REFERENCES [dbo].[Semester] ([SemID])
GO
ALTER TABLE [dbo].[CLASS_Semester] CHECK CONSTRAINT [FK_CLASS_Semester_Semester]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [fk_Grade1] FOREIGN KEY([StuID])
REFERENCES [dbo].[Student] ([StuID])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [fk_Grade1]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [fk_Grade2] FOREIGN KEY([SubID])
REFERENCES [dbo].[Subject] ([SubID])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [fk_Grade2]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [fk_Grade3] FOREIGN KEY([AssID])
REFERENCES [dbo].[Assesment] ([AssID])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [fk_Grade3]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [fk_Grade4] FOREIGN KEY([LID])
REFERENCES [dbo].[Lecturer] ([LID])
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [fk_Grade4]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [fk_Group] FOREIGN KEY([LID])
REFERENCES [dbo].[Lecturer] ([LID])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [fk_Group]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [FK_Group_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([ClassID])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [FK_Group_Class]
GO
ALTER TABLE [dbo].[Group]  WITH CHECK ADD  CONSTRAINT [fk_Group2] FOREIGN KEY([SubID])
REFERENCES [dbo].[Subject] ([SubID])
GO
ALTER TABLE [dbo].[Group] CHECK CONSTRAINT [fk_Group2]
GO
ALTER TABLE [dbo].[Student_Class]  WITH CHECK ADD  CONSTRAINT [fk_Group1] FOREIGN KEY([GID])
REFERENCES [dbo].[Group] ([GID])
GO
ALTER TABLE [dbo].[Student_Class] CHECK CONSTRAINT [fk_Group1]
GO
ALTER TABLE [dbo].[Student_Class]  WITH CHECK ADD  CONSTRAINT [fk_Student_Class] FOREIGN KEY([StuID])
REFERENCES [dbo].[Student] ([StuID])
GO
ALTER TABLE [dbo].[Student_Class] CHECK CONSTRAINT [fk_Student_Class]
GO
ALTER TABLE [dbo].[Grade]  WITH CHECK ADD  CONSTRAINT [Check_Mark] CHECK  (([Mark]>=(0) AND [Mark]<=(10)))
GO
ALTER TABLE [dbo].[Grade] CHECK CONSTRAINT [Check_Mark]
GO
