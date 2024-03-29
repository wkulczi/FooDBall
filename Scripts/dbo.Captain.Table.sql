USE [FooDBall]
GO
/****** Object:  Table [dbo].[Captain]    Script Date: 19.06.2019 16:26:55 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Captain](
	[CaptainID] [int] NOT NULL,
	[Name] [nvarchar](max) NULL,
	[Surname] [nvarchar](max) NULL,
	[MemberID] [int] NULL,
 CONSTRAINT [Captain_pk] UNIQUE NONCLUSTERED 
(
	[CaptainID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Captain]  WITH CHECK ADD  CONSTRAINT [Captain_Members_MemberID_fk] FOREIGN KEY([MemberID])
REFERENCES [dbo].[Members] ([MemberID])
GO
ALTER TABLE [dbo].[Captain] CHECK CONSTRAINT [Captain_Members_MemberID_fk]
GO
