-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost
-- Üretim Zamanı: 07 May 2017, 19:44:08
-- Sunucu sürümü: 10.1.21-MariaDB
-- PHP Sürümü: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `vag_club`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cars`
--

CREATE TABLE `cars` (
  `ID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `marka` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `model` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ban` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `reng` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `yurus` int(11) NOT NULL,
  `buraxilis_ili` int(11) NOT NULL,
  `muherrik_hecmi_ag` int(11) NOT NULL,
  `muherrik_hecmi_sm` int(11) NOT NULL,
  `yanacaq` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `oturucu` varchar(15) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `suret_qutusu` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `qiymet` int(11) NOT NULL,
  `valyuta` varchar(5) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `barter` tinyint(1) DEFAULT '0',
  `kredit` tinyint(1) DEFAULT '0',
  `link_photos` text NOT NULL,
  `link_video` text NOT NULL,
  `info` text CHARACTER SET utf8 COLLATE utf8_bin,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `apply` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='masinlar cedveli';

--
-- Tablo döküm verisi `cars`
--

INSERT INTO `cars` (`ID`, `userID`, `marka`, `model`, `ban`, `reng`, `yurus`, `buraxilis_ili`, `muherrik_hecmi_ag`, `muherrik_hecmi_sm`, `yanacaq`, `oturucu`, `suret_qutusu`, `qiymet`, `valyuta`, `barter`, `kredit`, `link_photos`, `link_video`, `info`, `date`, `apply`) VALUES
(3, 14, 'AlfaRomeo', '', 'Dartq?', '', 123, 1952, 123, 150, 'Dizel', 'Tam', 'Avtomat', 123, 'AZN', NULL, 1, '', '', 'Miricik', '2017-05-07 17:33:40', NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `connections`
--

CREATE TABLE `connections` (
  `ID` int(11) NOT NULL,
  `carID` int(11) NOT NULL,
  `toolID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `markalar`
--

CREATE TABLE `markalar` (
  `ID` int(11) NOT NULL,
  `marka` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='butun masin markalari';

--
-- Tablo döküm verisi `markalar`
--

INSERT INTO `markalar` (`ID`, `marka`) VALUES
(1, 'BMW'),
(2, 'Mercedes');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `modeller`
--

CREATE TABLE `modeller` (
  `ID` int(11) NOT NULL,
  `marka_id` int(11) NOT NULL,
  `model` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='markalara uygun modeller';

--
-- Tablo döküm verisi `modeller`
--

INSERT INTO `modeller` (`ID`, `marka_id`, `model`) VALUES
(1, 1, 'm5'),
(2, 1, 'X5'),
(3, 2, 'S500'),
(4, 2, 'C230');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `tools`
--

CREATE TABLE `tools` (
  `İD` int(11) NOT NULL,
  `tool` varchar(70) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `tools`
--

INSERT INTO `tools` (`İD`, `tool`) VALUES
(1, 'teker'),
(2, 'luyk'),
(3, 'pencere');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `ad` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `seher` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `email` varchar(70) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `telefon_nomresi` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`ID`, `ad`, `seher`, `email`, `telefon_nomresi`) VALUES
(14, 'Miri', 'Astara', 'asd', '123-1');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `userID` (`userID`);

--
-- Tablo için indeksler `connections`
--
ALTER TABLE `connections`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `connection_carsTable` (`carID`),
  ADD KEY `connection_toolsTable` (`toolID`);

--
-- Tablo için indeksler `markalar`
--
ALTER TABLE `markalar`
  ADD PRIMARY KEY (`ID`);

--
-- Tablo için indeksler `modeller`
--
ALTER TABLE `modeller`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `marka_model` (`marka_id`);

--
-- Tablo için indeksler `tools`
--
ALTER TABLE `tools`
  ADD PRIMARY KEY (`İD`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `cars`
--
ALTER TABLE `cars`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Tablo için AUTO_INCREMENT değeri `connections`
--
ALTER TABLE `connections`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Tablo için AUTO_INCREMENT değeri `markalar`
--
ALTER TABLE `markalar`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Tablo için AUTO_INCREMENT değeri `modeller`
--
ALTER TABLE `modeller`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Tablo için AUTO_INCREMENT değeri `tools`
--
ALTER TABLE `tools`
  MODIFY `İD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `users` (`ID`) ON DELETE CASCADE;

--
-- Tablo kısıtlamaları `connections`
--
ALTER TABLE `connections`
  ADD CONSTRAINT `connection_carsTable` FOREIGN KEY (`carID`) REFERENCES `cars` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `connection_toolsTable` FOREIGN KEY (`toolID`) REFERENCES `tools` (`İD`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `modeller`
--
ALTER TABLE `modeller`
  ADD CONSTRAINT `marka_model` FOREIGN KEY (`marka_id`) REFERENCES `markalar` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
