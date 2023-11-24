--
-- Base de données :  "book"
--

BEGIN;

INSERT INTO "book" ("id", "title", "author", "description", "price", "user_id") VALUES
(1, "L'iliade", "Homère", "Livre d'Homère nommé L'iliade", 10, 1),
(2, "L'odyssée", "Homère", "Livre d'Homère nommé L'odyssée", 10, 2),

--
-- Déchargement des données de la table "user"
--

INSERT INTO "user" ("id", "email", "password", "firstname", "lastname", "role_id") VALUES
(1, "jeanpaul@gmail.com", "jeanpaul", "jean", "paul", 1)


--
-- Déchargement des données de la table "role"
--

INSERT INTO "role" ("name")
VALUES ('customer'),
('admin');

--
-- Déchargement des données de la table "tag"
--

INSERT INTO "tag" ("id", "name") VALUES
(1, 'Cinéma'),
(2, 'Technologie'),
(3, 'Gastronomie'),
(4, 'Littérature'),
(5, 'Histoire'),
(6, 'Animaux'),
(7, 'Nature'),
(8, 'Astronomie'),
(9, 'Géographie');


-- Insérer les valeurs dans la table de liaison
INSERT INTO "book_has_tag" ("book_id", "tag_id") VALUES
(1, 4), -- L'iliade - Littérature
(2, 4), -- L'odyssée - Littérature
(1, 5), -- L'iliade - Histoire
(2, 5); -- L'odyssée - Histoire