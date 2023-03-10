INSERT INTO tb_user (name, email, password) VALUES ('Bob Brown', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Ana Brown', 'ana@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');


INSERT INTO tb_role (authority) VALUES ('ROLE_VISITOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_MEMBER');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);

INSERT INTO tb_genre (name) VALUES ('Comédia');
INSERT INTO tb_genre (name) VALUES ('Terror');
INSERT INTO tb_genre (name) VALUES ('Drama');
INSERT INTO tb_genre (name) VALUES ('Ficção científica');
INSERT INTO tb_genre (name) VALUES ('Terror');

INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis, genre_id) VALUES ('A Voz do Silêncio', 'Legacy', 2021, 'https://imgurl.com/img.png', 'Sometimes hope is all you need, but sometimes it can be hard to find', 3);
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis, genre_id) VALUES ('Bob Esponja', 'The Shawshank Redemption', 1994, 'https://imgurl.com/img.png', 'Two imprisoned men come together over the course of several years, finding solace and eventual redemption through common acts of decency.', 1);
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis, genre_id) VALUES ('Código de Conduta', 'Avatar: The Way of Water', 2022, 'https://imgurl.com/img.png', 'Jake Sully lives with his new family on the extrasolar moon Pandora. As a familiar threat returns to finish what was previously started, Jake must work with Neytiri and the army of the Navi race to protect his home.', 4);
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis, genre_id) VALUES ('Kingsman', 'John Wick: Chapter 4', 2023, 'https://imgurl.com/img.png', 'John Wick uncovers a path to defeating The High Table. But before he can earn his freedom, Wick must face off against a new enemy with powerful alliances across the globe and forces that turn old friends into foes.', 1);
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis, genre_id) VALUES ('O Labirinto do Fauno', 'John Wick: Chapter 4', 2023, 'https://imgurl.com/img.png', 'John Wick uncovers a path to defeating The High Table. But before he can earn his freedom, Wick must face off against a new enemy with powerful alliances across the globe and forces that turn old friends into foes.', 4);
INSERT INTO tb_movie (title, sub_Title, year, img_Url, synopsis, genre_id) VALUES ('Sonic', 'John Wick: Chapter 4', 2023, 'https://imgurl.com/img.png', 'John Wick uncovers a path to defeating The High Table. But before he can earn his freedom, Wick must face off against a new enemy with powerful alliances across the globe and forces that turn old friends into foes.', 1);

INSERT INTO tb_review (text, user_id, movie_id) VALUES ('Meh, filme ok', 1, 1);
INSERT INTO tb_review (text, user_id, movie_id) VALUES ('Bah, filme ok', 1, 1);
INSERT INTO tb_review (text, user_id, movie_id) VALUES ('Filme sensacional!', 1, 3);

