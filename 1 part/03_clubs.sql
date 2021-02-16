CREATE TABLE Clubs (
	title VARCHAR PRIMARY KEY,
	note VARCHAR(255),
	manager_id int,
	FOREIGN KEY (manager_id) REFERENCES managers (id_manager)
);