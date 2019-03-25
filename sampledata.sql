CREATE TABLE Movies (
  title CHAR(100),
  year int,
  length int,
  genre CHAR(10),
  studioName CHAR(30),
  "producerC#" int,
  PRIMARY KEY (title, year)
);

INSERT INTO Movies
VALUES ('Star Wars', 1977, 124, 'SciFi', 'Fox', 23456),
       ('Galaxy Quest', 1999, 104, 'comedy', 'DreamWorks', 67890),
       ('Wayne''s World', 1992, 95, 'comedy', 'Paramount', 99999),
       ('Gone With the Wind', 1939, 321, 'drama', 'MGM', 88888),
       ('Eight Below', 2005, 120, 'drama', 'Disney', 12345),
       ('The Rescuers Down Under', 1990, 77, 'adventure', 'Disney', 12345);

CREATE TABLE MovieStar (
  name CHAR(30),
  address VARCHAR(255),
  city VARCHAR(255),
  gender CHAR(1),
  birthdate DATE,
  PRIMARY KEY ("name")
);

INSERT INTO MovieStar
VALUES ('Carrie Fisher', '123 Maple St.', 'Hollywood', 'F', '9/9/99'),
       ('Mark Hamil', '456 Oak Rd.', 'Brentwood', 'M', '8/8/88'),
       ('Harrison Ford', '789 Palm Dr.', 'Beverly Hills', 'M', '7/7/77'),
       ('Vivien Leigh', '987  Cherry Ln.', 'Hollywood', 'F', '6/6/66'),
       ('Dana Carvey', '345 Hill Drive', 'Aurora', 'M', '5/5/55'),
       ('Mike Meyers', '345 Hill Drive', 'Aurora', 'M', '5/5/55');

CREATE TABLE MovieExec (
  name CHAR(30),
  address VARCHAR(255),
  gender CHAR(1),
  birthdate DATE,
  "cert#" INT,
  netWorth BIGINT,
  PRIMARY KEY ("cert#")
);

INSERT INTO MovieExec
VALUES ('Mary Tyler Moore', 'Maple St.', 'F', '9/9/99', 88888, 100000000),
       ('Tom Hanks', 'Cherry Ln.', 'M', '8/8/88', 0, 0),
       ('George Lucas', 'Oak Rd.', 'M', '1/3/37', 23456, 200000000),
       ('Hawk Koch', 'California', 'M', '7/7/77', 99999, 230000),
       ('Hendel Butoy', 'São Paul', 'M', '5/5/55', 12345, 3000000000);

CREATE TABLE StarsIn (
  movieTitle CHAR(100),
  movieYear INT,
  name CHAR(30),
  PRIMARY KEY (movieTitle, movieYear, name)
);

INSERT INTO StarsIn
VALUES ('Star Wars', 1977, 'Carrie Fisher'),
       ('Star Wars', 1977, 'Mark Hamil'),
       ('Star Wars', 1977, 'Harrison Ford'),
       ('Gone With the Wind', 1939, 'Vivien Leigh'),
       ('Wayne''s World', 1992, 'Dana Carvey'),
       ('Wayne''s World', 1992, 'Mike Meyers');

CREATE TABLE Studio (
  name CHAR(30),
  address VARCHAR(255),
  "presC#" INT,
  PRIMARY KEY (name)
);

INSERT INTO Studio
VALUES ('Fox', 'Hollywood', 23456),
       ('DreamWorks', 'Brentwood', 67890),
       ('Paramount', 'Hollywood', 99999),
       ('MGM', 'Malibu', 88888),
       ('Disney', 'Buena Vista', 12345);