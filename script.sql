
GO
USE [ShopDataBase]


CREATE TABLE [dbo].[Client](
[Id] [int] NOT NULL,
[OrderId] [int] NOT NULL,
[IdUserOfClient] [int] NOT NULL,
[IsDeleted] [bit] NULL,
CONSTRAINT [PK_Client] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object: Table [dbo].[ListOfProductsInOrder] Script Date: 27.04.2021 15:49:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ListOfProductsInOrder](
[OrderId] [int] NOT NULL,
[ProductId] [int] NOT NULL,
[IsDeleted] [bit] NULL,
CONSTRAINT [PK_ListOfProductsInOrder] PRIMARY KEY CLUSTERED
(
[OrderId] ASC,
[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object: Table [dbo].[Order] Script Date: 27.04.2021 15:49:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Order](
[Id] [int] NOT NULL,
[OrderName] [nvarchar](50) NOT NULL,
[IsDeleted] [bit] NULL,
CONSTRAINT [PK_Order] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object: Table [dbo].[Products] Script Date: 27.04.2021 15:49:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
[Id] [int] NOT NULL,
[Name] [nvarchar](50) NOT NULL,
[Price] [money] NOT NULL,
[Description] [nvarchar](50) NULL,
[IsDeleted] [bit] NULL,
CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON ) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object: Table [dbo].[UserOfClient] Script Date: 27.04.2021 15:49:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOfClient](
[Id] [int] NOT NULL,
[SurName] [nvarchar](50) NOT NULL,
[FirstName] [nvarchar](50) NOT NULL,
[MiddleName] [nvarchar](50) NOT NULL,
[IsDeleted] [bit] NULL,
CONSTRAINT [PK_UserOfClient] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object: Table [dbo].[Users] Script Date: 27.04.2021 15:49:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
[Id] [int] NOT NULL,
[Login] [nvarchar](20) NOT NULL,
[Password] [nvarchar](20) NOT NULL,
[IdUserOfClient] [int] NOT NULL,
[IsDeleted] [bit] NULL,
CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED
(
[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Client] ADD DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[ListOfProductsInOrder] ADD DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Order] ADD DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Products] ADD DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[UserOfClient] ADD DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Users] ADD DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Client] WITH CHECK ADD CONSTRAINT [FK_Client_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_Order]
GO
ALTER TABLE [dbo].[Client] WITH CHECK ADD CONSTRAINT [FK_Client_UserOfClient] FOREIGN KEY([IdUserOfClient])
REFERENCES [dbo].[UserOfClient] ([Id])
GO
ALTER TABLE [dbo].[Client] CHECK CONSTRAINT [FK_Client_UserOfClient]
GO
ALTER TABLE [dbo].[ListOfProductsInOrder] WITH CHECK ADD
 
CONSTRAINT [FK_ListOfProductsInOrder_Order] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Order] ([Id])
GO
ALTER TABLE [dbo].[ListOfProductsInOrder] CHECK CONSTRAINT [FK_ListOfProductsInOrder_Order]
GO
ALTER TABLE [dbo].[ListOfProductsInOrder] WITH CHECK ADD CONSTRAINT [FK_ListOfProductsInOrder_Products] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Products] ([Id])
GO
ALTER TABLE [dbo].[ListOfProductsInOrder] CHECK CONSTRAINT [FK_ListOfProductsInOrder_Products]
GO
ALTER TABLE [dbo].[Users] WITH CHECK ADD CONSTRAINT [FK_Users_UserOfClient] FOREIGN KEY([IdUserOfClient])
REFERENCES [dbo].[UserOfClient] ([Id])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_UserOfClient]
GO
USE [master]
GO
ALTER DATABASE [ShopDataBase] SET READ_WRITE
GO