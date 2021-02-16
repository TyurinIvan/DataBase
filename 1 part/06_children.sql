CREATE TABLE Children (
	SNILS CHAR(14) PRIMARY KEY,
	full_name varCHAR(255) NOT NULL,
	birthdate DATE NOT NULL,
	gender gender NOT NULL,
	telephone int NOT NULL
);