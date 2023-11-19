TRUNCATE TABLE users CASCADE;
TRUNCATE TABLE restaurants;
TRUNCATE TABLE cuisines;


INSERT INTO users (userid, username, email, password, role) VALUES
(1, 'Heikki', 'heikki@gmail.com', 'TBD', 'admin'),
(2, 'Juhani', 'user@domain.com', 'TBD', 'stduser');

select * from users;

INSERT INTO cuisines (cuisineid,cuisinetype) VALUES
(1,'Kiinalainen'),
(2,'Suomalainen kotiruoka'),
(3,'Ranskalainen Ravintola');

select * from cuisines;

INSERT INTO restaurants (restaurantid,name,address,latitude,longitude,cuisineid) VALUES
(1,'New China','Opastinsilta',60.1448, 24.4466,1),
(2,'Kotiruoka oy','Asemapäällikönkatu',60.1448, 24.4466,2),
(3,'Viini ja Patonki','Junailijankuja',60.1111,24.000,3);

select * from restaurants;
