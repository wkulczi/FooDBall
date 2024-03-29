USE [FooDBall]
GO
/****** Object:  Table [dbo].[Trainer]    Script Date: 19.06.2019 16:26:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Trainer](
	[TrainerID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
	[MemberID] [int] NULL,
 CONSTRAINT [Trainer_pk] UNIQUE NONCLUSTERED 
(
	[TrainerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Trainer]  WITH CHECK ADD  CONSTRAINT [Trainer_Members_MemberID_fk] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Members] ([MemberID])
GO
ALTER TABLE [dbo].[Trainer] CHECK CONSTRAINT [Trainer_Members_MemberID_fk]
GO
