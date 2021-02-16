CREATE TABLE club_composition (
	kid char(14) not NULL,
	club VARCHAR NOT NULL,
  	credited date,
  	deducted Date,
	FOREIGN KEY (kid) REFERENCES children (snils),
	FOREIGN KEY (club) REFERENCES clubs (title)
);