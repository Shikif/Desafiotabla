-- Desafio posts
--PARTE 1
--1
CREATE DATABASE posts;
--2
CREATE TABLE posts(id SERIAL PRIMARY KEY, usuario VARCHAR(70), fecha_creacion DATE, contenido VARCHAR(140), descripcion VARCHAR(70));
--3
INSERT INTO posts(usuario,fecha_creacion,contenido,descripcion) VALUES
('Pamela','2019-4-20','Hola','Este es un post'),
('Pamela','2017-4-20','Miau','Este es un post'),
('Pamela','2017-4-20','Miau','Este es un post');
--4
ALTER TABLE posts ADD COLUMN titulo VARCHAR(70);
--5
UPDATE posts SET titulo='saludo' where id=1;
UPDATE posts SET titulo='onomatopeya' where id=2;
UPDATE posts SET titulo='onomatopeya2' where id=3;
--6
INSERT INTO posts(usuario,fecha_creacion,contenido,descripcion,titulo) VALUES
('Pedro','2017-4-20','Soy Pedro','Este es un post','Presentacion'),
('Pedro','2014-4-20','Wena','Este es un post','saludo');
--7
DELETE FROM posts WHERE usuario ='Carlos'
--8
INSERT INTO posts(usuario,fecha_creacion,contenido,descripcion,titulo) VALUES
('Carlos','2024-4-20','Por que me borraron','Este es un post','Indignado');
-- PARTE 2
--9
CREATE TABLE comentarios(id SERIAL PRIMARY KEY, fecha timestamp,contenido varchar(70),post_id INT, FOREIGN KEY(post_id) REFERENCES posts(id));

--10
INSERT INTO comentarios (fecha,contenido,post_id) VALUES 
('2020-03-21 12:00','Que loco',2),
('2020-03-21 12:00','Meow',2),
('2020-03-21 12:00','Eo',6),
('2020-03-21 12:00','Carlos!',6),
('2020-03-21 12:00','loco',6),
('2020-03-21 12:00','didi',6);
--11
INSERT INTO posts(username,fecha_creacion,contenido,descripcion,titulo) VALUES
('Margarita','2020-02-01', 'Wooooooow','Este es un post','Sorpresa')
--12
INSERT INTO comentarios (fecha,contenido,post_id) VALUES
('2020-03-25 4:26','donde',8),
('2020-03-25 4:26','NO',8),
('2020-03-25 4:26','eso',8),
('2020-03-25 4:26','como',8),
('2020-03-25 4:26','dale',8),
('2020-03-25 4:26','epa',8);


