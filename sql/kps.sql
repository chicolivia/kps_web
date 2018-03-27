CREATE TABLE `bitpred` (
	`timestamp` TIMESTAMP NOT NULL DEFAULT '',
	`premium` FLOAT NULL DEFAULT NULL,
	PRIMARY KEY (`timestamp`)
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;


CREATE TABLE `alarm` (
	`no` INT(11) NOT NULL AUTO_INCREMENT,
	`member_no` INT(11) NOT NULL DEFAULT '0',
	`coin_no` INT(11) NOT NULL DEFAULT '0',
	`percent` FLOAT NOT NULL DEFAULT '0',
	PRIMARY KEY (`no`),
	INDEX `FK_alarm_member` (`member_no`),
	INDEX `FK_alarm_coin` (`coin_no`),
	CONSTRAINT `FK_alarm_coin` FOREIGN KEY (`coin_no`) REFERENCES `coin` (`no`),
	CONSTRAINT `FK_alarm_member` FOREIGN KEY (`member_no`) REFERENCES `member` (`no`)
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;

CREATE TABLE `coin` (
	`no` INT(11) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`no`)
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;


CREATE TABLE `member` (
	`no` INT(11) NOT NULL AUTO_INCREMENT,
	`id` VARCHAR(50) NOT NULL,
	`pw` VARCHAR(50) NOT NULL,
	`email` VARCHAR(50) NOT NULL,
	`agree` INT(11) NOT NULL DEFAULT '0',
	`risk_no` INT(11) NOT NULL DEFAULT '0',
	PRIMARY KEY (`no`),
	INDEX `FK_member_risk` (`risk_no`),
	CONSTRAINT `FK_member_risk` FOREIGN KEY (`risk_no`) REFERENCES `risk` (`no`)
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;


CREATE TABLE `risk` (
	`no` INT(11) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(100) NOT NULL DEFAULT '0',
	PRIMARY KEY (`no`)
)
COLLATE='latin1_swedish_ci'
ENGINE=InnoDB
;


