USE [GeneralStore]
GO
/****** Object:  Table [dbo].[State]    Script Date: 05/17/2024 16:36:17 ******/
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
SET IDENTITY_INSERT [dbo].[State] ON
INSERT [dbo].[State] ([IdState], [NameList], [Descripcion], [DescripcionCorta], [ABM], [Borrado], [Usuario], [FechaAlta]) VALUES (1, N'TipoOperacion', N'Suma', N'Suma', N'A', 0, N'Sistema', CAST(0x0000B0EA00000000 AS DateTime))
INSERT [dbo].[State] ([IdState], [NameList], [Descripcion], [DescripcionCorta], [ABM], [Borrado], [Usuario], [FechaAlta]) VALUES (2, N'TipoOperacion', N'Resta', N'Resta', N'A', 0, N'Sistema', CAST(0x0000B0EA00000000 AS DateTime))
INSERT [dbo].[State] ([IdState], [NameList], [Descripcion], [DescripcionCorta], [ABM], [Borrado], [Usuario], [FechaAlta]) VALUES (3, N'Transaccion', N'Compra', N'Compra', N'A', 0, N'Sistema', CAST(0x0000B0EA00000000 AS DateTime))
INSERT [dbo].[State] ([IdState], [NameList], [Descripcion], [DescripcionCorta], [ABM], [Borrado], [Usuario], [FechaAlta]) VALUES (4, N'Transaccion', N'Venta', N'Venta', N'A', 0, N'Sistema', CAST(0x0000B0EA00000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[State] OFF
/****** Object:  Table [dbo].[Provincias]    Script Date: 05/17/2024 16:36:17 ******/
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
SET IDENTITY_INSERT [dbo].[Provincias] ON
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (2, N'Ciudad Autónoma de Buenos Aires')
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (6, N'Buenos Aires')
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (10, N'Catamarca')
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (14, N'Córdoba')
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (18, N'Corrientes')
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (22, N'Chaco')
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (26, N'Chubut')
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (30, N'Entre Ríos')
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (34, N'Formosa')
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (38, N'Jujuy')
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (42, N'La Pampa')
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (46, N'La Rioja')
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (50, N'Mendoza')
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (54, N'Misiones')
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (58, N'Neuquén')
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (62, N'Río Negro')
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (66, N'Salta')
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (70, N'San Juan')
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (74, N'San Luis')
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (78, N'Santa Cruz')
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (82, N'Santa Fe')
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (86, N'Santiago del Estero')
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (90, N'Tucumán')
INSERT [dbo].[Provincias] ([Codigo], [Provincia]) VALUES (94, N'Tierra del Fuego, Antártida e Islas del Atlántico Sur')
SET IDENTITY_INSERT [dbo].[Provincias] OFF
/****** Object:  Table [dbo].[ImagenProducto]    Script Date: 05/17/2024 16:36:17 ******/
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
/****** Object:  Table [dbo].[Departamentos]    Script Date: 05/17/2024 16:36:17 ******/
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
SET IDENTITY_INSERT [dbo].[Departamentos] ON
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (1, 2, N'Ciudad Autonoma de Buenos Aires')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (3, 6, N'Adolfo Alsina')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (4, 6, N'Adolfo Gonzales Chaves')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (5, 6, N'Alberti')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (6, 6, N'Almirante Brown')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (7, 6, N'Avellaneda')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (8, 6, N'Ayacucho')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (9, 6, N'Azul')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (10, 6, N'Bahía Blanca')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (11, 6, N'Balcarce')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (12, 6, N'Baradero')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (13, 6, N'Arrecifes')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (14, 6, N'Benito Juárez')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (15, 6, N'Berazategui')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (16, 6, N'Berisso')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (17, 6, N'Bolívar')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (18, 6, N'Bragado')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (19, 6, N'Brandsen')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (20, 6, N'Campana')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (21, 6, N'Cañuelas')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (22, 6, N'Capitán Sarmiento')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (23, 6, N'Carlos Casares')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (24, 6, N'Carlos Tejedor')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (25, 6, N'Carmen de Areco')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (26, 6, N'Castelli')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (27, 6, N'Colón')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (28, 6, N'Coronel de Marina Leonardo Rosales')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (29, 6, N'Coronel Dorrego')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (30, 6, N'Coronel Pringles')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (31, 6, N'Coronel Suárez')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (32, 6, N'Chacabuco')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (33, 6, N'Chascomús')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (34, 6, N'Chivilcoy')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (35, 6, N'Daireaux')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (36, 6, N'Dolores')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (37, 6, N'Ensenada')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (38, 6, N'Escobar')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (39, 6, N'Esteban Echeverría')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (40, 6, N'Exaltación de la Cruz')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (41, 6, N'Ezeiza')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (42, 6, N'Florencio Varela')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (43, 6, N'Florentino Ameghino')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (44, 6, N'General Alvarado')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (45, 6, N'General Alvear')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (46, 6, N'General Arenales')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (47, 6, N'General Belgrano')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (48, 6, N'General Guido')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (49, 6, N'General Juan Madariaga')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (50, 6, N'General La Madrid')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (51, 6, N'General Las Heras')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (52, 6, N'General Lavalle')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (53, 6, N'General Paz')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (54, 6, N'General Pinto')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (55, 6, N'General Pueyrredón')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (56, 6, N'General Rodríguez')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (57, 6, N'General San Martín')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (58, 6, N'General Viamonte')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (59, 6, N'General Villegas')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (60, 6, N'Guaminí')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (61, 6, N'Hipólito Yrigoyen')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (62, 6, N'Hurlingham')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (63, 6, N'Ituzaingó')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (64, 6, N'José C. Paz')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (65, 6, N'Junín')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (66, 6, N'La Costa')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (67, 6, N'La Matanza')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (68, 6, N'Lanús')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (69, 6, N'La Plata')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (70, 6, N'Laprida')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (71, 6, N'Las Flores')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (72, 6, N'Leandro N. Alem')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (73, 6, N'Lincoln')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (74, 6, N'Lobería')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (75, 6, N'Lobos')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (76, 6, N'Lomas de Zamora')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (77, 6, N'Luján')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (78, 6, N'Magdalena')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (79, 6, N'Maipú')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (80, 6, N'Malvinas Argentinas')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (81, 6, N'Mar Chiquita')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (82, 6, N'Marcos Paz')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (83, 6, N'Mercedes')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (84, 6, N'Merlo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (85, 6, N'Monte')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (86, 6, N'Monte Hermoso')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (87, 6, N'Moreno')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (88, 6, N'Morón')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (89, 6, N'Navarro')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (90, 6, N'Necochea')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (91, 6, N'9 de Julio')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (92, 6, N'Olavarría')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (93, 6, N'Patagones')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (94, 6, N'Pehuajó')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (95, 6, N'Pellegrini')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (96, 6, N'Pergamino')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (97, 6, N'Pila')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (98, 6, N'Pilar')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (99, 6, N'Pinamar')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (100, 6, N'Presidente Perón')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (101, 6, N'Puán')
GO
print 'Processed 100 total records'
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (102, 6, N'Punta Indio')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (103, 6, N'Quilmes')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (104, 6, N'Ramallo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (105, 6, N'Rauch')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (106, 6, N'Rivadavia')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (107, 6, N'Rojas')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (108, 6, N'Roque Pérez')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (109, 6, N'Saavedra')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (110, 6, N'Saladillo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (111, 6, N'Salto')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (112, 6, N'Salliqueló')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (113, 6, N'San Andrés de Giles')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (114, 6, N'San Antonio de Areco')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (115, 6, N'San Cayetano')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (116, 6, N'San Fernando')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (117, 6, N'San Isidro')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (118, 6, N'San Miguel')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (119, 6, N'San Nicolás')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (120, 6, N'San Pedro')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (121, 6, N'San Vicente')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (122, 6, N'Suipacha')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (123, 6, N'Tandil')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (124, 6, N'Tapalqué')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (125, 6, N'Tigre')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (126, 6, N'Tordillo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (127, 6, N'Tornquist')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (128, 6, N'Trenque Lauquen')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (129, 6, N'Tres Arroyos')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (130, 6, N'Tres de Febrero')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (131, 6, N'Tres Lomas')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (132, 6, N'25 de Mayo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (133, 6, N'Vicente López')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (134, 6, N'Villa Gesell')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (135, 6, N'Villarino')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (136, 6, N'Zárate')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (137, 10, N'Ambato')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (138, 10, N'Ancasti')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (139, 10, N'Andalgalá')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (140, 10, N'Antofagasta de la Sierra')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (141, 10, N'Belén')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (142, 10, N'Capayán')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (143, 10, N'Capital')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (144, 10, N'El Alto')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (145, 10, N'Fray Mamerto Esquiú')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (146, 10, N'La Paz')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (147, 10, N'Paclín')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (148, 10, N'Pomán')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (149, 10, N'Santa María')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (150, 10, N'Santa Rosa')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (151, 10, N'Tinogasta')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (152, 10, N'Valle Viejo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (153, 14, N'Calamuchita')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (154, 14, N'Capital')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (155, 14, N'Colón')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (156, 14, N'Cruz del Eje')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (157, 14, N'General Roca')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (158, 14, N'General San Martín')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (159, 14, N'Ischilín')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (160, 14, N'Juárez Celman')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (161, 14, N'Marcos Juárez')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (162, 14, N'Minas')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (163, 14, N'Pocho')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (164, 14, N'Presidente Roque Sáenz Peña')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (165, 14, N'Punilla')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (166, 14, N'Río Cuarto')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (167, 14, N'Río Primero')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (168, 14, N'Río Seco')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (169, 14, N'Río Segundo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (170, 14, N'San Alberto')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (171, 14, N'San Javier')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (172, 14, N'San Justo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (173, 14, N'Santa María')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (174, 14, N'Sobremonte')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (175, 14, N'Tercero Arriba')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (176, 14, N'Totoral')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (177, 14, N'Tulumba')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (178, 14, N'Unión')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (179, 18, N'Bella Vista')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (180, 18, N'Berón de Astrada')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (181, 18, N'Capital')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (182, 18, N'Concepción')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (183, 18, N'Curuzú Cuatiá')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (184, 18, N'Empedrado')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (185, 18, N'Esquina')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (186, 18, N'General Alvear')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (187, 18, N'General Paz')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (188, 18, N'Goya')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (189, 18, N'Itatí')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (190, 18, N'Ituzaingó')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (191, 18, N'Lavalle')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (192, 18, N'Mburucuyá')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (193, 18, N'Mercedes')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (194, 18, N'Monte Caseros')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (195, 18, N'Paso de los Libres')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (196, 18, N'Saladas')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (197, 18, N'San Cosme')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (198, 18, N'San Luis del Palmar')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (199, 18, N'San Martín')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (200, 18, N'San Miguel')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (201, 18, N'San Roque')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (202, 18, N'Santo Tomé')
GO
print 'Processed 200 total records'
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (203, 18, N'Sauce')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (204, 22, N'Almirante Brown')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (205, 22, N'Bermejo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (206, 22, N'Comandante Fernández')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (207, 22, N'Chacabuco')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (208, 22, N'12 de Octubre')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (209, 22, N'2 de Abril')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (210, 22, N'Fray Justo Santa María de Oro')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (211, 22, N'General Belgrano')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (212, 22, N'General Donovan')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (213, 22, N'General Güemes')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (214, 22, N'Independencia')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (215, 22, N'Libertad')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (216, 22, N'Libertador General San Martín')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (217, 22, N'Maipú')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (218, 22, N'Mayor Luis J. Fontana')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (219, 22, N'9 de Julio')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (220, 22, N'O''Higgins')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (221, 22, N'Presidencia de la Plaza')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (222, 22, N'1º de Mayo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (223, 22, N'Quitilipi')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (224, 22, N'San Fernando')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (225, 22, N'San Lorenzo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (226, 22, N'Sargento Cabral')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (227, 22, N'Tapenagá')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (228, 22, N'25 de Mayo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (229, 26, N'Biedma')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (230, 26, N'Cushamen')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (231, 26, N'Escalante')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (232, 26, N'Florentino Ameghino')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (233, 26, N'Futaleufú')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (234, 26, N'Gaiman')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (235, 26, N'Gastre')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (236, 26, N'Languiñeo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (237, 26, N'Mártires')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (238, 26, N'Paso de Indios')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (239, 26, N'Rawson')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (240, 26, N'Río Senguer')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (241, 26, N'Sarmiento')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (242, 26, N'Tehuelches')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (243, 26, N'Telsen')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (244, 30, N'Colón')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (245, 30, N'Concordia')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (246, 30, N'Diamante')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (247, 30, N'Federación')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (248, 30, N'Federal')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (249, 30, N'Feliciano')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (250, 30, N'Gualeguay')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (251, 30, N'Gualeguaychú')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (252, 30, N'Islas del Ibicuy')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (253, 30, N'La Paz')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (254, 30, N'Nogoyá')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (255, 30, N'Paraná')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (256, 30, N'San Salvador')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (257, 30, N'Tala')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (258, 30, N'Uruguay')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (259, 30, N'Victoria')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (260, 30, N'Villaguay')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (261, 34, N'Bermejo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (262, 34, N'Formosa')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (263, 34, N'Laishi')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (264, 34, N'Matacos')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (265, 34, N'Patiño')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (266, 34, N'Pilagás')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (267, 34, N'Pilcomayo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (268, 34, N'Pirané')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (269, 34, N'Ramón Lista')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (270, 38, N'Cochinoca')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (271, 38, N'El Carmen')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (272, 38, N'Dr. Manuel Belgrano')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (273, 38, N'Humahuaca')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (274, 38, N'Ledesma')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (275, 38, N'Palpalá')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (276, 38, N'Rinconada')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (277, 38, N'San Antonio')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (278, 38, N'San Pedro')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (279, 38, N'Santa Bárbara')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (280, 38, N'Santa Catalina')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (281, 38, N'Susques')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (282, 38, N'Tilcara')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (283, 38, N'Tumbaya')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (284, 38, N'Valle Grande')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (285, 38, N'Yavi')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (286, 42, N'Atreucó')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (287, 42, N'Caleu Caleu')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (288, 42, N'Capital')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (289, 42, N'Catriló')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (290, 42, N'Conhelo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (291, 42, N'Curacó')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (292, 42, N'Chalileo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (293, 42, N'Chapaleufú')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (294, 42, N'Chical Co')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (295, 42, N'Guatraché')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (296, 42, N'Hucal')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (297, 42, N'Lihuel Calel')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (298, 42, N'Limay Mahuida')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (299, 42, N'Loventué')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (300, 42, N'Maracó')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (301, 42, N'Puelén')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (302, 42, N'Quemú Quemú')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (303, 42, N'Rancul')
GO
print 'Processed 300 total records'
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (304, 42, N'Realicó')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (305, 42, N'Toay')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (306, 42, N'Trenel')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (307, 42, N'Utracán')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (308, 46, N'Arauco')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (309, 46, N'Capital')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (310, 46, N'Castro Barros')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (311, 46, N'Coronel Felipe Varela')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (312, 46, N'Chamical')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (313, 46, N'Chilecito')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (314, 46, N'Famatina')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (315, 46, N'General Ángel V. Peñaloza')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (316, 46, N'General Belgrano')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (317, 46, N'General Juan Facundo Quiroga')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (318, 46, N'General Lamadrid')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (319, 46, N'General Ocampo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (320, 46, N'General San Martín')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (321, 46, N'Vinchina')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (322, 46, N'Independencia')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (323, 46, N'Rosario Vera Peñaloza')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (324, 46, N'San Blas de los Sauces')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (325, 46, N'Sanagasta')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (326, 50, N'Capital')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (327, 50, N'General Alvear')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (328, 50, N'Godoy Cruz')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (329, 50, N'Guaymallén')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (330, 50, N'Junín')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (331, 50, N'La Paz')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (332, 50, N'Las Heras')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (333, 50, N'Lavalle')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (334, 50, N'Luján de Cuyo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (335, 50, N'Maipú')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (336, 50, N'Malargüe')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (337, 50, N'Rivadavia')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (338, 50, N'San Carlos')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (339, 50, N'San Martín')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (340, 50, N'San Rafael')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (341, 50, N'Santa Rosa')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (342, 50, N'Tunuyán')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (343, 50, N'Tupungato')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (344, 54, N'Apóstoles')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (345, 54, N'Cainguás')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (346, 54, N'Candelaria')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (347, 54, N'Capital')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (348, 54, N'Concepción')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (349, 54, N'Eldorado')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (350, 54, N'General Manuel Belgrano')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (351, 54, N'Guaraní')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (352, 54, N'Iguazú')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (353, 54, N'Leandro N. Alem')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (354, 54, N'Libertador General San Martín')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (355, 54, N'Montecarlo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (356, 54, N'Oberá')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (357, 54, N'San Ignacio')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (358, 54, N'San Javier')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (359, 54, N'San Pedro')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (360, 54, N'25 de Mayo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (361, 58, N'Aluminé')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (362, 58, N'Añelo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (363, 58, N'Catán Lil')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (364, 58, N'Collón Curá')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (365, 58, N'Confluencia')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (366, 58, N'Chos Malal')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (367, 58, N'Huiliches')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (368, 58, N'Lácar')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (369, 58, N'Loncopué')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (370, 58, N'Los Lagos')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (371, 58, N'Minas')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (372, 58, N'Ñorquín')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (373, 58, N'Pehuenches')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (374, 58, N'Picún Leufú')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (375, 58, N'Picunches')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (376, 58, N'Zapala')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (377, 62, N'Adolfo Alsina')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (378, 62, N'Avellaneda')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (379, 62, N'Bariloche')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (380, 62, N'Conesa')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (381, 62, N'El Cuy')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (382, 62, N'General Roca')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (383, 62, N'9 de Julio')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (384, 62, N'Ñorquincó')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (385, 62, N'Pichi Mahuida')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (386, 62, N'Pilcaniyeu')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (387, 62, N'San Antonio')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (388, 62, N'Valcheta')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (389, 62, N'25 de Mayo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (390, 66, N'Anta')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (391, 66, N'Cachi')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (392, 66, N'Cafayate')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (393, 66, N'Capital')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (394, 66, N'Cerrillos')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (395, 66, N'Chicoana')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (396, 66, N'General Güemes')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (397, 66, N'General José de San Martín')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (398, 66, N'Guachipas')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (399, 66, N'Iruya')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (400, 66, N'La Caldera')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (401, 66, N'La Candelaria')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (402, 66, N'La Poma')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (403, 66, N'La Viña')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (404, 66, N'Los Andes')
GO
print 'Processed 400 total records'
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (405, 66, N'Metán')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (406, 66, N'Molinos')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (407, 66, N'Orán')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (408, 66, N'Rivadavia')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (409, 66, N'Rosario de la Frontera')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (410, 66, N'Rosario de Lerma')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (411, 66, N'San Carlos')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (412, 66, N'Santa Victoria')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (413, 70, N'Albardón')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (414, 70, N'Angaco')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (415, 70, N'Calingasta')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (416, 70, N'Capital')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (417, 70, N'Caucete')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (418, 70, N'Chimbas')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (419, 70, N'Iglesia')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (420, 70, N'Jáchal')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (421, 70, N'9 de Julio')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (422, 70, N'Pocito')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (423, 70, N'Rawson')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (424, 70, N'Rivadavia')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (425, 70, N'San Martín')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (426, 70, N'Santa Lucía')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (427, 70, N'Sarmiento')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (428, 70, N'Ullum')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (429, 70, N'Valle Fértil')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (430, 70, N'25 de Mayo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (431, 70, N'Zonda')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (432, 74, N'Ayacucho')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (433, 74, N'Belgrano')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (434, 74, N'Coronel Pringles')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (435, 74, N'Chacabuco')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (436, 74, N'General Pedernera')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (437, 74, N'Gobernador Dupuy')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (438, 74, N'Junín')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (439, 74, N'La Capital')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (440, 74, N'Libertador General San Martín')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (441, 78, N'Corpen Aike')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (442, 78, N'Deseado')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (443, 78, N'Güer Aike')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (444, 78, N'Lago Argentino')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (445, 78, N'Lago Buenos Aires')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (446, 78, N'Magallanes')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (447, 78, N'Río Chico')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (448, 82, N'Belgrano')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (449, 82, N'Caseros')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (450, 82, N'Castellanos')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (451, 82, N'Constitución')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (452, 82, N'Garay')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (453, 82, N'General López')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (454, 82, N'General Obligado')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (455, 82, N'Iriondo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (456, 82, N'La Capital')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (457, 82, N'Las Colonias')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (458, 82, N'9 de Julio')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (459, 82, N'Rosario')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (460, 82, N'San Cristóbal')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (461, 82, N'San Javier')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (462, 82, N'San Jerónimo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (463, 82, N'San Justo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (464, 82, N'San Lorenzo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (465, 82, N'San Martín')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (466, 82, N'Vera')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (467, 86, N'Aguirre')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (468, 86, N'Alberdi')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (469, 86, N'Atamisqui')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (470, 86, N'Avellaneda')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (471, 86, N'Banda')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (472, 86, N'Belgrano')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (473, 86, N'Capital')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (474, 86, N'Copo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (475, 86, N'Choya')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (476, 86, N'Figueroa')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (477, 86, N'General Taboada')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (478, 86, N'Guasayán')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (479, 86, N'Jiménez')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (480, 86, N'Juan F. Ibarra')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (481, 86, N'Loreto')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (482, 86, N'Mitre')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (483, 86, N'Moreno')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (484, 86, N'Ojo de Agua')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (485, 86, N'Pellegrini')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (486, 86, N'Quebrachos')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (487, 86, N'Río Hondo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (488, 86, N'Rivadavia')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (489, 86, N'Robles')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (490, 86, N'Salavina')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (491, 86, N'San Martín')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (492, 86, N'Sarmiento')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (493, 86, N'Silípica')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (494, 90, N'Burruyacú')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (495, 90, N'Cruz Alta')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (496, 90, N'Chicligasta')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (497, 90, N'Famaillá')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (498, 90, N'Graneros')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (499, 90, N'Juan B. Alberdi')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (500, 90, N'La Cocha')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (501, 90, N'Leales')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (502, 90, N'Lules')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (503, 90, N'Monteros')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (504, 90, N'Río Chico')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (505, 90, N'Capital')
GO
print 'Processed 500 total records'
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (506, 90, N'Simoca')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (507, 90, N'Tafí del Valle')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (508, 90, N'Tafí Viejo')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (509, 90, N'Trancas')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (510, 90, N'Yerba Buena')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (511, 94, N'Río Grande')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (512, 94, N'Ushuaia')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (513, 94, N'Islas del Atlántico Sur')
INSERT [dbo].[Departamentos] ([Id], [Codigo], [Departamento]) VALUES (514, 94, N'Antártida Argentina')
SET IDENTITY_INSERT [dbo].[Departamentos] OFF
/****** Object:  Table [dbo].[Store]    Script Date: 05/17/2024 16:36:17 ******/
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
SET IDENTITY_INSERT [dbo].[Store] ON
INSERT [dbo].[Store] ([IdStore], [IdMasterHome], [RazonSocial], [CUIT], [Provincia], [Departamento], [Calle], [Altura], [Barrio], [Telefono], [Celular], [ABM], [Borrado], [Usuario]) VALUES (1, 1, N'SISTEMAS', N'0000000', 2, 1, N'SC', N'000', N'SB', N'0000000', N'000000', N'A', 0, N'Sistemas')
SET IDENTITY_INSERT [dbo].[Store] OFF
/****** Object:  Table [dbo].[Product]    Script Date: 05/17/2024 16:36:17 ******/
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
SET IDENTITY_INSERT [dbo].[Product] ON
INSERT [dbo].[Product] ([IdProduct], [IdStore], [ProductName], [DescriptionProduct], [Codigo], [Imagen], [ABM], [Borrado], [Usuario], [FechaAlta]) VALUES (2, 1, N'Producto 2', NULL, N'BBBB000', 2, N'A', 0, N'sistemas', CAST(0x0000B17200F3B7CE AS DateTime))
SET IDENTITY_INSERT [dbo].[Product] OFF
/****** Object:  Table [dbo].[Category]    Script Date: 05/17/2024 16:36:17 ******/
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
/****** Object:  Table [dbo].[SubCategory]    Script Date: 05/17/2024 16:36:17 ******/
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
/****** Object:  Table [dbo].[Rel_P_C_SC]    Script Date: 05/17/2024 16:36:17 ******/
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
/****** Object:  Table [dbo].[StockDetail]    Script Date: 05/17/2024 16:36:17 ******/
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
/****** Object:  Table [dbo].[Stock]    Script Date: 05/17/2024 16:36:17 ******/
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
/****** Object:  ForeignKey [FK_Departamentos_Provincias]    Script Date: 05/17/2024 16:36:17 ******/
ALTER TABLE [dbo].[Departamentos]  WITH CHECK ADD  CONSTRAINT [FK_Departamentos_Provincias] FOREIGN KEY([Codigo])
REFERENCES [dbo].[Provincias] ([Codigo])
GO
ALTER TABLE [dbo].[Departamentos] CHECK CONSTRAINT [FK_Departamentos_Provincias]
GO
/****** Object:  ForeignKey [FK_Store_Departamentos]    Script Date: 05/17/2024 16:36:17 ******/
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_Departamentos] FOREIGN KEY([Departamento])
REFERENCES [dbo].[Departamentos] ([Id])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_Departamentos]
GO
/****** Object:  ForeignKey [FK_Store_Provincias]    Script Date: 05/17/2024 16:36:17 ******/
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_Provincias] FOREIGN KEY([Provincia])
REFERENCES [dbo].[Provincias] ([Codigo])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_Provincias]
GO
/****** Object:  ForeignKey [FK_Store_Store]    Script Date: 05/17/2024 16:36:17 ******/
ALTER TABLE [dbo].[Store]  WITH CHECK ADD  CONSTRAINT [FK_Store_Store] FOREIGN KEY([IdMasterHome])
REFERENCES [dbo].[Store] ([IdStore])
GO
ALTER TABLE [dbo].[Store] CHECK CONSTRAINT [FK_Store_Store]
GO
/****** Object:  ForeignKey [FK_Product_Store]    Script Date: 05/17/2024 16:36:17 ******/
ALTER TABLE [dbo].[Product]  WITH CHECK ADD  CONSTRAINT [FK_Product_Store] FOREIGN KEY([IdStore])
REFERENCES [dbo].[Store] ([IdStore])
GO
ALTER TABLE [dbo].[Product] CHECK CONSTRAINT [FK_Product_Store]
GO
/****** Object:  ForeignKey [FK_Category_Store]    Script Date: 05/17/2024 16:36:17 ******/
ALTER TABLE [dbo].[Category]  WITH CHECK ADD  CONSTRAINT [FK_Category_Store] FOREIGN KEY([IdStore])
REFERENCES [dbo].[Store] ([IdStore])
GO
ALTER TABLE [dbo].[Category] CHECK CONSTRAINT [FK_Category_Store]
GO
/****** Object:  ForeignKey [FK_SubCategory_Store]    Script Date: 05/17/2024 16:36:17 ******/
ALTER TABLE [dbo].[SubCategory]  WITH CHECK ADD  CONSTRAINT [FK_SubCategory_Store] FOREIGN KEY([IdStore])
REFERENCES [dbo].[Store] ([IdStore])
GO
ALTER TABLE [dbo].[SubCategory] CHECK CONSTRAINT [FK_SubCategory_Store]
GO
/****** Object:  ForeignKey [FK_Rel_P_C_SC_Category]    Script Date: 05/17/2024 16:36:17 ******/
ALTER TABLE [dbo].[Rel_P_C_SC]  WITH CHECK ADD  CONSTRAINT [FK_Rel_P_C_SC_Category] FOREIGN KEY([IdCategory])
REFERENCES [dbo].[Category] ([IdCategory])
GO
ALTER TABLE [dbo].[Rel_P_C_SC] CHECK CONSTRAINT [FK_Rel_P_C_SC_Category]
GO
/****** Object:  ForeignKey [FK_Rel_P_C_SC_Store]    Script Date: 05/17/2024 16:36:17 ******/
ALTER TABLE [dbo].[Rel_P_C_SC]  WITH CHECK ADD  CONSTRAINT [FK_Rel_P_C_SC_Store] FOREIGN KEY([IdStore])
REFERENCES [dbo].[Store] ([IdStore])
GO
ALTER TABLE [dbo].[Rel_P_C_SC] CHECK CONSTRAINT [FK_Rel_P_C_SC_Store]
GO
/****** Object:  ForeignKey [FK_Rel_P_C_SC_SubCategory]    Script Date: 05/17/2024 16:36:17 ******/
ALTER TABLE [dbo].[Rel_P_C_SC]  WITH CHECK ADD  CONSTRAINT [FK_Rel_P_C_SC_SubCategory] FOREIGN KEY([IdSubcategory])
REFERENCES [dbo].[SubCategory] ([IdSubCategory])
GO
ALTER TABLE [dbo].[Rel_P_C_SC] CHECK CONSTRAINT [FK_Rel_P_C_SC_SubCategory]
GO
/****** Object:  ForeignKey [FK_StockDetail_Product]    Script Date: 05/17/2024 16:36:17 ******/
ALTER TABLE [dbo].[StockDetail]  WITH CHECK ADD  CONSTRAINT [FK_StockDetail_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[StockDetail] CHECK CONSTRAINT [FK_StockDetail_Product]
GO
/****** Object:  ForeignKey [FK_StockDetail_State]    Script Date: 05/17/2024 16:36:17 ******/
ALTER TABLE [dbo].[StockDetail]  WITH CHECK ADD  CONSTRAINT [FK_StockDetail_State] FOREIGN KEY([IdStateEstado])
REFERENCES [dbo].[State] ([IdState])
GO
ALTER TABLE [dbo].[StockDetail] CHECK CONSTRAINT [FK_StockDetail_State]
GO
/****** Object:  ForeignKey [FK_StockDetail_State1]    Script Date: 05/17/2024 16:36:17 ******/
ALTER TABLE [dbo].[StockDetail]  WITH CHECK ADD  CONSTRAINT [FK_StockDetail_State1] FOREIGN KEY([IdStateOperacion])
REFERENCES [dbo].[State] ([IdState])
GO
ALTER TABLE [dbo].[StockDetail] CHECK CONSTRAINT [FK_StockDetail_State1]
GO
/****** Object:  ForeignKey [FK_StockDetail_Store]    Script Date: 05/17/2024 16:36:17 ******/
ALTER TABLE [dbo].[StockDetail]  WITH CHECK ADD  CONSTRAINT [FK_StockDetail_Store] FOREIGN KEY([IdStore])
REFERENCES [dbo].[Store] ([IdStore])
GO
ALTER TABLE [dbo].[StockDetail] CHECK CONSTRAINT [FK_StockDetail_Store]
GO
/****** Object:  ForeignKey [FK_Stock_Product]    Script Date: 05/17/2024 16:36:17 ******/
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Product] FOREIGN KEY([IdProduct])
REFERENCES [dbo].[Product] ([IdProduct])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_Product]
GO
/****** Object:  ForeignKey [FK_Stock_Store]    Script Date: 05/17/2024 16:36:17 ******/
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_Store] FOREIGN KEY([IdStore])
REFERENCES [dbo].[Store] ([IdStore])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_Store]
GO
