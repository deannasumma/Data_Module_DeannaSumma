CREATE TABLE famous_people (
    person_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    type TEXT NOT NULL
);

CREATE TABLE songs (
    song_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    release_year INTEGER
);

CREATE TABLE origin (
    origin_id INTEGER PRIMARY KEY AUTOINCREMENT,
    person TEXT NOT NULL,
    city TEXT NOT NULL
);

INSERT INTO famous_people (name, type) VALUES ('Drake', 'Singer')
INSERT INTO famous_people (name, type) VALUES ('Kanye West', 'Singer')
INSERT INTO famous_people (name, type) VALUES ('Beyonce', 'Singer')
INSERT INTO famous_people (name, type) VALUES ('Zach Bryan', 'Singer')
INSERT INTO famous_people (name, type) VALUES ('Taylor Swift', 'Singer')


INSERT INTO songs (title, release_year) VALUES ('Red', 2021)
INSERT INTO songs (title, release_year) VALUES ('Gods Plan', 2016)
INSERT INTO songs (title, release_year) VALUES ('Halo', 2012)
INSERT INTO songs (title, release_year) VALUES ('Dawns', 2022)
INSERT INTO songs (title, release_year) VALUES ('Flashing Lights', 2013)

INSERT INTO origin (person, city) VALUES ('Drake', 'Toronto')
INSERT INTO origin (person, city) VALUES ('Kanye', 'Atlanta')
INSERT INTO origin (person, city) VALUES ('Beyonce', 'Houston')
INSERT INTO origin (person, city) VALUES ('Zach', 'Oologah')
INSERT INTO origin (person, city) VALUES ('Taylor', 'West Reading')

CREATE TABLE singer_relationship (
    song_id INTEGER,
    person_id INTEGER,
    FOREIGN KEY (song_id) REFERENCES songs(song_id),
    FOREIGN KEY (person_id) REFERENCES famous_people(person_id),
    PRIMARY KEY (song_id, person_id)
);

INSERT INTO singer_relationship (song_id,person_id) VALUES (1,5);
INSERT INTO singer_relationship (song_id,person_id) VALUES (2,1);
INSERT INTO singer_relationship (song_id,person_id) VALUES (3,3);
INSERT INTO singer_relationship (song_id,person_id) VALUES (4,4);
INSERT INTO singer_relationship (song_id,person_id) VALUES (5,1);

CREATE TABLE origin_relationship (
    origin_id INTEGER,
    person_id INTEGER,
    FOREIGN KEY (origin_id) REFERENCES origin(origin_id),
    FOREIGN KEY (person_id) REFERENCES famous_people(person_id),
    PRIMARY KEY (origin_id, person_id)
);

INSERT INTO origin_relationship (origin_id,person_id) VALUES (1,1);
INSERT INTO origin_relationship (origin_id,person_id) VALUES (2,2);
INSERT INTO origin_relationship (origin_id,person_id) VALUES (3,3);
INSERT INTO origin_relationship (origin_id,person_id) VALUES (4,4);
INSERT INTO origin_relationship (origin_id,person_id) VALUES (5,5);
