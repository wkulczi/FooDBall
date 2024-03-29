USE [FooDBall]
GO
/****** Object:  Table [dbo].[Substitutes]    Script Date: 19.06.2019 16:26:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Substitutes](
	[TeamID] [int] NULL,
	[MemberSubID] [int] NULL,
	[SubMemberSubID] [int] NULL,
	[Time] [time](7) NULL,
	[MatchID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Substitutes]  WITH CHECK ADD  CONSTRAINT [Substitutes_Match__fk] FOREIGN KEY([MatchID])
REFERENCES [dbo].[Match] ([MatchID])
GO
ALTER TABLE [dbo].[Substitutes] CHECK CONSTRAINT [Substitutes_Match__fk]
GO
ALTER TABLE [dbo].[Substitutes]  WITH CHECK ADD  CONSTRAINT [Substitutes_Members_MemberID_fk] FOREIGN KEY([SubMemberSubID])
REFERENCES [dbo].[Members] ([MemberID])
GO
ALTER TABLE [dbo].[Substitutes] CHECK CONSTRAINT [Substitutes_Members_MemberID_fk]
GO
ALTER TABLE [dbo].[Substitutes]  WITH CHECK ADD  CONSTRAINT [Substitutes_Members_MemberID_fk_2] FOREIGN KEY([MemberSubID])
REFERENCES [dbo].[Members] ([MemberID])
GO
ALTER TABLE [dbo].[Substitutes] CHECK CONSTRAINT [Substitutes_Members_MemberID_fk_2]
GO
