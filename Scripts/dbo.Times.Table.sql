USE [FooDBall]
GO
/****** Object:  Table [dbo].[Times]    Script Date: 19.06.2019 16:26:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Times](
	[1stHalf] [time](7) NULL,
	[2ndHalf] [time](7) NULL,
	[Overtime] [time](7) NULL,
	[MatchID] [int] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Times]  WITH CHECK ADD  CONSTRAINT [Times_Match__fk] FOREIGN KEY([MatchID])
REFERENCES [dbo].[Match] ([MatchID])
GO
ALTER TABLE [dbo].[Times] CHECK CONSTRAINT [Times_Match__fk]
GO
