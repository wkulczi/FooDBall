USE [FooDBall]
GO
/****** Object:  Table [dbo].[Team]    Script Date: 19.06.2019 16:26:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Team](
	[TeamID] [int] NOT NULL,
	[TeamName] [nvarchar](max) NULL,
	[CaptainID] [int] NULL,
	[TrainerID] [int] NULL,
 CONSTRAINT [Team_pk] UNIQUE NONCLUSTERED 
(
	[TeamID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [Team_Captain_CaptainID_fk] FOREIGN KEY([CaptainID])
REFERENCES [dbo].[Captain] ([CaptainID])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [Team_Captain_CaptainID_fk]
GO
ALTER TABLE [dbo].[Team]  WITH CHECK ADD  CONSTRAINT [Team_Trainer_TrainerID_fk] FOREIGN KEY([TrainerID])
REFERENCES [dbo].[Trainer] ([TrainerID])
GO
ALTER TABLE [dbo].[Team] CHECK CONSTRAINT [Team_Trainer_TrainerID_fk]
GO
