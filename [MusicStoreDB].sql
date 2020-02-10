USE [MusicStoreDB]
GO
/****** Object:  Table [dbo].[Album]    Script Date: 10-02-2020 18:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[AlbumID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Review] [nvarchar](max) NULL,
	[Rating] [decimal](18, 2) NOT NULL,
	[CommentsCount] [int] NULL,
	[ReleaseDate] [datetime] NOT NULL,
	[Address] [nvarchar](1000) NULL,
	[Cost] [decimal](18, 2) NOT NULL,
	[GenreID] [int] NULL,
 CONSTRAINT [PK_Album] PRIMARY KEY CLUSTERED 
(
	[AlbumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Artist]    Script Date: 10-02-2020 18:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artist](
	[ArtistID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](250) NOT NULL,
 CONSTRAINT [PK_Artist] PRIMARY KEY CLUSTERED 
(
	[ArtistID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Genre]    Script Date: 10-02-2020 18:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Genre](
	[GenreID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Genre] PRIMARY KEY CLUSTERED 
(
	[GenreID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Track]    Script Date: 10-02-2020 18:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Track](
	[TrackID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](250) NOT NULL,
	[Duration] [decimal](18, 2) NOT NULL,
	[Popularity] [int] NULL,
	[Price] [decimal](18, 2) NULL,
	[Active] [bit] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](200) NOT NULL,
	[ModifiedDate] [datetime] NULL,
	[ModifiedBy] [nvarchar](200) NOT NULL,
	[ArtistID] [int] NOT NULL,
 CONSTRAINT [PK_Track] PRIMARY KEY CLUSTERED 
(
	[TrackID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Album] ON 
GO
INSERT [dbo].[Album] ([AlbumID], [Name], [Review], [Rating], [CommentsCount], [ReleaseDate], [Address], [Cost], [GenreID]) VALUES (1, N'Backstreet Boys DNA', N'Review', CAST(4.50 AS Decimal(18, 2)), 503, CAST(N'2020-02-10T15:28:38.733' AS DateTime), N'', CAST(11.99 AS Decimal(18, 2)), 1)
GO
SET IDENTITY_INSERT [dbo].[Album] OFF
GO
SET IDENTITY_INSERT [dbo].[Artist] ON 
GO
INSERT [dbo].[Artist] ([ArtistID], [Name]) VALUES (1, N'Backstreet Boys')
GO
SET IDENTITY_INSERT [dbo].[Artist] OFF
GO
SET IDENTITY_INSERT [dbo].[Genre] ON 
GO
INSERT [dbo].[Genre] ([GenreID], [Name]) VALUES (1, N'Pop')
GO
SET IDENTITY_INSERT [dbo].[Genre] OFF
GO
SET IDENTITY_INSERT [dbo].[Track] ON 
GO
INSERT [dbo].[Track] ([TrackID], [Name], [Duration], [Popularity], [Price], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [ArtistID]) VALUES (1, N'Don''t GO Breathing My Heart', CAST(3.36 AS Decimal(18, 2)), 10, CAST(1.29 AS Decimal(18, 2)), 1, CAST(N'2020-02-10T15:33:20.843' AS DateTime), N'', CAST(N'2020-02-10T15:33:20.843' AS DateTime), N'', 1)
GO
INSERT [dbo].[Track] ([TrackID], [Name], [Duration], [Popularity], [Price], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [ArtistID]) VALUES (2, N'Nobody Else', CAST(3.38 AS Decimal(18, 2)), 3, CAST(1.29 AS Decimal(18, 2)), 1, CAST(N'2020-02-10T16:06:59.897' AS DateTime), N'', CAST(N'2020-02-10T16:06:59.897' AS DateTime), N'', 1)
GO
INSERT [dbo].[Track] ([TrackID], [Name], [Duration], [Popularity], [Price], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [ArtistID]) VALUES (3, N'Breathe', CAST(3.06 AS Decimal(18, 2)), 5, CAST(1.29 AS Decimal(18, 2)), 1, CAST(N'2020-02-10T16:08:08.323' AS DateTime), N'', CAST(N'2020-02-10T16:08:08.323' AS DateTime), N'', 1)
GO
INSERT [dbo].[Track] ([TrackID], [Name], [Duration], [Popularity], [Price], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [ArtistID]) VALUES (4, N'New Love', CAST(3.06 AS Decimal(18, 2)), 5, CAST(1.29 AS Decimal(18, 2)), 1, CAST(N'2020-02-10T16:08:08.323' AS DateTime), N'', CAST(N'2020-02-10T16:08:08.323' AS DateTime), N'', 1)
GO
INSERT [dbo].[Track] ([TrackID], [Name], [Duration], [Popularity], [Price], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [ArtistID]) VALUES (5, N'Passionate', CAST(3.43 AS Decimal(18, 2)), 2, CAST(1.29 AS Decimal(18, 2)), 1, CAST(N'2020-02-10T16:09:01.647' AS DateTime), N'', CAST(N'2020-02-10T16:09:01.647' AS DateTime), N'', 1)
GO
INSERT [dbo].[Track] ([TrackID], [Name], [Duration], [Popularity], [Price], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [ArtistID]) VALUES (6, N'Is It Just Me', CAST(3.37 AS Decimal(18, 2)), 6, CAST(1.29 AS Decimal(18, 2)), 1, CAST(N'2020-02-10T16:09:01.647' AS DateTime), N'', CAST(N'2020-02-10T16:09:01.647' AS DateTime), N'', 1)
GO
INSERT [dbo].[Track] ([TrackID], [Name], [Duration], [Popularity], [Price], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [ArtistID]) VALUES (7, N'Chances', CAST(2.53 AS Decimal(18, 2)), 8, CAST(1.29 AS Decimal(18, 2)), 1, CAST(N'2020-02-10T16:09:47.137' AS DateTime), N'', CAST(N'2020-02-10T16:09:47.137' AS DateTime), N'', 1)
GO
INSERT [dbo].[Track] ([TrackID], [Name], [Duration], [Popularity], [Price], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [ArtistID]) VALUES (8, N'No Place', CAST(3.08 AS Decimal(18, 2)), 9, CAST(1.29 AS Decimal(18, 2)), 1, CAST(N'2020-02-10T16:09:47.137' AS DateTime), N'', CAST(N'2020-02-10T16:09:47.137' AS DateTime), N'', 1)
GO
INSERT [dbo].[Track] ([TrackID], [Name], [Duration], [Popularity], [Price], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [ArtistID]) VALUES (9, N'Chateau', CAST(3.08 AS Decimal(18, 2)), 3, CAST(1.29 AS Decimal(18, 2)), 1, CAST(N'2020-02-10T16:10:41.520' AS DateTime), N'', CAST(N'2020-02-10T16:10:41.520' AS DateTime), N'', 1)
GO
INSERT [dbo].[Track] ([TrackID], [Name], [Duration], [Popularity], [Price], [Active], [CreatedDate], [CreatedBy], [ModifiedDate], [ModifiedBy], [ArtistID]) VALUES (10, N'The Way It was', CAST(3.24 AS Decimal(18, 2)), 9, CAST(1.29 AS Decimal(18, 2)), 1, CAST(N'2020-02-10T16:10:41.520' AS DateTime), N'', CAST(N'2020-02-10T16:10:41.520' AS DateTime), N'', 1)
GO
SET IDENTITY_INSERT [dbo].[Track] OFF
GO
ALTER TABLE [dbo].[Album] ADD  CONSTRAINT [DF_Album_CommentsCount]  DEFAULT ((0)) FOR [CommentsCount]
GO
ALTER TABLE [dbo].[Track] ADD  CONSTRAINT [DF_Track_Active]  DEFAULT ((1)) FOR [Active]
GO
ALTER TABLE [dbo].[Track] ADD  CONSTRAINT [DF_Track_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Track] ADD  CONSTRAINT [DF_Track_ModifiedDate]  DEFAULT (getdate()) FOR [ModifiedDate]
GO
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Genre] FOREIGN KEY([GenreID])
REFERENCES [dbo].[Genre] ([GenreID])
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Genre]
GO
ALTER TABLE [dbo].[Track]  WITH CHECK ADD  CONSTRAINT [FK_Track_Artist] FOREIGN KEY([ArtistID])
REFERENCES [dbo].[Artist] ([ArtistID])
GO
ALTER TABLE [dbo].[Track] CHECK CONSTRAINT [FK_Track_Artist]
GO
