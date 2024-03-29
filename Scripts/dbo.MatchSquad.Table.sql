USE [FooDBall]
GO
/****** Object:  Table [dbo].[MatchSquad]    Script Date: 19.06.2019 16:26:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MatchSquad](
	[MatchID] [int] NULL,
	[PlayerID] [int] NULL,
	[TimeUp] [time](7) NULL,
	[TimeDown] [time](7) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MatchSquad]  WITH CHECK ADD  CONSTRAINT [MatchSquad_Match__fk] FOREIGN KEY([MatchID])
REFERENCES [dbo].[Match] ([MatchID])
GO
ALTER TABLE [dbo].[MatchSquad] CHECK CONSTRAINT [MatchSquad_Match__fk]
GO
ALTER TABLE [dbo].[MatchSquad]  WITH CHECK ADD  CONSTRAINT [MatchSquad_Members_MemberID_fk] FOREIGN KEY([PlayerID])
REFERENCES [dbo].[Members] ([MemberID])
GO
ALTER TABLE [dbo].[MatchSquad] CHECK CONSTRAINT [MatchSquad_Members_MemberID_fk]
GO
