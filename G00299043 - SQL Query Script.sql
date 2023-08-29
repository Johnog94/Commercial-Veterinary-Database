SELECT * FROM `staff` WHERE addressID = 'add000001';

INSERT INTO `contact` (`contactCode`, `email`, `phone`, `extension`) VALUES ('con000023', 'Ben.od@goutlook.ie', NULL, NULL);

UPDATE `contact` SET `phone` = '+353892224902' WHERE `contact`.`contactCode` = 'con000023';

DELETE FROM `contact` WHERE `contact`.`contactCode` = 'con000023';