DROP DATABASE IF EXISTS `public`;
CREATE DATABASE `public`;

USE `public`;
DROP TABLE IF EXISTS `posts`;

DROP TABLE IF EXISTS `users`;

CREATE TABLE `posts` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `title` varchar(255) NOT NULL,
    `body` text NOT NULL,
    PRIMARY KEY (`id`)
);

insert into posts (title, body) values ('Новий табір біженців', 'Привіт всім! Повідомляємо про новий табір для біженців поблизу Печерської лаври. Ми забезпечимо їжею, водою та дахом на найближчі тижні.');
insert into posts (title, body) values ('Пожертвування ЮНІСЕФ', 'Офіси ЮНІСЕФ у Києві роздаватимуть одяг для дітей, а також медичну допомогу. Весь наступний місяць вони працюватимуть з 8.00 до 20.00 з понеділка по пятницю.');

CREATE TABLE `users` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `username` varchar(100) NOT NULL,
    `password` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
);

insert into users (username, password) values ('webadmin', 'f86465c6bc2493e91a28a2a6ceb83543');
insert into users (username, password) values ('test', 'f86465c22c2493cc1a2ca2a6ceb8b5b3');
insert into users (username, password) values ('peter', 'f8646526bf2ff3e9faf8a2a6ceb83543');





DROP DATABASE IF EXISTS `internal`;
CREATE DATABASE `internal`;

USE `internal`;
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `title` varchar(255) NOT NULL,
    `body` text NOT NULL,
    PRIMARY KEY (`id`)
);


insert into posts (title, body) values ('Важливе оновлення програмного забезпечення', 'У нас виникли проблеми з поточною версією Microsoft Word. Тому кожному потрібно завантажити найновішу версію, яку можна знайти за таким посиланням: <a href="/data/word_updater.exe">word_updater.exe</a>.');
insert into posts (title, body) values ('Доставка НАТО Медик', 'У середу о 09.00 НАТО доставить медичні засоби до Головного військового клінічного госпіталю. Усім особам, які швидко реагують, настійно рекомендується скористатися цією можливістю, щоб поповнити свої запаси.');

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
    `id` int(11) NOT NULL AUTO_INCREMENT,
    `username` varchar(100) NOT NULL,
    `password` varchar(255) NOT NULL,
    PRIMARY KEY (`id`)
);

insert into users (username, password) values ('webadmin', 'f86465c6bc2493e91a28a2a6ceb83543');
insert into users (username, password) values ('test', 'f86465c22c2493cc1a2ca2a6ceb8b5b3');
insert into users (username, password) values ('peter', 'f8646526bf2ff3e9faf8a2a6ceb83543');