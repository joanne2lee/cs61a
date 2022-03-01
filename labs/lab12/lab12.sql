.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet FROM students WHERE color = "blue" AND pet = "dog";

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song FROM students WHERE color = 'blue' AND pet = 'dog';


CREATE TABLE smallest_int AS
  SELECT time, smallest FROM students WHERE smallest > 2
  ORDER BY smallest
  LIMIT 20;


CREATE TABLE matchmaker AS
  SELECT p1.pet, p1.song, p1.color, p2.color FROM
  students AS p1, students AS p2
  WHERE p1.pet=p2.pet AND p1.song=p2.song AND p1.time<p2.time;


CREATE TABLE sevens AS
  SELECT seven FROM
  students as s, numbers as n
  WHERE s.time=n.time AND s.number=7 AND n.'7'='True';

