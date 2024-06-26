USE [GeneralStore]
GO
/****** Object:  Table [dbo].[State]    Script Date: 05/16/2024 16:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[State](
	[IdState] [int] IDENTITY(1,1) NOT NULL,
	[NameList] [varchar](50) NOT NULL,
	[Descripcion] [varchar](50) NOT NULL,
	[DescripcionCorta] [varchar](50) NOT NULL,
	[ABM] [varchar](2) NOT NULL,
	[Borrado] [bit] NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
 CONSTRAINT [PK_State] PRIMARY KEY CLUSTERED 
(
	[IdState] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Provincias]    Script Date: 05/16/2024 16:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincias](
	[Codigo] [int] IDENTITY(1,1) NOT NULL,
	[Provincia] [nvarchar](255) NULL,
 CONSTRAINT [PK_Provincias] PRIMARY KEY CLUSTERED 
(
	[Codigo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ImagenProducto]    Script Date: 05/16/2024 16:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ImagenProducto](
	[IdImagen] [int] NOT NULL,
	[IdStore] [int] NOT NULL,
	[IdProducto] [int] NOT NULL,
	[Nombre] [varchar](100) NULL,
	[Descripcion] [varchar](max) NULL,
	[Imagen] [image] NULL,
	[FechaAlta] [datetime] NOT NULL,
	[Abm] [varchar](2) NOT NULL,
	[Borrado] [bit] NOT NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Departamentos]    Script Date: 05/16/2024 16:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Departamentos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Codigo] [int] NOT NULL,
	[Departamento] [nvarchar](255) NULL,
 CONSTRAINT [PK_Departamentos] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Store]    Script Date: 05/16/2024 16:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Store](
	[IdStore] [int] IDENTITY(1,1) NOT NULL,
	[IdMasterHome] [int] NOT NULL,
	[RazonSocial] [varchar](200) NOT NULL,
	[CUIT] [varchar](15) NULL,
	[Provincia] [int] NOT NULL,
	[Departamento] [int] NOT NULL,
	[Calle] [varchar](70) NULL,
	[Altura] [varchar](15) NULL,
	[Barrio] [varchar](150) NULL,
	[Telefono] [varchar](50) NULL,
	[Celular] [varchar](50) NULL,
	[ABM] [varchar](2) NOT NULL,
	[Borrado] [bit] NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Store] PRIMARY KEY CLUSTERED 
(
	[IdStore] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Product]    Script Date: 05/16/2024 16:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Product](
	[IdProduct] [int] IDENTITY(1,1) NOT NULL,
	[IdStore] [int] NOT NULL,
	[ProductName] [varchar](70) NOT NULL,
	[DescriptionProduct] [varchar](max) NULL,
	[Codigo] [varchar](50) NULL,
	[Imagen] [int] NOT NULL,
	[ABM] [varchar](2) NOT NULL,
	[Borrado] [bit] NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[IdProduct] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Category]    Script Date: 05/16/2024 16:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Category](
	[IdCategory] [int] IDENTITY(1,1) NOT NULL,
	[IdStore] [int] NOT NULL,
	[CategoryName] [varchar](50) NOT NULL,
	[ABM] [bit] NOT NULL,
	[Borrado] [varchar](2) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[IdCategory] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SubCategory]    Script Date: 05/16/2024 16:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SubCategory](
	[IdSubCategory] [int] IDENTITY(1,1) NOT NULL,
	[IdStore] [int] NOT NULL,
	[SubCategoryName] [varchar](70) NOT NULL,
	[ABM] [bit] NOT NULL,
	[Borrado] [varchar](2) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
 CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED 
(
	[IdSubCategory] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rel_P_C_SC]    Script Date: 05/16/2024 16:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rel_P_C_SC](
	[IdPCSC] [int] IDENTITY(1,1) NOT NULL,
	[IdStore] [int] NOT NULL,
	[IdCategory] [int] NOT NULL,
	[IdSubcategory] [int] NOT NULL,
	[ABM] [bit] NOT NULL,
	[Borrado] [varchar](2) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
 CONSTRAINT [PK_Rel_P_C_SC] PRIMARY KEY CLUSTERED 
(
	[IdPCSC] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[StockDetail]    Script Date: 05/16/2024 16:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[StockDetail](
	[IdStockDetail] [int] IDENTITY(1,1) NOT NULL,
	[IdStore] [int] NOT NULL,
	[IdProduct] [int] NOT NULL,
	[IdStateEstado] [int] NOT NULL,
	[IdStateOperacion] [int] NOT NULL,
	[Cantidad] [int] NOT NULL,
	[Precio] [decimal](18, 0) NOT NULL,
	[FechaCompra] [datetime] NOT NULL,
	[ABM] [bit] NOT NULL,
	[Borrado] [varchar](2) NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
	[FechaAlta] [datetime] NOT NULL,
 CONSTRAINT [PK_StockDetail] PRIMARY KEY CLUSTERED 
(
	[IdStockDetail] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 05/16/2024 16:41:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Stock](
	[IdStock] [int] IDENTITY(1,1) NOT NULL,
	[IdStore] [int] NOT NULL,
	[IdProduct] [int] NOT NULL,
	[StockTotal] [int] NOT NULL,
	[Precio] [decimal](18, 0) NOT NULL,
	[FechaIngreso] [datetime] NOT NULL,
	[FechaBaja] [datetime] NULL,
	[ABM] [varchar](2) NOT NULL,
	[Borrado] [bit] NOT NULL,
	[Usuario] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Stock] PRIMARY KEY CLUSTERED 
(
	[IdStock] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_Category_Store]    Script Date: 05/16/2024 16:41:09 ******/
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_Category_Store] FOREIGN KEY([IdStore])
REFERENCES [dbo].[Store] ([IdStore])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_Category_Store]
GO
/****** Object:  ForeignKey [FK_Departamentos_Provincias]    Script Date: 05/16/2024 16:41:09 ******/
ALTER TABLE [dbo].[Departamentos]  WITH CHECK ADD  CONSTRAINT [FK_Departamentos_Provincias] FOREIGN KEY([Codigo])
REFERENCES [dbo].[Provincias] ([Codigo])
GO
ALTER TABLE [dbo].[Departamentos] CHECK CONSTRAINT [FK_Departamentos_Provincias]
GO
/****** Object:  ForeignKey [FK_Product_Store]    Script Date: 05/16/2024 16:41:09 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Store] FOREIGN KEY([IdStore])
REFERENCES [dbo].[Store] ([IdStore])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Store]
GO
/****** Object:  ForeignKey [FK_Rel_P_C_SC_Category]    Script Date: 05/16/2024 16:41:09 ******/
ALTER TABLE [dbo].[Rel_P_C_SC]  WITH CHECK ADD  CONSTRAINT [FK_Rel_P_C_SC_Category] FOREIGN KEY([IdCategory])
REFERENCES [dbo].[Category] ([IdCategory])
GO
ALTER TABLE [dbo].[Rel_P_C_SC] CHECK CONSTRAINT [FK_Rel_P_C_SC_Category]
GO
/****** Object:  ForeignKey [FK_Rel_P_C_SC_Store]    Script Date: 05/16/2024 16:41:09 ******/
ALTER TABLE [dbo].[Rel_P_C_SC]  WITH CHECK ADD  CONSTRAINT [FK_Rel_P_C_SC_Store] FOREIGN KEY([IdStore])
REFERENCES [dbo].[Store] ([IdStore])
GO
ALTER TABLE [dbo].[Rel_P_C_SC] CHECK CONSTRAINT [FK_Rel_P_C_SC_Store]
GO
/****** Object:  ForeignKey [FK_Rel_P_C_SC_SubCategory]    Script Date: 05/16/2024 16:41:09 ******/
ALTER TABLE [dbo].[Rel_P_C_SC]  WITH CHECK ADD  CONSTRAINT [FK_Rel_P_C_SC_SubCategory] FOREIGN KEY([IdSubcategory])
REFERENCES [dbo].[SubCategory] ([IdSubCategory])
GO
ALTER TABLE [dbo].[Rel_P_C_SC] CHECK CONSTRAINT [FK_Rel_P_C_SC_SubCategory]
GO
/****** Object:  ForeignKey [FK_Stock_Product]    Script Date: 05/16/2024 16:41:09 ******/
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_Product]
GO
/****** Object:  ForeignKey [FK_Stock_Store]    Script Date: 05/16/2024 16:41:09 ******/
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Store] FOREIGN KEY([IdStore])
REFERENCES [dbo].[Store] ([IdStore])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_Store]
GO
/****** Object:  ForeignKey [FK_StockDetail_Product]    Script Date: 05/16/2024 16:41:09 ******/
ALTER TABLE [dbo].[StockDetail]  WITH CHECK ADD  CONSTRAINT [FK_StockDetail_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[StockDetail] CHECK CONSTRAINT [FK_StockDetail_Product]
GO
/****** Object:  ForeignKey [FK_StockDetail_State]    Script Date: 05/16/2024 16:41:09 ******/
ALTER TABLE [dbo].[StockDetail]  WITH CHECK ADD  CONSTRAINT [FK_StockDetail_State] FOREIGN KEY([IdStateEstado])
REFERENCES [dbo].[State] ([IdState])
GO
ALTER TABLE [dbo].[StockDetail] CHECK CONSTRAINT [FK_StockDetail_State]
GO
/****** Object:  ForeignKey [FK_StockDetail_State1]    Script Date: 05/16/2024 16:41:09 ******/
ALTER TABLE [dbo].[StockDetail]  WITH CHECK ADD  CONSTRAINT [FK_StockDetail_State1] FOREIGN KEY([IdStateOperacion])
REFERENCES [dbo].[State] ([IdState])
GO
ALTER TABLE [dbo].[StockDetail] CHECK CONSTRAINT [FK_StockDetail_State1]
GO
/****** Object:  ForeignKey [FK_StockDetail_Store]    Script Date: 05/16/2024 16:41:09 ******/
ALTER TABLE [dbo].[StockDetail]  WITH CHECK ADD  CONSTRAINT [FK_StockDetail_Store] FOREIGN KEY([IdStore])
REFERENCES [dbo].[Store] ([IdStore])
GO
ALTER TABLE [dbo].[StockDetail] CHECK CONSTRAINT [FK_StockDetail_Store]
GO
/****** Object:  ForeignKey [FK_Store_Departamentos]    Script Date: 05/16/2024 16:41:09 ******/
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_Departamentos] FOREIGN KEY([Departamento])
REFERENCES [dbo].[Departamentos] ([Id])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_Departamentos]
GO
/****** Object:  ForeignKey [FK_Store_Provincias]    Script Date: 05/16/2024 16:41:09 ******/
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_Provincias] FOREIGN KEY([Provincia])
REFERENCES [dbo].[Provincias] ([Codigo])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_Provincias]
GO
/****** Object:  ForeignKey [FK_Store_Store]    Script Date: 05/16/2024 16:41:09 ******/
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_Store] FOREIGN KEY([IdMasterHome])
REFERENCES [dbo].[Store] ([IdStore])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_Store]
GO
/****** Object:  ForeignKey [FK_SubCategory_Store]    Script Date: 05/16/2024 16:41:09 ******/
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_Store] FOREIGN KEY([IdStore])
REFERENCES [dbo].[Store] ([IdStore])
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_Store]
GO
