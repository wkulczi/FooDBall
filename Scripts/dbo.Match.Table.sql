USE [FooDBall]
GO
/****** Object:  Table [dbo].[Match]    Script Date: 19.06.2019 16:26:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Match](
	[MatchID] [int] NOT NULL,
	[HostID] [int] NULL,
	[GuestID] [int] NULL,
	[StadiumID] [int] NULL,
	[Audience_num] [int] NULL,
	[Won] [int] NULL,
 CONSTRAINT [Match_pk] UNIQUE NONCLUSTERED 
(
	[MatchID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [Match_Stadium_StadiumID_fk] FOREIGN KEY([StadiumID])
REFERENCES [dbo].[Stadium] ([StadiumID])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [Match_Stadium_StadiumID_fk]
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [Match_Team_TeamID_fk] FOREIGN KEY([GuestID])
REFERENCES [dbo].[Team] ([TeamID])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [Match_Team_TeamID_fk]
GO
ALTER TABLE [dbo].[Match]  WITH CHECK ADD  CONSTRAINT [Match_Team_TeamID_fk_2] FOREIGN KEY([HostID])
REFERENCES [dbo].[Team] ([TeamID])
GO
ALTER TABLE [dbo].[Match] CHECK CONSTRAINT [Match_Team_TeamID_fk_2]
GO
