USE [FooDBall]
GO
/****** Object:  Table [dbo].[Stadium]    Script Date: 19.06.2019 16:26:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stadium](
	[StadiumID] [int] NOT NULL,
	[Localisation] [nvarchar](max) NULL,
	[Capacity] [int] NULL,
 CONSTRAINT [Stadium_pk] UNIQUE NONCLUSTERED 
(
	[StadiumID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
