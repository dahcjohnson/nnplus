CREATE TABLE IF NOT EXISTS `userroles` (
  `ID` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `apirequests` int(10) unsigned NOT NULL,
  `downloadrequests` int(10) unsigned NOT NULL,
  `defaultinvites` int(10) unsigned NOT NULL,
  `isdefault` tinyint(1) unsigned NOT NULL DEFAULT 0,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;


INSERT INTO `userroles` (`ID`, `name`, `apirequests`, `downloadrequests`, `defaultinvites`, `isdefault`) VALUES
(1, 'Guest', 0, 0, 0, 0),
(2, 'User', 10, 10, 1, 1),
(3, 'Admin', 1000, 1000, 1000, 0),
(4, 'Disabled', 0, 0, 0, 0),
(5, 'Friend', 100, 100, 5, 0);

UPDATE  `userroles` SET  `ID` =  `ID`-1;


CREATE TABLE IF NOT EXISTS `userrequests` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userID` int(16) NOT NULL,
  `request` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `userID` (`userID`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `userdownloads` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userID` int(16) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `userID` (`userID`),
  KEY `timestamp` (`timestamp`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1;