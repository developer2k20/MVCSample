USE [HRMS]
GO
/****** Object:  Table [dbo].[EmpSalary]    Script Date: 04/13/2016 13:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmpSalary](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[EmpId] [int] NULL,
	[Salary] [int] NULL,
	[SalaryMonth] [int] NULL,
	[SalaryYear] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EmpSalary] ON
INSERT [dbo].[EmpSalary] ([id], [EmpId], [Salary], [SalaryMonth], [SalaryYear]) VALUES (9, 1, 22500, 2, 2016)
INSERT [dbo].[EmpSalary] ([id], [EmpId], [Salary], [SalaryMonth], [SalaryYear]) VALUES (2, 1, 22500, 3, 2016)
INSERT [dbo].[EmpSalary] ([id], [EmpId], [Salary], [SalaryMonth], [SalaryYear]) VALUES (5, 2, 19600, 4, 2015)
INSERT [dbo].[EmpSalary] ([id], [EmpId], [Salary], [SalaryMonth], [SalaryYear]) VALUES (6, 3, 56000, 2, 2016)
SET IDENTITY_INSERT [dbo].[EmpSalary] OFF
/****** Object:  Table [dbo].[Employee]    Script Date: 04/13/2016 13:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmpId] [int] IDENTITY(1,1) NOT NULL,
	[EmpName] [nvarchar](100) NULL,
	[Email] [nvarchar](100) NULL,
	[State] [nvarchar](50) NULL,
	[City] [nvarchar](100) NULL,
	[Address] [nvarchar](max) NULL,
	[ZipCode] [nvarchar](6) NULL,
	[Deactive] [bit] NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[EmpId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Employee] ON
INSERT [dbo].[Employee] ([EmpId], [EmpName], [Email], [State], [City], [Address], [ZipCode], [Deactive], [CreatedOn], [ModifiedOn]) VALUES (1, N'sdgsfg', N'sanjeev.bt@gm.com', N'2', N'sdfgsdfg', N'new
near', N'452512', 0, CAST(0x0000A5CB014D2E03 AS DateTime), CAST(0x0000A5E5011C2F5B AS DateTime))
INSERT [dbo].[Employee] ([EmpId], [EmpName], [Email], [State], [City], [Address], [ZipCode], [Deactive], [CreatedOn], [ModifiedOn]) VALUES (2, N'basant', N'basant@b.com', N'26', N'sdgfsdfg', N'', N'525384', 0, CAST(0x0000A5CC01150030 AS DateTime), CAST(0x0000A5E201554192 AS DateTime))
INSERT [dbo].[Employee] ([EmpId], [EmpName], [Email], [State], [City], [Address], [ZipCode], [Deactive], [CreatedOn], [ModifiedOn]) VALUES (3, N'sfgsdgsdfg', N'sdgfsdfg@sdfgsdfg.com', N'2', N'sdfgsdg', N'sdfgg', N'', 0, CAST(0x0000A5D101112343 AS DateTime), CAST(0x0000A5E20114574A AS DateTime))
INSERT [dbo].[Employee] ([EmpId], [EmpName], [Email], [State], [City], [Address], [ZipCode], [Deactive], [CreatedOn], [ModifiedOn]) VALUES (4, N'sdgsdg', N'sanjeev.bt@gm1.com', N'1', N'sdgsdg', N'', N'', 0, CAST(0x0000A5D20112FAFB AS DateTime), CAST(0x0000A5E500E8E082 AS DateTime))
INSERT [dbo].[Employee] ([EmpId], [EmpName], [Email], [State], [City], [Address], [ZipCode], [Deactive], [CreatedOn], [ModifiedOn]) VALUES (5, N'sanjeev', N'sanjeev.bt@gm2.com', N'5', N'sdgsdgf', N'', N'', 0, CAST(0x0000A5D900FC2AD5 AS DateTime), NULL)
INSERT [dbo].[Employee] ([EmpId], [EmpName], [Email], [State], [City], [Address], [ZipCode], [Deactive], [CreatedOn], [ModifiedOn]) VALUES (7, N'vinod gupta', N'vinod@s.com', N'34', N'new delhi', N'no adderss', N'110059', 0, CAST(0x0000A5E5014EEDA0 AS DateTime), CAST(0x0000A5E5015379BF AS DateTime))
SET IDENTITY_INSERT [dbo].[Employee] OFF
/****** Object:  Table [dbo].[Users]    Script Date: 04/13/2016 13:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](50) NULL,
	[Password] [nvarchar](20) NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Email] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([id], [UserName], [Password], [FirstName], [LastName], [Email]) VALUES (1, N'sanjeev', N'test123', N'sanjeev', N'arora', N'sanjeevarora30@gmail.com')
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  Table [dbo].[States]    Script Date: 04/13/2016 13:52:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[States](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[StateName] [nvarchar](100) NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[States] ON
INSERT [dbo].[States] ([id], [StateName]) VALUES (1, N'Andhra Pradesh')
INSERT [dbo].[States] ([id], [StateName]) VALUES (2, N'Arunachal Pradesh')
INSERT [dbo].[States] ([id], [StateName]) VALUES (3, N'Assam')
INSERT [dbo].[States] ([id], [StateName]) VALUES (4, N'Bihar')
INSERT [dbo].[States] ([id], [StateName]) VALUES (5, N'Chhattisgarh')
INSERT [dbo].[States] ([id], [StateName]) VALUES (6, N'Goa')
INSERT [dbo].[States] ([id], [StateName]) VALUES (7, N'Gujarat')
INSERT [dbo].[States] ([id], [StateName]) VALUES (8, N'Haryana')
INSERT [dbo].[States] ([id], [StateName]) VALUES (9, N'Himachal Pradesh')
INSERT [dbo].[States] ([id], [StateName]) VALUES (10, N'Jammu and Kashmir')
INSERT [dbo].[States] ([id], [StateName]) VALUES (11, N'Jharkhand')
INSERT [dbo].[States] ([id], [StateName]) VALUES (12, N'Karnataka')
INSERT [dbo].[States] ([id], [StateName]) VALUES (13, N'Kerala')
INSERT [dbo].[States] ([id], [StateName]) VALUES (14, N'Madhya Pradesh')
INSERT [dbo].[States] ([id], [StateName]) VALUES (15, N'Maharashtra')
INSERT [dbo].[States] ([id], [StateName]) VALUES (16, N'Manipur')
INSERT [dbo].[States] ([id], [StateName]) VALUES (17, N'Meghalaya')
INSERT [dbo].[States] ([id], [StateName]) VALUES (18, N'Mizoram')
INSERT [dbo].[States] ([id], [StateName]) VALUES (19, N'Nagaland')
INSERT [dbo].[States] ([id], [StateName]) VALUES (20, N'Odisha(Orissa)')
INSERT [dbo].[States] ([id], [StateName]) VALUES (21, N'Punjab')
INSERT [dbo].[States] ([id], [StateName]) VALUES (22, N'Rajasthan')
INSERT [dbo].[States] ([id], [StateName]) VALUES (23, N'Sikkim')
INSERT [dbo].[States] ([id], [StateName]) VALUES (24, N'Tamil Nadu')
INSERT [dbo].[States] ([id], [StateName]) VALUES (25, N'Tripura')
INSERT [dbo].[States] ([id], [StateName]) VALUES (26, N'Uttar Pradesh')
INSERT [dbo].[States] ([id], [StateName]) VALUES (27, N'Uttarakhand')
INSERT [dbo].[States] ([id], [StateName]) VALUES (28, N'West Bengal')
INSERT [dbo].[States] ([id], [StateName]) VALUES (29, N'Andaman and Nicobar Islands')
INSERT [dbo].[States] ([id], [StateName]) VALUES (30, N'Chandigarh')
INSERT [dbo].[States] ([id], [StateName]) VALUES (31, N'Dadra and Nagar Haveli')
INSERT [dbo].[States] ([id], [StateName]) VALUES (32, N'Daman and Diu')
INSERT [dbo].[States] ([id], [StateName]) VALUES (33, N'Lakshadweep')
INSERT [dbo].[States] ([id], [StateName]) VALUES (34, N'Delhi')
INSERT [dbo].[States] ([id], [StateName]) VALUES (35, N'Puducherry (Pondicherry)')
SET IDENTITY_INSERT [dbo].[States] OFF
/****** Object:  StoredProcedure [dbo].[sp_ManageEmpSalary]    Script Date: 04/13/2016 13:53:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[sp_ManageEmpSalary]
(
	@id int,
	@EmpId int,
	@Salary decimal(10,2),
	@SalaryMonth int,
	@SalaryYear int,
	@CallType nvarchar(10)
)
as
begin
	if @CallType = 'insert'
	begin
		insert into EmpSalary
		(
			EmpId, Salary, SalaryMonth, SalaryYear
		)
		values
		(
			@EmpId, @Salary, @SalaryMonth, @SalaryYear
		)
	end
	
	if @CallType = 'update'
	begin
		update EmpSalary
		set Salary = @Salary, SalaryYear = @SalaryYear, SalaryMonth = @SalaryMonth
		where id = @id
	end
	
	if @CallType = 'delete'
	begin
		delete from EmpSalary
		where id = @id
	end
end
GO
/****** Object:  StoredProcedure [dbo].[sp_ManageEmployee]    Script Date: 04/13/2016 13:53:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[sp_ManageEmployee]
(
	@EmpId int,
	@EmpName nvarchar(100),
	@Email nvarchar(100),
	@State nvarchar(50),
	@City nvarchar(100),
	@Address nvarchar(max),
	@ZipCode nvarchar(6),
	@Deactive bit,
	@CallType nvarchar(10)
)
as
begin
	if @CallType = 'insert'
	begin
		insert into Employee
		(
			EmpName, Email, [State], City, [Address], ZipCode,
			Deactive, CreatedOn, ModifiedOn
		)
		values
		(
			@EmpName, @Email, @State, @City, @Address, @ZipCode,
			@Deactive, GETDATE(), null
		)
	end
	
	if @CallType = 'update'
	begin
		update Employee
		set EmpName = @EmpName, Email = @Email, [State] = @State, City = @City, [Address] = @Address, ZipCode = @ZipCode, Deactive = @Deactive,
			ModifiedOn = GETDATE()
		where EmpId = @EmpId
	end
end
GO
