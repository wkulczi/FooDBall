USE [FooDBall]
GO
/****** Object:  Table [dbo].[Shots]    Script Date: 19.06.2019 16:26:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shots](
	[ShooterId] [int] NULL,
	[Time] [time](7) NULL,
	[MatchID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Shots]  WITH CHECK ADD  CONSTRAINT [Shots_Match__fk] FOREIGN KEY([MatchID])
REFERENCES [dbo].[Match] ([MatchID])
GO
ALTER TABLE [dbo].[Shots] CHECK CONSTRAINT [Shots_Match__fk]
GO
ALTER TABLE [dbo].[Shots]  WITH CHECK ADD  CONSTRAINT [Shots_Members_MemberID_fk] FOREIGN KEY([ShooterId])
REFERENCES [dbo].[Members] ([MemberID])
GO
ALTER TABLE [dbo].[Shots] CHECK CONSTRAINT [Shots_Members_MemberID_fk]
GO
