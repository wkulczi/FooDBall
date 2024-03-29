USE [FooDBall]
GO
/****** Object:  Table [dbo].[Squad]    Script Date: 19.06.2019 16:26:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Squad](
	[SeasonID] [int] NOT NULL,
	[MemberID] [int] NULL,
	[TeamID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Squad]  WITH CHECK ADD  CONSTRAINT [Squad_Members_MemberID_fk] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Members] ([MemberID])
GO
ALTER TABLE [dbo].[Squad] CHECK CONSTRAINT [Squad_Members_MemberID_fk]
GO
ALTER TABLE [dbo].[Squad]  WITH CHECK ADD  CONSTRAINT [Squad_Season_SeasonID_fk] FOREIGN KEY([SeasonID])
REFERENCES [dbo].[Season] ([SeasonID])
GO
ALTER TABLE [dbo].[Squad] CHECK CONSTRAINT [Squad_Season_SeasonID_fk]
GO
ALTER TABLE [dbo].[Squad]  WITH CHECK ADD  CONSTRAINT [Squad_Team_TeamID_fk] FOREIGN KEY([TeamID])
REFERENCES [dbo].[Team] ([TeamID])
GO
ALTER TABLE [dbo].[Squad] CHECK CONSTRAINT [Squad_Team_TeamID_fk]
GO
