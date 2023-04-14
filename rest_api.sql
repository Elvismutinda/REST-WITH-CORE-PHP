CREATE TABLE `rest_api`.`clients` 
(`clientid` INT(11) NOT NULL AUTO_INCREMENT , 
`client_name` VARCHAR(255) NOT NULL , 
`gender` VARCHAR(10) NOT NULL , 
PRIMARY KEY (`clientid`)) ENGINE = InnoDB;

CREATE TABLE `rest_api`.`rooms` 
(`roomid` INT NOT NULL AUTO_INCREMENT , 
`room_number` INT NOT NULL , 
`size` VARCHAR(50) NOT NULL , 
`cost` FLOAT(10,2) NOT NULL , 
`status` BOOLEAN NOT NULL DEFAULT '0' , 
PRIMARY KEY (`roomid`), UNIQUE (`room_number`)) ENGINE = InnoDB;

CREATE TABLE `rest_api`.`bookings`
(`bookingid` INT NOT NULL AUTO_INCREMENT , 
`clientid` INT NOT NULL , 
`roomid` INT NOT NULL , 
`check_in` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP , 
`check_out` TIMESTAMP NULL , 
PRIMARY KEY (`bookingid`, `clientid`, `roomid`) , 
FOREIGN KEY (`clientid`) REFERENCES clients(`clientid`) , 
FOREIGN KEY (`roomid`) REFERENCES rooms(`roomid`)) ENGINE = InnoDB;


/* TIMESTAMP FORMAT - YYYY-MM-DD H:M:S eg, 2023-04-14 00:20:19*/