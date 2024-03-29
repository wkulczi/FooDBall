USE [FooDBall]
GO
/****** Object:  Table [dbo].[Cards]    Script Date: 19.06.2019 16:26:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cards](
	[PlayerID] [int] NULL,
	[Time] [time](7) NULL,
	[MatchID] [int] NULL,
	[Card] [nvarchar](255) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cards]  WITH CHECK ADD  CONSTRAINT [Cards_Match__fk] FOREIGN KEY([MatchID])
REFERENCES [dbo].[Match] ([MatchID])
GO
ALTER TABLE [dbo].[Cards] CHECK CONSTRAINT [Cards_Match__fk]
GO
ALTER TABLE [dbo].[Cards]  WITH CHECK ADD  CONSTRAINT [Cards_Members_MemberID_fk] FOREIGN KEY([PlayerID])
REFERENCES [dbo].[Members] ([MemberID])
GO
ALTER TABLE [dbo].[Cards] CHECK CONSTRAINT [Cards_Members_MemberID_fk]
GO
