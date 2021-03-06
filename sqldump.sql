USE [fabrika]
GO
/****** Object:  Table [dbo].[gelir_gider]    Script Date: 06.05.2018 02:51:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[gelir_gider](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[tip] [nvarchar](50) NULL,
	[kurum] [nvarchar](50) NULL,
	[tarih] [date] NULL,
	[fiyat] [int] NULL,
	[_not] [nvarchar](50) NULL,
 CONSTRAINT [PK_gider] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hammadde]    Script Date: 06.05.2018 02:51:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hammadde](
	[hammadde_id] [int] NOT NULL,
	[hammadde_adi] [nchar](10) NULL,
 CONSTRAINT [PK_hammadde] PRIMARY KEY CLUSTERED 
(
	[hammadde_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hammadde_urun]    Script Date: 06.05.2018 02:51:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hammadde_urun](
	[id] [int] NOT NULL,
	[hammadde_id] [int] NULL,
	[urun_id] [int] NULL,
	[oran] [float] NULL,
 CONSTRAINT [PK_hammadde_urun] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[hammaddestok]    Script Date: 06.05.2018 02:51:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[hammaddestok](
	[id] [int] NOT NULL,
	[hammaddemiktar] [float] NULL,
	[tarih] [date] NULL,
	[hammadde_id] [int] NULL,
 CONSTRAINT [PK_stok] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[kullanici]    Script Date: 06.05.2018 02:51:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[kullanici](
	[tc] [nchar](11) NOT NULL,
	[ad] [nvarchar](50) NULL,
	[soyad] [nvarchar](50) NULL,
	[adres] [nvarchar](50) NULL,
	[dogumtarihi] [date] NULL,
	[eposta] [nvarchar](50) NULL,
	[telefon] [nchar](15) NULL,
	[yonetici] [bit] NULL,
	[kimyager] [bit] NULL,
	[uretimmuduru] [bit] NULL,
	[depo] [bit] NULL,
	[pazarlama] [bit] NULL,
	[muhasebe] [bit] NULL,
	[maas] [int] NULL,
	[kullaniciadi] [nvarchar](50) NULL,
	[sifre] [nvarchar](50) NULL,
	[gizlisoru] [nvarchar](50) NULL,
	[gizlicevap] [nvarchar](50) NULL,
	[is_baslangic] [date] NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[tc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[musteri]    Script Date: 06.05.2018 02:51:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[musteri](
	[musteri_tc] [bigint] NOT NULL,
	[musteri_adi] [nvarchar](50) NULL,
	[musteri_soyadi] [nvarchar](50) NULL,
	[musteri_mail] [nvarchar](50) NULL,
	[musteri_telefon] [nvarchar](50) NULL,
	[musteri_adres] [nvarchar](50) NULL,
 CONSTRAINT [PK_musteri] PRIMARY KEY CLUSTERED 
(
	[musteri_tc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[order]    Script Date: 06.05.2018 02:51:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[order](
	[id] [int] NOT NULL,
	[siparisadi] [nchar](10) NULL,
	[miktar] [float] NULL,
	[siparistarihi] [date] NULL,
	[teslimtarihi] [date] NULL,
	[depokontrol] [bit] NULL,
	[uretimkontrol] [bit] NULL,
	[teslimkontrol] [bit] NULL,
	[musteri_tc] [bigint] NULL,
	[fiyat] [int] NULL,
 CONSTRAINT [PK_order] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[product]    Script Date: 06.05.2018 02:51:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[product](
	[urun_id] [int] NOT NULL,
	[urunadi] [nchar](10) NULL,
	[birimfiyati] [int] NULL,
 CONSTRAINT [PK_product] PRIMARY KEY CLUSTERED 
(
	[urun_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tedarikci]    Script Date: 06.05.2018 02:51:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tedarikci](
	[tedarikci_id] [int] IDENTITY(1,1) NOT NULL,
	[firmaadi] [nvarchar](50) NULL,
	[ad] [nvarchar](50) NULL,
	[soyad] [nvarchar](50) NULL,
	[eposta] [nvarchar](50) NULL,
	[telefon] [nvarchar](50) NULL,
	[adres] [nvarchar](50) NULL,
	[tc] [nvarchar](50) NULL,
 CONSTRAINT [PK_tedarikci] PRIMARY KEY CLUSTERED 
(
	[tedarikci_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tedarikci_hammadde]    Script Date: 06.05.2018 02:51:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tedarikci_hammadde](
	[id] [int] NOT NULL,
	[tedarikci_id] [int] NULL,
	[hammadde_id] [int] NULL,
 CONSTRAINT [PK_tedarikci_hammadde] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[urunstok]    Script Date: 06.05.2018 02:51:34 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[urunstok](
	[id] [int] NOT NULL,
	[urunmiktar] [float] NULL,
	[urun_id] [int] NOT NULL,
 CONSTRAINT [PK_urunstok] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vardiya]    Script Date: 06.05.2018 02:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vardiya](
	[vardiya_id] [int] NOT NULL,
	[gun] [nchar](10) NULL,
	[saat] [nchar](10) NULL,
 CONSTRAINT [PK_vardiya] PRIMARY KEY CLUSTERED 
(
	[vardiya_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[vardiya_kullanici]    Script Date: 06.05.2018 02:51:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[vardiya_kullanici](
	[id] [int] NOT NULL,
	[vardiya_id] [int] NULL,
	[tc] [nchar](11) NULL,
 CONSTRAINT [PK_vardiya_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[kullanici] ADD  CONSTRAINT [DF_kullanici_yonetici]  DEFAULT ((0)) FOR [yonetici]
GO
ALTER TABLE [dbo].[kullanici] ADD  CONSTRAINT [DF_kullanici_kimyager]  DEFAULT ((0)) FOR [kimyager]
GO
ALTER TABLE [dbo].[kullanici] ADD  CONSTRAINT [DF_kullanici_uretimmuduru]  DEFAULT ((0)) FOR [uretimmuduru]
GO
ALTER TABLE [dbo].[kullanici] ADD  CONSTRAINT [DF_kullanici_depo]  DEFAULT ((0)) FOR [depo]
GO
ALTER TABLE [dbo].[kullanici] ADD  CONSTRAINT [DF_kullanici_pazarlama]  DEFAULT ((0)) FOR [pazarlama]
GO
ALTER TABLE [dbo].[kullanici] ADD  CONSTRAINT [DF_kullanici_muhasebe]  DEFAULT ((0)) FOR [muhasebe]
GO
ALTER TABLE [dbo].[order] ADD  CONSTRAINT [DF_order_depokontrol]  DEFAULT ((0)) FOR [depokontrol]
GO
ALTER TABLE [dbo].[order] ADD  CONSTRAINT [DF_order_uretimkontrol]  DEFAULT ((0)) FOR [uretimkontrol]
GO
ALTER TABLE [dbo].[order] ADD  CONSTRAINT [DF_order_teslimkontrol]  DEFAULT ((0)) FOR [teslimkontrol]
GO
ALTER TABLE [dbo].[hammadde_urun]  WITH CHECK ADD  CONSTRAINT [FK_hammadde_urun_hammadde] FOREIGN KEY([hammadde_id])
REFERENCES [dbo].[hammadde] ([hammadde_id])
GO
ALTER TABLE [dbo].[hammadde_urun] CHECK CONSTRAINT [FK_hammadde_urun_hammadde]
GO
ALTER TABLE [dbo].[hammadde_urun]  WITH CHECK ADD  CONSTRAINT [FK_hammadde_urun_product] FOREIGN KEY([urun_id])
REFERENCES [dbo].[product] ([urun_id])
GO
ALTER TABLE [dbo].[hammadde_urun] CHECK CONSTRAINT [FK_hammadde_urun_product]
GO
ALTER TABLE [dbo].[hammaddestok]  WITH CHECK ADD  CONSTRAINT [FK_hammaddestok_hammadde] FOREIGN KEY([hammadde_id])
REFERENCES [dbo].[hammadde] ([hammadde_id])
GO
ALTER TABLE [dbo].[hammaddestok] CHECK CONSTRAINT [FK_hammaddestok_hammadde]
GO
ALTER TABLE [dbo].[order]  WITH CHECK ADD  CONSTRAINT [FK_order_musteri] FOREIGN KEY([musteri_tc])
REFERENCES [dbo].[musteri] ([musteri_tc])
GO
ALTER TABLE [dbo].[order] CHECK CONSTRAINT [FK_order_musteri]
GO
ALTER TABLE [dbo].[tedarikci_hammadde]  WITH CHECK ADD  CONSTRAINT [FK_tedarikci_hammadde_hammadde] FOREIGN KEY([hammadde_id])
REFERENCES [dbo].[hammadde] ([hammadde_id])
GO
ALTER TABLE [dbo].[tedarikci_hammadde] CHECK CONSTRAINT [FK_tedarikci_hammadde_hammadde]
GO
ALTER TABLE [dbo].[tedarikci_hammadde]  WITH CHECK ADD  CONSTRAINT [FK_tedarikci_hammadde_tedarikci] FOREIGN KEY([tedarikci_id])
REFERENCES [dbo].[tedarikci] ([tedarikci_id])
GO
ALTER TABLE [dbo].[tedarikci_hammadde] CHECK CONSTRAINT [FK_tedarikci_hammadde_tedarikci]
GO
ALTER TABLE [dbo].[urunstok]  WITH CHECK ADD  CONSTRAINT [FK_urunstok_product] FOREIGN KEY([urun_id])
REFERENCES [dbo].[product] ([urun_id])
GO
ALTER TABLE [dbo].[urunstok] CHECK CONSTRAINT [FK_urunstok_product]
GO
ALTER TABLE [dbo].[vardiya_kullanici]  WITH CHECK ADD  CONSTRAINT [FK_vardiya_kullanici_kullanici] FOREIGN KEY([tc])
REFERENCES [dbo].[kullanici] ([tc])
GO
ALTER TABLE [dbo].[vardiya_kullanici] CHECK CONSTRAINT [FK_vardiya_kullanici_kullanici]
GO
ALTER TABLE [dbo].[vardiya_kullanici]  WITH CHECK ADD  CONSTRAINT [FK_vardiya_kullanici_vardiya] FOREIGN KEY([vardiya_id])
REFERENCES [dbo].[vardiya] ([vardiya_id])
GO
ALTER TABLE [dbo].[vardiya_kullanici] CHECK CONSTRAINT [FK_vardiya_kullanici_vardiya]
GO
