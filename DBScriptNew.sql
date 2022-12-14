USE [master]
GO
CREATE DATABASE [ETransportationManagement]
 
GO
ALTER DATABASE [ETransportationManagement] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ETransportationManagement].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ETransportationManagement] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ETransportationManagement] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ETransportationManagement] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ETransportationManagement] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ETransportationManagement] SET ARITHABORT OFF 
GO
ALTER DATABASE [ETransportationManagement] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ETransportationManagement] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ETransportationManagement] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ETransportationManagement] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ETransportationManagement] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ETransportationManagement] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ETransportationManagement] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ETransportationManagement] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ETransportationManagement] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ETransportationManagement] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ETransportationManagement] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ETransportationManagement] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ETransportationManagement] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ETransportationManagement] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ETransportationManagement] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ETransportationManagement] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ETransportationManagement] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ETransportationManagement] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ETransportationManagement] SET  MULTI_USER 
GO
ALTER DATABASE [ETransportationManagement] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ETransportationManagement] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ETransportationManagement] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ETransportationManagement] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ETransportationManagement] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ETransportationManagement] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ETransportationManagement] SET QUERY_STORE = OFF
GO
USE [ETransportationManagement]
GO
/****** Object:  Table [dbo].[tblCities]    Script Date: 11-Oct-22 14:33:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblCities](
	[CityID] [int] IDENTITY(1,1) NOT NULL,
	[CityName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CityID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDriverLicenses]    Script Date: 11-Oct-22 14:33:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDriverLicenses](
	[DriverLicenseID] [char](12) NOT NULL,
	[Nationality] [nvarchar](100) NULL,
	[Class] [char](2) NOT NULL,
	[DateExpired] [date] NULL,
	[DriverID] [char](12) NULL,
PRIMARY KEY CLUSTERED 
(
	[DriverLicenseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblDrivers]    Script Date: 11-Oct-22 14:33:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblDrivers](
	[DriverID] [char](12) NOT NULL,
	[DriverName] [nvarchar](150) NOT NULL,
	[DOB] [date] NULL,
	[Sex] [bit] NULL,
	[DriverPic] [nvarchar](300) NOT NULL,
	[PhoneNumber] [char](11) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DriverID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblLocations]    Script Date: 11-Oct-22 14:33:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblLocations](
	[LocationID] [int] IDENTITY(1,1) NOT NULL,
	[LocationName] [nvarchar](100) NULL,
	[Address] [nvarchar](100) NULL,
	[CityID] [int] NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[LocationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblOrders]    Script Date: 11-Oct-22 14:33:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblOrders](
	[OrderID] [char](5) NOT NULL,
	[CreateDate] [datetime] NULL,
	[PaymentMode] [nvarchar](100) NULL,
	[UserID] [nvarchar](100) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[OrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRoles]    Script Date: 11-Oct-22 14:33:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRoles](
	[RoleID] [char](5) NOT NULL,
	[RoleName] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[RoleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblRoutes]    Script Date: 11-Oct-22 14:33:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblRoutes](
	[RouteID] [int] IDENTITY(1,1) NOT NULL,
	[RouteName] [nvarchar](100) NULL,
	[StartLocation] [int] NULL,
	[EndLocation] [int] NULL,
	[Description] [nvarchar](1000) NULL,
	[Status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[RouteID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblSeats]    Script Date: 11-Oct-22 14:33:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblSeats](
	[SeatID] [char](5) NOT NULL,
	[Price] [decimal](18, 0) NULL,
	[Status] [bit] NULL,
	[TripID] [char](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[SeatID] ASC,
	[TripID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTickets]    Script Date: 11-Oct-22 14:33:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTickets](
	[TicketID] [int] IDENTITY(1,1) NOT NULL,
	[SeatID] [char](5) NOT NULL,
	[TripID] [char](5) NOT NULL,
	[OrderID] [char](5) NULL,
PRIMARY KEY CLUSTERED 
(
	[TicketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblTrips]    Script Date: 11-Oct-22 14:33:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblTrips](
	[TripID] [char](5) NOT NULL,
	[TripName] [nvarchar](100) NULL,
	[StartDateTime] [datetime] NOT NULL,
	[StartTime] [time](7) NOT NULL,
	[Policy] [nvarchar](2000) NULL,
	[RouteID] [int] NULL,
	[VehicleID] [char](5) NULL,
	[DriverID] [char](12) NULL,
	[SeatRemain] [int] NULL,
	[Status] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TripID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblUsers]    Script Date: 11-Oct-22 14:33:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblUsers](
	[UserID] [nvarchar](100) NOT NULL,
	[Username] [nvarchar](200) NOT NULL,
	[Password] [nvarchar](200) NOT NULL,
	[Email] [nvarchar](100) NOT NULL,
	[DOB] [date] NULL,
	[Address] [nvarchar](300) NULL,
	[PhoneNumber] [char](11) NULL,
	[Sex] [bit] NULL,
	[RoleID] [char](5) NULL,
	[AccountBalance] [decimal](18, 0) NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVehicles]    Script Date: 11-Oct-22 14:33:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVehicles](
	[VehicleID] [char](5) NOT NULL,
	[VehicleName] [nvarchar](100) NULL,
	[LicensePlate] [nvarchar](20) NULL,
	[VehicleTypeID] [int] NULL,
	[Status] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[VehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblVehicleTypes]    Script Date: 11-Oct-22 14:33:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblVehicleTypes](
	[VehicleTypeID] [int] IDENTITY(1,1) NOT NULL,
	[VehicleTypeName] [nvarchar](100) NULL,
	[TotalSeat] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[VehicleTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[tblCities] ON 
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (1, N'An Giang')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (2, N'B?? R???a - V??ng T??u')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (3, N'B???c Giang')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (4, N'B???c K???n')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (5, N'B???c Li??u')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (6, N'B???c Ninh')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (7, N'B???n Tre')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (8, N'B??nh ?????nh')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (9, N'B??nh D????ng')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (10, N'B??nh Ph?????c')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (11, N'B??nh Thu???n')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (12, N'C?? Mau')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (13, N'C???n Th??')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (14, N'Cao B???ng')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (15, N'???? N???ng')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (16, N'?????k L???k')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (17, N'?????k N??ng')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (18, N'??i???n Bi??n')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (19, N'?????ng Nai')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (20, N'?????ng Th??p')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (21, N'Gia Lai')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (22, N'H?? Giang')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (23, N'H?? Nam')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (24, N'H?? N???i')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (25, N'H?? T??nh')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (26, N'H???i D????ng')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (27, N'H???i Ph??ng')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (28, N'H???u Giang')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (29, N'H??a B??nh')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (30, N'H??ng Y??n')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (31, N'Kh??nh H??a')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (32, N'Ki??n Giang')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (33, N'Kon Tum')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (34, N'Lai Ch??u')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (35, N'L??m ?????ng')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (36, N'L???ng S??n')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (37, N'L??o Cai')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (38, N'Long An')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (39, N'Nam ?????nh')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (40, N'Ngh??? An')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (41, N'Ninh B??nh')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (42, N'Ninh Thu???n')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (43, N'Ph?? Th???')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (44, N'Ph?? Y??n')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (45, N'Qu???ng B??nh')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (46, N'Qu???ng Nam')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (47, N'Qu???ng Ng??i')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (48, N'Qu???ng Ninh')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (49, N'Qu???ng Tr???')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (50, N'S??c Tr??ng')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (51, N'S??n La')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (52, N'T??y Ninh')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (53, N'Th??i B??nh')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (54, N'Th??i Nguy??n')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (55, N'Thanh H??a')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (58, N'Th??nh ph??? H??? Ch?? Minh')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (56, N'Th???a Thi??n Hu???')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (57, N'Ti???n Giang')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (59, N'Tr?? Vinh')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (60, N'Tuy??n Quang')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (61, N'V??nh Long')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (62, N'V??nh Ph??c')
GO
INSERT [dbo].[tblCities] ([CityID], [CityName]) VALUES (63, N'Y??n B??i')
GO
SET IDENTITY_INSERT [dbo].[tblCities] OFF
GO
INSERT [dbo].[tblDriverLicenses] ([DriverLicenseID], [Nationality], [Class], [DateExpired], [DriverID]) VALUES (N'VT001       ', N'Vi???t Nam', N'B1', CAST(N'1997-03-12' AS Date), N'030202034704')
GO
INSERT [dbo].[tblDriverLicenses] ([DriverLicenseID], [Nationality], [Class], [DateExpired], [DriverID]) VALUES (N'VT002       ', N'Vi???t Nam', N'D ', CAST(N'1997-03-12' AS Date), N'065947369485')
GO
INSERT [dbo].[tblDriverLicenses] ([DriverLicenseID], [Nationality], [Class], [DateExpired], [DriverID]) VALUES (N'VT003       ', N'Vi???t Nam', N'C ', CAST(N'1997-03-12' AS Date), N'384950384739')
GO
INSERT [dbo].[tblDriverLicenses] ([DriverLicenseID], [Nationality], [Class], [DateExpired], [DriverID]) VALUES (N'VT004       ', N'Vi???t Nam', N'B2', CAST(N'1997-03-12' AS Date), N'483957209388')
GO
INSERT [dbo].[tblDriverLicenses] ([DriverLicenseID], [Nationality], [Class], [DateExpired], [DriverID]) VALUES (N'VT005       ', N'Vi???t Nam', N'C ', CAST(N'1997-03-12' AS Date), N'574839205937')
GO
INSERT [dbo].[tblDriverLicenses] ([DriverLicenseID], [Nationality], [Class], [DateExpired], [DriverID]) VALUES (N'VT006       ', N'Vi???t Nam', N'D ', CAST(N'1997-03-12' AS Date), N'844958937398')
GO
INSERT [dbo].[tblDriverLicenses] ([DriverLicenseID], [Nationality], [Class], [DateExpired], [DriverID]) VALUES (N'VT007       ', N'Vi???t Nam', N'B2', CAST(N'1997-03-12' AS Date), N'849504739458')
GO
INSERT [dbo].[tblDriverLicenses] ([DriverLicenseID], [Nationality], [Class], [DateExpired], [DriverID]) VALUES (N'VT008       ', N'Vi???t Nam', N'C ', CAST(N'1997-03-12' AS Date), N'889378529034')
GO
INSERT [dbo].[tblDriverLicenses] ([DriverLicenseID], [Nationality], [Class], [DateExpired], [DriverID]) VALUES (N'VT009       ', N'Vi???t Nam', N'D ', CAST(N'1997-03-12' AS Date), N'894590459723')
GO
INSERT [dbo].[tblDrivers] ([DriverID], [DriverName], [DOB], [Sex], [DriverPic], [PhoneNumber], [Status]) VALUES (N'030202034704', N'Ki???u Minh Hi???u', CAST(N'2002-08-23' AS Date), 1, N'', N'0912345678 ', 1)
GO
INSERT [dbo].[tblDrivers] ([DriverID], [DriverName], [DOB], [Sex], [DriverPic], [PhoneNumber], [Status]) VALUES (N'065947369485', N'Nguy???n Hi???n Vinh', CAST(N'2002-06-24' AS Date), 1, N'', N'0912345678 ', 1)
GO
INSERT [dbo].[tblDrivers] ([DriverID], [DriverName], [DOB], [Sex], [DriverPic], [PhoneNumber], [Status]) VALUES (N'384950384739', N'L?? Tu???n T??i', CAST(N'1993-07-29' AS Date), 1, N'', N'0912345678 ', 1)
GO
INSERT [dbo].[tblDrivers] ([DriverID], [DriverName], [DOB], [Sex], [DriverPic], [PhoneNumber], [Status]) VALUES (N'483957209388', N'Tr???n Nh???t Tu??n', CAST(N'1995-07-26' AS Date), 1, N'', N'0912345678 ', 2)
GO
INSERT [dbo].[tblDrivers] ([DriverID], [DriverName], [DOB], [Sex], [DriverPic], [PhoneNumber], [Status]) VALUES (N'574839205937', N'Nguy???n Vinh Hoa', CAST(N'1992-07-29' AS Date), 1, N'', N'0912345678 ', 0)
GO
INSERT [dbo].[tblDrivers] ([DriverID], [DriverName], [DOB], [Sex], [DriverPic], [PhoneNumber], [Status]) VALUES (N'844958937398', N'?????ng Tu???n T??i', CAST(N'1994-07-23' AS Date), 1, N'', N'0912345678 ', 1)
GO
INSERT [dbo].[tblDrivers] ([DriverID], [DriverName], [DOB], [Sex], [DriverPic], [PhoneNumber], [Status]) VALUES (N'849504739458', N'T?? M??? L???', CAST(N'2000-01-27' AS Date), 0, N'', N'0912345678 ', 1)
GO
INSERT [dbo].[tblDrivers] ([DriverID], [DriverName], [DOB], [Sex], [DriverPic], [PhoneNumber], [Status]) VALUES (N'889378529034', N'Ng?? Ng???c V??n Trang', CAST(N'2002-02-24' AS Date), 0, N'', N'0912345678 ', 2)
GO
INSERT [dbo].[tblDrivers] ([DriverID], [DriverName], [DOB], [Sex], [DriverPic], [PhoneNumber], [Status]) VALUES (N'894590459723', N'????ng Th??? H????ng', CAST(N'1997-03-12' AS Date), 0, N'', N'0912345678 ', 0)
GO
SET IDENTITY_INSERT [dbo].[tblLocations] ON 
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (1, N'?????k L???k', N'172 L?? Du???n, TP Bu??n Ma Thu???t, ?????k L???k', 16, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (2, N'?????k N??ng', N'226 Hai B?? Tr??ng, Ngh??a Th??nh, Gia Ngh??a, ?????k N??ng', 17, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (3, N'CH??U ?????C', N'89 Phan V??n V??ng , P.Ch??u Ph?? B, TP.Ch??u ?????c, An Giang', 1, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (4, N'B???C LI??U', N'QL1A, Kh??m 2, P.7, TP.B???c Li??u, B???c Li??u', 5, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (5, N'B???N TRE', N'???????ng V?? Nguy??n Gi??p, Qu???c l??? 60, x?? S??n ????ng, Tp. B???n Tre, T???nh B???n Tre', 7, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (6, N'C?? MAU', N'309 L?? Th?????ng Ki???t, P.6, TP.C?? Mau, C?? Mau', 12, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (7, N'N??M C??N', N'Kh??m C??i Nai, TT.N??m C??n, H.N??m C??n, C?? Mau (BX N??m C??n)', 12, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (8, N'H??? PH??NG', N'K??nh 6 QL 1A, ???p 1, Ng?? 3 Gi?? Ray, B???c Li??u', 5, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (9, N'91B', N'91B Nguy???n V??n Linh, P.H??ng L???i, Q.Ninh Ki???u, TP.C???n Th?? (BX 91B C???n Th??)', 13, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (10, N'?? M??N', N'QL91, P.Ch??u V??n Li??m, Q.?? M??n, TP.C???n Th?? (BX ?? M??n)', 13, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (11, N'CAO L??NH', N'17-19 V?? Th??? S??u, P.2, TP.Cao L??nh, ?????ng Th??p', 20, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (12, N'V???NH TRE', N'X?? V??nh Th???nh Trung, TT.C??i D???u, H.Ch??u Ph??, An Giang', 1, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (13, N'BX M???I CH??U ?????C', N'QL 91, T??n ?????c Th???ng, P.V??nh M???, TP.Ch??u ?????c, An Giang (BX M???i Ch??u ?????c)', 1, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (14, N'CH??? R???Y', N'20 Ph???m H???u Ch??, Ph?????ng 11, Qu???n 5, Th??nh ph??? H??? Ch?? Minh', 58, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (15, N'???? L???T', N'01 T?? Hi???n Th??nh, P.6, TP.???? L???t, L??m ?????ng', 35, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (16, N'?????C TR???NG', N'695-697, QL20 Li??n Ngh??a, H.?????c Tr???ng, L??m ?????ng', 35, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (17, N'DI LINH', N'735 H??ng V????ng, TT.Di Linh, H.Di Linh, L??m ?????ng', 35, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (18, N'B???O L???C', N'280 Tr???n Ph??, TX.B???o L???c, L??m ?????ng', 35, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (19, N'H?? TI??N', N'QL80, KP 5, P.B??nh San, TX.H?? Ti??n, Ki??n Giang (BX H?? Ti??n)', 32, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (20, N'KI??N L????NG', N'397 QL 80, KP Ng?? ba, TT.Ki??n L????ng, H.Ki??n L????ng, Ki??n Giang', 32, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (21, N'BA H??N', N'QL 80, T??? 3, KP Ki??n T??n, TT.Ki??n L????ng, H.Ki??n L????ng, Ki??n Giang', 32, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (22, N'NG?? 7 PH???NG HI???P', N'BX Ng?? 7, P.Ng?? B???y, TX.Ng?? B???y, H???u Giang', 28, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (23, N'H???NG NG???', N'Ng?? 4 V?? V??n Ki???t - ??i???n Bi??n Ph???, P.Thanh An, TX.H???ng Ng???, ?????ng Th??p', 20, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (24, N'L??M ?????NG', N'795 - QL20 - TT Li??n Ngh??a - Huy???n ?????c Tr???ng - L??m ?????ng', 35, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (25, N'B??NH H??A', N'QL91, X.B??nh H??a, H.Ch??u Th??nh, An Giang', 1, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (26, N'LONG XUY??N', N'99 H??m Nghi, P. B??nh Kh??nh, TP.Long Xuy??n, An Giang', 1, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (27, N'V??M C???NG', N'B???n Ph?? V??m C???ng,  TP.Long Xuy??n, An Giang', 1, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (28, N'L??? T??? TRI T??N', N'Ng?? 3 L??? T??? Tri T??n, X.B??nh H??a, H.Ch??u Th??nh, An Giang', 1, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (29, N'PH?? H??A', N'??p Ph?? H???u, TT.Ph?? H??a, H.Tho???i S??n, An Giang', 1, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (30, N'AN H??A', N'19-20X L?? Th??i T???, P.M??? Long, TP.Long Xuy??n (c??ch c???ng ph?? An H??a 50m)', 1, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (31, N'NGUY???N C?? TRINH', N'26 Nguy???n C?? Trinh, Ph?????ng Ph???m Ng?? L??o, Qu???n 1', 58, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (32, N'BX PH??A NAM', N'64 Tr???n Qu?? C??p, TP.Phan Thi???t, B??nh Thu???n', 11, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (33, N'BX PH??A B???C', N'01 T??? V??n T??, TP.Phan Thi???t, B??nh Thu???n', 11, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (34, N'PHAN THI???T', N'121 T??n ?????c Th???ng, TP.Phan Thi???t, B??nh Thu???n', 11, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (35, N'M??I N??', N'20 Hu???nh Th???c Kh??ng, P.H??m Ti???n, TP.Phan Thi???t, B??nh Thu???n', 11, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (36, N'VP 326 ???????NG 19/04', N'326 ???????ng 19/04, P.Xu??n An, TP.Phan Thi???t, B??nh Thu???n', 11, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (37, N'R???CH S???I', N'12 Mai Th??? H???ng H???nh, KP3, P.R???ch S???i, TP.Ki??n Giang, Ki??n Giang (BX R???ch S???i)', 32, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (38, N'R???CH GI??', N'260A Nguy???n B???nh Khi??m, P.V??nh Quang, TP.R???ch Gi??, Ki??n Giang (BX R???ch Gi??)', 32, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (39, N'L???C H???NG', N'67-69 L???c H???ng, P.V??nh L???c, TP.R???ch Gi??, Ki??n Giang', 32, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (40, N'T??N HI???P', N'137-139 ???p ????ng H??ng, TT.T??n Hi???p, H.T??n Hi???p, Ki??n Giang', 32, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (41, N'SA ????C', N'149/8 Kh??m H??a Kh??nh, P.2, TP.Sa ????c, ?????ng Th??p', 20, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (42, N'LAI VUNG', N'137A QL80, X.H??a Long, H.Lai Vung, ?????ng Th??p', 20, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (43, N'L???P V??', N'135 ???????ng 3/2, ???p B??nh Th???nh 1, TT.L???p V??, H.L???p V??, ?????ng Th??p', 20, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (44, N'C??I T??U H???', N'QL80, Kh??m Ph?? M??? Hi???p, TT.C??i T??u H???, H.Ch??u Th??nh, ?????ng Th??p', 20, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (45, N'S??I G??N', N'9 ?????ng Th??i Th??n, Ph?????ng 11, Qu???n 5, Th??nh ph??? H??? Ch?? Minh', 58, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (46, N'S??I G??N', N'68 N?? Trang Long, Ph?????ng 14, Qu???n B??nh Th???nh, Th??nh ph??? H??? Ch?? Minh', 58, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (47, N'S??C TR??NG', N'38 L?? Du???n, P.3, TP.S??c Tr??ng, S??c Tr??ng', 50, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (48, N'An Tr???ch', N'720 QL 1A, ???p An Tr???ch, X.An Hi??p, H.Ch??u Th??nh, S??c Tr??ng', 50, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (49, N'?????NG T??M', N'Ng?? 4 ?????ng T??m, ???p 4, X.Tam Hi???p, H.Ch??u Th??nh, Ti???n Giang', 57, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (50, N'BX MI???N T??Y - QU???Y 32-33', N'395 - 397 Kinh D????ng V????ng, P.An L???c, Q.B??nh T??n, TP.HCM', 58, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (51, N'SU???I LINH', N'D9 T??? 2, KP4, XLHN, P.Long B??nh, TP. Bi??n H??a (ng?? 3 Tam Hi???p, Su???i Linh)', 19, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (52, N'BX MI???N ????NG', N'292 ??inh B??? L??nh, P.26, Q.B??nh Th???nh, TP.HCM', 58, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (53, N'Y D?????C', N'15 L?? A ?????ng Th??i Th??n, P.11, Q.5, TP.HCM', 58, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (54, N'CAO V??N L???U', N'94 Cao V??n L???u, Q.6, TP.HCM', 58, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (55, N'????? TH??M', N'272 ????? Th??m, P.Pham ng?? L??o, Q.1, TP.HCM', 58, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (56, N'231 L?? H???NG PHONG', N'231 - 233 L?? H???ng Phong, P.4, Q.5, TP.HCM', 58, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (57, N'H??NG XANH', N'486H ??i???n Bi??n Ph???, P.21, Q.B??nh Th???nh, TP.HCM', 58, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (58, N'XA L??? H?? N???I', N'798 Xa L??? H?? N???i, P.Hi???p Ph??, Q.9, TP.HCM', 58, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (59, N'TR?? VINH', N'559 QL54, Kh??m 4, P.9, TP.Tr?? Vinh, Tr?? Vinh (BX Tr?? Vinh)', 59, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (60, N'KINH C??NG', N'TT.Kinh C??ng, H.Ph???ng Hi???p, H???u Giang', 28, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (61, N'V??? THANH', N'Tr???n H??ng ?????o (n???i d??i,1), P.5, TP.V??? Thanh, H???u Giang', 28, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (62, N'V??NH T?????NG', N'275 ???p B??nh T??n, X.Long B??nh, TX.Long M???, H???u Giang', 28, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (63, N'C??I T???C', N'???p T??n Ph??, TT.C??i T???c, H.Ch??u Th??nh A, H???u Giang', 28, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (64, N'V??NH LONG', N'1E ??inh Ti??n Ho??ng, P.8, TP.V??nh Long, V??nh Long (BX V??nh Long)', 61, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (65, N'Song Ph??', N'L?? A-27 Khu ???? th??? m???i Ch??? Song Ph??, ???p Ph?? Ninh, X.Song Ph??, H.Tam B??nh,V??nh Long', 61, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (66, N'B??NH MINH', N'Kh??m 2, P.Th??nh Ph?????c, TX.B??nh Minh, V??nh Long', 61, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (67, N'BX V??NG T??U', N'192 Nam K??? Kh???i Ngh??a, P.3, TP.V??ng T??u', 2, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (68, N'B?? R???A', N'Nguy???n Thanh ?????ng, P.Ph?????c Hi???p, TP.B?? R???a, B?? R???a - V??ng T??u (BX B?? R???a)', 2, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (69, N'???O ??NG T???', N'1632 ???????ng 30/4, P.12, TP.V??ng T??u', 2, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (70, N'T??N TH??NH', N'Th??n T??n Ng???c, TT.Ph?? M???, H.T??n Th??nh, B?? R???a - V??ng T??u', 2, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (71, N'B???N XE NINH THU???N', N'52 Qu???c l??? 1A, ????i S??n, Phan Rang-Th??p Ch??m, Ninh Thu???n', 42, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (72, N'BX ???? N???NG', N'37 Nam Tr??n, P.H??a Minh, Q.Li??n Chi???u, TP.???? N???ng (BX ???? N???ng)', 15, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (73, N'NAM PH?????C', N'QL1 TT.Nam Ph?????c,  H.Duy Xuy??n, Qu???ng Nam (BX Nam ph?????c)', 46, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (74, N'MA L??M', N'462 ???????ng 8/4 (QL28), Khu ph??? 1, Th??? tr???n Ma L??m, Huy???n H??m Thu???n B???c, B??nh thu???n', 11, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (75, N'NG?? GIA T???', N'210  Ng?? Gia T???, Ph?????ng Thanh S??n, TP. Phan Rang', 42, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (76, N'07 HO??NG HOA TH??M', N'7 Ho??ng Hoa Th??m, TP.Nha Trang, Kh??nh H??a', 31, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (77, N'BX PH??A NAM', N'???????ng 23/10, TT.Di??n Kh??nh, H.Di??n Kh??nh, Kh??nh H??a', 31, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (78, N'BX PH??A B???C', N'01 ???????ng 2/4, P.V??nh H??a, TP.Nha Trang, Kh??nh H??a', 31, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (79, N'DI??N KH??NH', N'181 L???c Long Qu??n, TT.Di??n Kh??nh, H.Di??n Kh??nh, Kh??nh H??a', 31, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (80, N'CAM RANH', N'1 L?? Du???n, P.Cam L???c, TP.Cam Ranh, Kh??nh H??a', 31, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (81, N'Ninh H??a', N'QL1A, Th??n Thanh Ch??u, P.Ninh Giang, TX.Ninh H??a, Kh??nh H??a (BX Ninh H??a)', 31, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (82, N'PHAN R??', N'Qu???c L???  1A, Th??? tr???n Phan R?? C???a, Huy???n Tuy Phong, T???nh B??nh Thu???n', 11, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (83, N'PH?? QU??', N'144 QL1A Ph?? Qu??, Th??? tr???n Ph?????c D??n, Huy???n Ninh Ph?????c, Ninh Thu???n', 42, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (84, N'QU???NG NG??I', N'B?? Tri???u, P.Ngh??a Ch??nh, TP.Qu???ng Ng??i, Qu???ng Ng??i', 47, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (85, N'B??NH S??N', N'T??? 5 L?? ?????i H??nh, TT.Ch??u ???, B??nh S??n, Qu???ng Ng??i', 47, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (86, N'QUY NH??N', N'187 T??y S??n, P.Gh???nh Tr???ng, TP.Quy Nh??n, B??nh ?????nh', 8, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (87, N'PH?? T??I', N'Ng?? ba Ph?? T??i, 129 L???c Long Qu??n, P.Tr???n Quang Di???u, TP.Quy Nh??n, B??nh ?????nh', 8, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (88, N'BX GI??P B??T', N'Km s??? 6, ???????ng Gi???i Ph??ng, P.Ho??ng Li???t, Q.Ho??ng Mai, H?? N???i (BX Gi??p B??t)', 24, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (89, N'BX PH??A NAM', N'97 An D????ng V????ng, P.An T??y, TP.Hu???, Th???a Thi??n - Hu???', 56, 1)
GO
INSERT [dbo].[tblLocations] ([LocationID], [LocationName], [Address], [CityID], [Status]) VALUES (90, N'BX NAM ?????NH', N'Km s??? 2, ???????ng ??i???n Bi??n, X.L???c H??a, TP.Nam ?????nh, Nam ?????nh (BX Nam ?????nh)', 39, 1)
GO
SET IDENTITY_INSERT [dbo].[tblLocations] OFF
GO
INSERT [dbo].[tblRoles] ([RoleID], [RoleName]) VALUES (N'1    ', N'User')
GO
INSERT [dbo].[tblRoles] ([RoleID], [RoleName]) VALUES (N'2    ', N'Staff')
GO
INSERT [dbo].[tblUsers] ([UserID], [Username], [Password], [Email], [DOB], [Address], [PhoneNumber], [Sex], [RoleID], [AccountBalance], [Status]) VALUES (N'admin', N'L?? ?????c Minh', N'admin', N'ducminh@gmail.com', CAST(N'1996-07-13' AS Date), N'48 L??y B??n B??ch, B??nh T??n, HCM', N'0912345678 ', 1, N'2    ', CAST(0 AS Decimal(18, 0)), 1)
GO
INSERT [dbo].[tblUsers] ([UserID], [Username], [Password], [Email], [DOB], [Address], [PhoneNumber], [Sex], [RoleID], [AccountBalance], [Status]) VALUES (N'buoncuatoi', N'T?? Thi L??', N'123', N'toly@gmail.com', CAST(N'1996-06-22' AS Date), N'48 Luy B??n B??ch, B??nh T??n, HCM', N'0912345678 ', 0, N'1    ', CAST(450000 AS Decimal(18, 0)), 1)
GO
INSERT [dbo].[tblUsers] ([UserID], [Username], [Password], [Email], [DOB], [Address], [PhoneNumber], [Sex], [RoleID], [AccountBalance], [Status]) VALUES (N'coanhcho', N'L?? V??n Minh', N'123', N'vanminh@gmail.com', CAST(N'1998-09-11' AS Date), N'56 T??n H??a ????ng, B??nh T??n, HCM', N'0912345679 ', 1, N'1    ', CAST(400000 AS Decimal(18, 0)), 1)
GO
INSERT [dbo].[tblUsers] ([UserID], [Username], [Password], [Email], [DOB], [Address], [PhoneNumber], [Sex], [RoleID], [AccountBalance], [Status]) VALUES (N'conangbian', N'L?? Ng???c Di???p', N'123', N'bian@gmail.com', CAST(N'1996-06-15' AS Date), N'48 L??y B??n B??ch, B??nh T??n, HCM', N'0912345678 ', 0, N'2    ', CAST(0 AS Decimal(18, 0)), 1)
GO
INSERT [dbo].[tblUsers] ([UserID], [Username], [Password], [Email], [DOB], [Address], [PhoneNumber], [Sex], [RoleID], [AccountBalance], [Status]) VALUES (N'nangchoichang', N'Tr???n Quang ?????i', N'123', N'quangdai@gmail.com', CAST(N'1996-06-12' AS Date), N'48 L??y B??n B??ch, B??nh T??n, HCM', N'0912345678 ', 1, N'1    ', CAST(300000 AS Decimal(18, 0)), 1)
GO
INSERT [dbo].[tblVehicles] ([VehicleID], [VehicleName], [LicensePlate], [VehicleTypeID], [Status]) VALUES (N'VE001', N'Limousin', N'51H-95044', 1, 1)
GO
INSERT [dbo].[tblVehicles] ([VehicleID], [VehicleName], [LicensePlate], [VehicleTypeID], [Status]) VALUES (N'VE002', N'Limousin', N'51A-85144', 1, 1)
GO
INSERT [dbo].[tblVehicles] ([VehicleID], [VehicleName], [LicensePlate], [VehicleTypeID], [Status]) VALUES (N'VE003', N'Limousin', N'51F-95044', 2, 1)
GO
INSERT [dbo].[tblVehicles] ([VehicleID], [VehicleName], [LicensePlate], [VehicleTypeID], [Status]) VALUES (N'VE004', N'Limousin', N'30A-12893', 3, 1)
GO
INSERT [dbo].[tblVehicles] ([VehicleID], [VehicleName], [LicensePlate], [VehicleTypeID], [Status]) VALUES (N'VE005', N'Limousin', N'51F-03336', 1, 1)
GO
INSERT [dbo].[tblVehicles] ([VehicleID], [VehicleName], [LicensePlate], [VehicleTypeID], [Status]) VALUES (N'VE006', N'Limousin', N'51G-83060', 2, 1)
GO
INSERT [dbo].[tblVehicles] ([VehicleID], [VehicleName], [LicensePlate], [VehicleTypeID], [Status]) VALUES (N'VE007', N'Hyundai County', N'51C-88634', 1, 1)
GO
INSERT [dbo].[tblVehicles] ([VehicleID], [VehicleName], [LicensePlate], [VehicleTypeID], [Status]) VALUES (N'VE008', N'Limousin', N'51T-99999', 1, 1)
GO
INSERT [dbo].[tblVehicles] ([VehicleID], [VehicleName], [LicensePlate], [VehicleTypeID], [Status]) VALUES (N'VE009', N'Hyundai Universe', N'75A-14519', 3, 1)
GO
INSERT [dbo].[tblVehicles] ([VehicleID], [VehicleName], [LicensePlate], [VehicleTypeID], [Status]) VALUES (N'VE010', N'Hyundai Aero Hi-class', N'34A-12913', 3, 1)
GO
INSERT [dbo].[tblVehicles] ([VehicleID], [VehicleName], [LicensePlate], [VehicleTypeID], [Status]) VALUES (N'VE011', N'Hyundai Space', N'51U-13436', 4, 1)
GO
INSERT [dbo].[tblVehicles] ([VehicleID], [VehicleName], [LicensePlate], [VehicleTypeID], [Status]) VALUES (N'VE012', N'Huyndai Aero Town', N'51C-13560', 4, 1)
GO
SET IDENTITY_INSERT [dbo].[tblVehicleTypes] ON 
GO
INSERT [dbo].[tblVehicleTypes] ([VehicleTypeID], [VehicleTypeName], [TotalSeat]) VALUES (1, N'Xe 16 ch???', 16)
GO
INSERT [dbo].[tblVehicleTypes] ([VehicleTypeID], [VehicleTypeName], [TotalSeat]) VALUES (2, N'Xe 29 ch???', 29)
GO
INSERT [dbo].[tblVehicleTypes] ([VehicleTypeID], [VehicleTypeName], [TotalSeat]) VALUES (3, N'Xe 45 ch???', 45)
GO
SET IDENTITY_INSERT [dbo].[tblVehicleTypes] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tblCitie__886159E51651116D]    Script Date: 11-Oct-22 14:33:47 ******/
ALTER TABLE [dbo].[tblCities] ADD UNIQUE NONCLUSTERED 
(
	[CityName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tblUsers__536C85E4C0E38287]    Script Date: 11-Oct-22 14:33:47 ******/
ALTER TABLE [dbo].[tblUsers] ADD UNIQUE NONCLUSTERED 
(
	[Username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblDrivers] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tblLocations] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[tblOrders] ADD  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[tblOrders] ADD  DEFAULT ((0)) FOR [Status]
GO
ALTER TABLE [dbo].[tblRoutes] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tblSeats] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tblTrips] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tblUsers] ADD  DEFAULT ((0)) FOR [AccountBalance]
GO
ALTER TABLE [dbo].[tblUsers] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tblVehicles] ADD  DEFAULT ((1)) FOR [Status]
GO
ALTER TABLE [dbo].[tblDriverLicenses]  WITH CHECK ADD FOREIGN KEY([DriverID])
REFERENCES [dbo].[tblDrivers] ([DriverID])
GO
ALTER TABLE [dbo].[tblLocations]  WITH CHECK ADD FOREIGN KEY([CityID])
REFERENCES [dbo].[tblCities] ([CityID])
GO
ALTER TABLE [dbo].[tblOrders]  WITH CHECK ADD FOREIGN KEY([UserID])
REFERENCES [dbo].[tblUsers] ([UserID])
GO
ALTER TABLE [dbo].[tblRoutes]  WITH CHECK ADD FOREIGN KEY([EndLocation])
REFERENCES [dbo].[tblLocations] ([LocationID])
GO
ALTER TABLE [dbo].[tblRoutes]  WITH CHECK ADD FOREIGN KEY([StartLocation])
REFERENCES [dbo].[tblLocations] ([LocationID])
GO
ALTER TABLE [dbo].[tblSeats]  WITH CHECK ADD FOREIGN KEY([TripID])
REFERENCES [dbo].[tblTrips] ([TripID])
GO
ALTER TABLE [dbo].[tblTickets]  WITH CHECK ADD FOREIGN KEY([OrderID])
REFERENCES [dbo].[tblOrders] ([OrderID])
GO
ALTER TABLE [dbo].[tblTickets]  WITH CHECK ADD  CONSTRAINT [FK_TblTickets_TblSeat] FOREIGN KEY([SeatID], [TripID])
REFERENCES [dbo].[tblSeats] ([SeatID], [TripID])
GO
ALTER TABLE [dbo].[tblTickets] CHECK CONSTRAINT [FK_TblTickets_TblSeat]
GO
ALTER TABLE [dbo].[tblTrips]  WITH CHECK ADD FOREIGN KEY([DriverID])
REFERENCES [dbo].[tblDrivers] ([DriverID])
GO
ALTER TABLE [dbo].[tblTrips]  WITH CHECK ADD FOREIGN KEY([RouteID])
REFERENCES [dbo].[tblRoutes] ([RouteID])
GO
ALTER TABLE [dbo].[tblTrips]  WITH CHECK ADD FOREIGN KEY([VehicleID])
REFERENCES [dbo].[tblVehicles] ([VehicleID])
GO
ALTER TABLE [dbo].[tblUsers]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[tblRoles] ([RoleID])
GO
ALTER TABLE [dbo].[tblVehicles]  WITH CHECK ADD FOREIGN KEY([VehicleTypeID])
REFERENCES [dbo].[tblVehicleTypes] ([VehicleTypeID])
GO
USE [master]
GO
ALTER DATABASE [ETransportationManagement] SET  READ_WRITE 
GO
