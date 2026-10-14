CREATE TABLE `Users`(
    `id` UNSIGNED INT AUTO_INCREMENT,
    `First_name` VARCHAR(50) NOT NULL,
    `Last_name` VARCHAR(50) NOT NULL,
    `Username` VARCHAR(50) NOT NULL UNIQUE,
    `Password` VARCHAR(128) NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE 'Schools'(
    `id` UNSIGNED INT AUTO_INCREMENT,
    `Name` VARCHAR(100) NOT NULL,
    `Type` ENUM(`Primary`, `Secondary`, `Higher Education`) NOT NULL,
    `Location` TEXT NOT NULL,
    `Year` YEAR NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `Companies` (
    `id` UNSIGNED INT AUTO_INCREMENT,
    `name` VARCHAR(80) NOT NULL,
    `industry` ENUM('Technology','Education','Business') NOT NULL,
    `location` TEXT NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE `connection_people`(
    `id` UNSIGNED INT AUTO_INCREMENT,
    `User_A` UNSIGNED INT NOT NULL,
    `User_B` UNSIGNED INT NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`User_A`) REFERENCES `Users`.`id`,
     FOREIGN KEY(`User_B`) REFERENCES `Users`.`id`,
);

CREATE TABLE `connection_schools` (
    `id` UNSIGNED INT AUTO_INCREMENT,
    `User_id` UNSIGNED INT NOT NULL,
    `School_id` UNSIGNED INT NOT NULL,
    `Start_date` DATE NOT NULL,
    `End_date` DATE ,
    `Type` VARCHAR(25) NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`User_id`) REFERENCES `Users`(`id`),
    FOREIGN KEY(`School_id`) REFERENCES `Schools`(`id`)
);

CREATE TABLE `connection_companies` (
    `id` UNSIGNED INT AUTO_INCREMENT,
    `User_id` UNSIGNED INT NOT NULL,
    `Company_id` UNSIGNED INT NOT NULL,
    `Start_date` DATE NOT NULL,
    `End_date` DATE,
    `title` TEXT NOT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`User_id`) REFERENCES `Users`(`id`),
    FOREIGN KEY(`Company_id`) REFERENCES `Companies`(`id`)
);