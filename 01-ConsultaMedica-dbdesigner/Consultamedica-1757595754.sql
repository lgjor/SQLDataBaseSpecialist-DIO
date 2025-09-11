CREATE TABLE IF NOT EXISTS `Paciente` (
	`IdPaciente` int AUTO_INCREMENT NOT NULL UNIQUE,
	PRIMARY KEY (`IdPaciente`)
);

CREATE TABLE IF NOT EXISTS `Médico` (
	`idMedico` int AUTO_INCREMENT NOT NULL UNIQUE,
	PRIMARY KEY (`idMedico`)
);

CREATE TABLE IF NOT EXISTS `Exame` (
	`idExame` int AUTO_INCREMENT NOT NULL UNIQUE,
	PRIMARY KEY (`idExame`)
);

CREATE TABLE IF NOT EXISTS `Consulta` (
	`idConsulta` int AUTO_INCREMENT NOT NULL UNIQUE,
	`idPaciente` int NOT NULL,
	`idMedico` int NOT NULL,
	`idExame` int NOT NULL,
	PRIMARY KEY (`idConsulta`)
);




ALTER TABLE `Consulta` ADD CONSTRAINT `Consulta_fk1` FOREIGN KEY (`idPaciente`) REFERENCES `Paciente`(`IdPaciente`);

ALTER TABLE `Consulta` ADD CONSTRAINT `Consulta_fk2` FOREIGN KEY (`idMedico`) REFERENCES `Médico`(`idMedico`);

ALTER TABLE `Consulta` ADD CONSTRAINT `Consulta_fk3` FOREIGN KEY (`idExame`) REFERENCES `Exame`(`idExame`);