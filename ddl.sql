CREATE TABLE Services (
  `id` INT NOT NULL AUTO_INCREMENT,
  `code` VARCHAR(50) NOT NULL,
  `name` VARCHAR(25) NOT NULL,
  `icon` VARCHAR(50) NOT NULL,
  `tarif` INT(15) NOT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE `Banners` (
	`id` INT(20) NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(25) NOT NULL,
	`image` VARCHAR(50) NOT NULL,
	`description` VARCHAR(100) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Users` (
	`email` VARCHAR(50) NOT NULL,
	`firstName` VARCHAR(15) NOT NULL,
	`lastName` VARCHAR(15) NOT NULL,
	`password` VARCHAR(16) NOT NULL,
	`image` INT(50),
	`saldo` INT(15) NOT NULL,
	PRIMARY KEY (`email`)
);

CREATE TABLE `Transactions` (
	`invoiceNumber` INT(50) NOT NULL,
	`transactionType` VARCHAR(25) NOT NULL,
	`totalAmount` INT(15) NOT NULL,
	`created_on` TIMESTAMP(6) NOT NULL,
	`id` INT NOT NULL,
	`email` VARCHAR(50) NOT NULL,
	PRIMARY KEY (`invoiceNumber`),
  FOREIGN KEY (id) REFERENCES Services(id),
  FOREIGN KEY (email) REFERENCES Users(email)
);

INSERT INTO Banners(name,image,description) VALUES ('Banner 1','https://nutech-integrasi.app/dummy.jpg','Lerem Ipsum Dolor sit amet');
INSERT INTO Banners(name,image,description) VALUES ('Banner 2','https://nutech-integrasi.app/dummy.jpg','Lerem Ipsum Dolor sit amet');
INSERT INTO Banners(name,image,description) VALUES ('Banner 3','https://nutech-integrasi.app/dummy.jpg','Lerem Ipsum Dolor sit amet');
INSERT INTO Banners(name,image,description) VALUES ('Banner 4','https://nutech-integrasi.app/dummy.jpg','Lerem Ipsum Dolor sit amet');
INSERT INTO Banners(name,image,description) VALUES ('Banner 5','https://nutech-integrasi.app/dummy.jpg','Lerem Ipsum Dolor sit amet');
INSERT INTO Banners(name,image,description) VALUES ('Banner 6','https://nutech-integrasi.app/dummy.jpg','Lerem Ipsum Dolor sit amet');

INSERT INTO Services(code,name,icon,tarif) VALUES ('PAJAK','Pajak PBB','https://nutech-integrasi.app/dummy.jpg',40000);
INSERT INTO Services(code,name,icon,tarif) VALUES ('PLN','Listrik','https://nutech-integrasi.app/dummy.jpg',10000);
INSERT INTO Services(code,name,icon,tarif) VALUES ('PDAM','PDAM Berlangganan','https://nutech-integrasi.app/dummy.jpg',40000);
INSERT INTO Services(code,name,icon,tarif) VALUES ('PULSA','Pulsa','https://nutech-integrasi.app/dummy.jpg',40000);
INSERT INTO Services(code,name,icon,tarif) VALUES ('PGN','PGN Berlangganan','https://nutech-integrasi.app/dummy.jpg',50000);
INSERT INTO Services(code,name,icon,tarif) VALUES ('MUSIK','Musik Berlangganan','https://nutech-integrasi.app/dummy.jpg',50000);
INSERT INTO Services(code,name,icon,tarif) VALUES ('TV','TV Berlangganan','https://nutech-integrasi.app/dummy.jpg',50000);
INSERT INTO Services(code,name,icon,tarif) VALUES ('PAKET_DATA','Paket data','https://nutech-integrasi.app/dummy.jpg',50000);
INSERT INTO Services(code,name,icon,tarif) VALUES ('VOUCHER_GAME','Voucher Game','https://nutech-integrasi.app/dummy.jpg',100000);
INSERT INTO Services(code,name,icon,tarif) VALUES ('VOUCHER_MAKANAN','Voucher Makanan','https://nutech-integrasi.app/dummy.jpg',100000);
INSERT INTO Services(code,name,icon,tarif) VALUES ('QURBAN','Qurban','https://nutech-integrasi.app/dummy.jpg',200000);
INSERT INTO Services(code,name,icon,tarif) VALUES ('ZAKAT','Zakat','https://nutech-integrasi.app/dummy.jpg',300000);