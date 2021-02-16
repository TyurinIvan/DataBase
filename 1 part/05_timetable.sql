CREATE TABLE Timetable (
	id_clubs serial PRIMARY KEY,
	name VARCHAR(20) NOT NULL,
	room audiences NOT NULL,
	day weekdays NOT NULL,
	start_time TIME NOT NULL,
	duration INTERVAL NOT NULL,
	FOREIGN KEY (name) REFERENCES clubs (title)
);