-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 05 Kas 2023, 09:02:21
-- Sunucu sürümü: 8.0.31
-- PHP Sürümü: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `e-shop`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `abone`
--

DROP TABLE IF EXISTS `abone`;
CREATE TABLE IF NOT EXISTS `abone` (
  `abone_id` int NOT NULL AUTO_INCREMENT,
  `abone_email` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  PRIMARY KEY (`abone_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `abone`
--

INSERT INTO `abone` (`abone_id`, `abone_email`) VALUES
(2, 'yazilimyolcusu@gmail.com'),
(3, ''),
(4, ''),
(5, ''),
(6, '&lt;script&gt; window.location.href=&quot;https://www.yazilimbilisim.net&quot;;&lt;/script&gt;'),
(7, '&lt;script&gt;window.alert(&quot;xss açığı var&quot;)&lt;/script&gt;');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ayarlar`
--

DROP TABLE IF EXISTS `ayarlar`;
CREATE TABLE IF NOT EXISTS `ayarlar` (
  `id` int NOT NULL,
  `baslik` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `aciklama` varchar(500) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `anahtarkelime` varchar(400) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `telefon` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `adres` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `facebook` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `instagram` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `youtube` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `twitter` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `logo` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `mesai` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `baslik`, `aciklama`, `anahtarkelime`, `telefon`, `email`, `adres`, `facebook`, `instagram`, `youtube`, `twitter`, `logo`, `mesai`) VALUES
(1, '', '', '', '0000000', 'deneme@gmail.com', 'Türkiye', 'facebook.com/', 'instagram.com/', 'youtube.com/', 'twitter.com', '800074890321647366411.jpg', '7/24 açığız');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cokluresim`
--

DROP TABLE IF EXISTS `cokluresim`;
CREATE TABLE IF NOT EXISTS `cokluresim` (
  `id` int NOT NULL AUTO_INCREMENT,
  `resim` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `urun_id` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `cokluresim`
--

INSERT INTO `cokluresim` (`id`, `resim`, `urun_id`) VALUES
(8, '7698526483114333769bg-banner.jpg', 6),
(9, '7602883150514775006.jpg', 6),
(15, '7725075926618331114bg-banner.jpg', 5),
(16, '97165354483107025956.jpg', 5),
(17, '7970325581617283gözlük.jpg', 7),
(18, '607232584629644452ayakkabı.jpg', 6);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hakkimizda`
--

DROP TABLE IF EXISTS `hakkimizda`;
CREATE TABLE IF NOT EXISTS `hakkimizda` (
  `hakkimizda_id` int NOT NULL,
  `hakkimizda_baslik` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `hakkimizda_detay` text CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `hakkimizda_resim` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `hakkimizda_misyon` text CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `hakkimizda_vizyon` text CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  PRIMARY KEY (`hakkimizda_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `hakkimizda`
--

INSERT INTO `hakkimizda` (`hakkimizda_id`, `hakkimizda_baslik`, `hakkimizda_detay`, `hakkimizda_resim`, `hakkimizda_misyon`, `hakkimizda_vizyon`) VALUES
(1, 'Bİlgi', '<p>E-ticaret Hakkımızda</p>\r\n', '23251228895699607813.jpg', 'Hakkımda', 'Hakkımızda');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kategori`
--

DROP TABLE IF EXISTS `kategori`;
CREATE TABLE IF NOT EXISTS `kategori` (
  `kategori_id` int NOT NULL AUTO_INCREMENT,
  `kategori_adi` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `kategori_sira` int NOT NULL,
  `kategori_durum` int NOT NULL,
  PRIMARY KEY (`kategori_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori_adi`, `kategori_sira`, `kategori_durum`) VALUES
(1, 'Elbisekadın', 1, 1),
(2, 'ayakkabı', 12, 1),
(4, 'Çorap', 23, 1),
(9, 'televizyon', 6, 1),
(10, 'Şapka', 25, 1),
(11, 'Gömlek', 13, 1),
(12, 'Gözlük', 7, 1),
(13, 'Pantolon', 28, 1),
(14, 'Tişört', 17, 1),
(15, 'Atkı', 10, 1),
(16, 'Drone', 29, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kullanici`
--

DROP TABLE IF EXISTS `kullanici`;
CREATE TABLE IF NOT EXISTS `kullanici` (
  `kullanici_id` int NOT NULL AUTO_INCREMENT,
  `kullanici_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `kullanici_adi` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `kullanici_sifre` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `kullanici_adsoyad` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `kullanici_yetki` int NOT NULL,
  `kullanici_adres` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `kullanici_il` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `kullanici_ilce` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `kullanici_tel` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `kullanici_resim` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `kullanici_mail` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  PRIMARY KEY (`kullanici_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `kullanici`
--

INSERT INTO `kullanici` (`kullanici_id`, `kullanici_zaman`, `kullanici_adi`, `kullanici_sifre`, `kullanici_adsoyad`, `kullanici_yetki`, `kullanici_adres`, `kullanici_il`, `kullanici_ilce`, `kullanici_tel`, `kullanici_resim`, `kullanici_mail`) VALUES
(1, '2023-04-29 18:11:36', 'admin', '25d55ad283aa400af464c76d713c07ad', 'admin', 2, 'Türkiye', 'İstanbul', 'Ümraniye', '0555 999 99 88', '', ''),
(4, '2023-11-05 09:00:57', 'admin2', 'e10adc3949ba59abbe56e057f20f883e', 'admin2', 2, '', '', '', '', '', ''),
(10, '2020-06-19 11:18:54', 'ahmettalha', 'e10adc3949ba59abbe56e057f20f883e', 'Ahmet talha', 1, '', '', '', '', '50948643801130778743.png', ''),
(11, '2020-07-04 11:12:01', 'alisert', '8b51b57174c68bd4cb330bfc7de6f0d8', 'ali sert', 1, '', '', '', '', '', 'alisert2020@gmail.com'),
(12, '2020-06-20 12:20:39', 'hasankalem', 'e10adc3949ba59abbe56e057f20f883e', 'hasan kalem', 1, '', '', '', '', '', 'hasankalem@gmail.com'),
(13, '2020-07-03 07:39:02', 'alihakan ', '25d55ad283aa400af464c76d713c07ad', 'ali hakan', 1, 'ankara', 'ankara', 'mavi ', '16783883', '', 'alihakan@gmail.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparisler`
--

DROP TABLE IF EXISTS `siparisler`;
CREATE TABLE IF NOT EXISTS `siparisler` (
  `siparis_id` int NOT NULL AUTO_INCREMENT,
  `kullanici_id` int NOT NULL,
  `urun_id` int NOT NULL,
  `siparis_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `urun_adet` int NOT NULL,
  `urun_fiyat` int NOT NULL,
  `toplam_fiyat` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `odeme_turu` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `siparis_onay` int NOT NULL,
  PRIMARY KEY (`siparis_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `siparisler`
--

INSERT INTO `siparisler` (`siparis_id`, `kullanici_id`, `urun_id`, `siparis_zaman`, `urun_adet`, `urun_fiyat`, `toplam_fiyat`, `odeme_turu`, `siparis_onay`) VALUES
(13, 12, 6, '2020-07-03 05:31:29', 1, 10000, '23600', '1', 0),
(14, 13, 6, '2020-07-03 05:33:10', 1, 10000, '23836', '1', 0),
(15, 13, 10, '2020-07-03 05:33:10', 5, 20, '23836', '1', 1),
(17, 13, 10, '2020-07-03 05:40:02', 5, 20, '23836', '0', 1),
(18, 13, 8, '2020-07-03 06:55:31', 2, 5, '23.6', '1', 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slider`
--

DROP TABLE IF EXISTS `slider`;
CREATE TABLE IF NOT EXISTS `slider` (
  `slider_id` int NOT NULL AUTO_INCREMENT,
  `slider_baslik` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `slider_aciklama` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `slider_link` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `slider_button` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `slider_resim` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `slider_sira` int NOT NULL,
  `slider_durum` int NOT NULL,
  `slider_banner` int NOT NULL,
  PRIMARY KEY (`slider_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `slider`
--

INSERT INTO `slider` (`slider_id`, `slider_baslik`, `slider_aciklama`, `slider_link`, `slider_button`, `slider_resim`, `slider_sira`, `slider_durum`, `slider_banner`) VALUES
(10, 'telefon', 'hepsi bir arada', 'yazilimyolcusu.com', 'Git', '5387719259210489691.jpg', 1, 1, 1),
(11, 'Sarj aleti', 'Mükemmel sarj aleti', 'yazilimyolcusu.com', 'Git', '1635073706154095203_1.jpg', 2, 1, 0),
(12, 'dron', 'dron', 'yazilimyolcusu.com', 'Git', '58755043633047993.jpg', 3, 1, 1),
(13, 'Kamera', 'mükemmel kamera', 'yazilimyolcusu.com', 'Git', '1865205717848062871_5.jpg', 4, 1, 0),
(15, 'Kamera', 'kamera', 'yazilimyolcusu.com', 'Git', '39735876669180478694.jpg', 7, 1, 1);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `urunler`
--

DROP TABLE IF EXISTS `urunler`;
CREATE TABLE IF NOT EXISTS `urunler` (
  `urun_id` int NOT NULL AUTO_INCREMENT,
  `kategori_id` int NOT NULL,
  `urun_resim` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `urun_baslik` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `urun_aciklama` text CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `urun_sira` int NOT NULL,
  `urun_model` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `urun_renk` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `urun_adet` int NOT NULL,
  `urun_fiyat` double NOT NULL,
  `onecikan` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `urun_durum` varchar(250) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `urun_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `urun_etiket` varchar(300) CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  PRIMARY KEY (`urun_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `urunler`
--

INSERT INTO `urunler` (`urun_id`, `kategori_id`, `urun_resim`, `urun_baslik`, `urun_aciklama`, `urun_sira`, `urun_model`, `urun_renk`, `urun_adet`, `urun_fiyat`, `onecikan`, `urun_durum`, `urun_zaman`, `urun_etiket`) VALUES
(5, 9, '6333883848718072263.jpg', 'televizyon1', '<p>televizyon m&uuml;kemmel</p>\r\n', 1, '2019', 'beyaz', 4, 129.9, '0', '1', '2020-07-05 11:12:13', 'televizyon, bilgisayar'),
(6, 9, '7634374037438911114.jpg', 'bilgisayar', '<p>bilgisayar</p>\r\n', 2, '2020', 'siyah', 10, 10000, '1', '1', '2020-07-02 19:45:23', 'bilgisayar, 2020'),
(7, 12, '256630649427122649gözlük.jpg', 'yaz gözlüğü', '<p>yaz g&ouml;zl&uuml;ğ&uuml; s&uuml;per</p>\r\n', 10, '2020', 'siyah', 10, 100, '1', '1', '2020-06-19 19:32:17', 'gözlük'),
(8, 15, '416192871549161036atkı.jpg', 'atkı', '<h1><s><em><strong>atkı g&uuml;zel</strong></em></s></h1>\r\n', 13, '2019', 'gri', 100, 10, '1', '1', '2020-07-03 06:57:31', ''),
(9, 2, '52080339389078588ayakkabı.jpg', 'ayakkabı', '<p>ayakkabı g&uuml;zel</p>\r\n', 29, '2020', 'siyah', 110, 10.9, '1', '1', '2020-06-20 14:16:14', ''),
(10, 11, '965664979831146070gömlek.jpg', 'gömlek', '<p>g&ouml;mlek s&uuml;per</p>\r\n', 89, '2020', 'gri', 0, 20, '1', '1', '2020-06-19 19:34:18', ''),
(11, 14, '1951975227714034194tişört.jpg', 'tişört', '<p>tiş&ouml;rt g&uuml;zel</p>\r\n', 16, '2020', 'turuncu', 10, 30.86, '1', '1', '2020-06-20 14:19:53', ''),
(12, 4, '6544438596349520339775-34981buyuk1jpg-34981buyuk1.jpg', 'Çorap', '<p>&Ccedil;orap</p>\r\n', 3, '2019', 'siyah', 10, 5, '1', '1', '2020-06-19 19:35:25', ''),
(13, 10, '5598807640210998292şapka.png', 'şapka', '<p>şapka</p>\r\n', 76, '', '', 0, 10, '1', '1', '2020-06-19 19:35:49', ''),
(14, 16, '8213376722032562673.jpg', 'drone', '<p>drone &ccedil;ok hızlı</p>\r\n', 7, '2020', 'gri', 0, 10.789, '1', '1', '2020-06-20 14:20:42', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yorumlar`
--

DROP TABLE IF EXISTS `yorumlar`;
CREATE TABLE IF NOT EXISTS `yorumlar` (
  `yorum_id` int NOT NULL AUTO_INCREMENT,
  `yorum_detay` text CHARACTER SET utf8mb3 COLLATE utf8mb3_turkish_ci NOT NULL,
  `yorum_zaman` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `urun_id` int NOT NULL,
  `kullanici_id` int NOT NULL,
  `yorum_onay` int NOT NULL,
  PRIMARY KEY (`yorum_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_turkish_ci;

--
-- Tablo döküm verisi `yorumlar`
--

INSERT INTO `yorumlar` (`yorum_id`, `yorum_detay`, `yorum_zaman`, `urun_id`, `kullanici_id`, `yorum_onay`) VALUES
(3, 'mükmemmel', '2020-06-20 12:20:11', 6, 13, 1),
(4, 'güzeldi', '2020-06-20 12:12:53', 6, 13, 1),
(5, 'gayet güzel', '2020-06-20 12:21:13', 6, 12, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
