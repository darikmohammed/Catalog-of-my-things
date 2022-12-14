CREATE TABLE LABEL(
    id INT GENERATED ALWAYS AS IDENTITY,
    title VARCHAR(100) NOT NULL,
    color VARCHAR(50) NOT NULL,

    PRIMARY KEY (id)
);

CREATE TABLE GENRE(
    id INT GENERATED ALWAYS AS IDENTITY,
    name VARCHAR(255) NOT NULL,

    PRIMARY KEY (id)
);

CREATE TABLE AUTHOR(
    id INT GENERATED ALWAYS AS IDENTITY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,

    PRIMARY KEY (id)
);

CREATE TABLE ITEM(
    id int GENERATED ALWAYS AS IDENTITY,
    archived BOOLEAN NOT NULL,
    publish_date DATE NOT NULL,
    genre_id INT,
    author_id INT,
    label_id INT,

    PRIMARY KEY (id),

    FOREIGN KEY (label_id) REFERENCES LABEL(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (author_id) REFERENCES AUTHOR(id) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (genre_id) REFERENCES GENRE(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE BOOK(
     id int NOT NULL ,
     publisher VARCHAR(255) NOT NULL,
     cover_state VARCHAR(100) NOT NULL,

     FOREIGN KEY (id) REFERENCES ITEM(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE MUSIC_ALBUM(
    id int NOT NULL ,
    on_spotify BOOLEAN NOT NULL,

    FOREIGN KEY (id) REFERENCES ITEM(id) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE GAME(
    id int NOT NULL,
    multiplayer BOOLEAN NOT NULL,
    last_played_at DATE NOT NULL,

    FOREIGN KEY (id) REFERENCES ITEM(id) ON DELETE CASCADE ON UPDATE CASCADE
);

