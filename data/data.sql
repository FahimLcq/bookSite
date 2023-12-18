--
-- Base de données :  "book"
--

BEGIN;



--
-- Déchargement des données de la table "role"
--

INSERT INTO "role" ("name")
VALUES ('customer'),
('admin');


--
-- Déchargement des données de la table "user"
--
-- Sélectionner les identifiants des rôles
WITH role_ids AS (
  SELECT id, "name" FROM "role" WHERE "name" = 'customer' OR "name" = 'admin'
)
-- Insérer dans la table "user" en utilisant les identifiants des rôles
INSERT INTO "user" ("email", "password", "firstname", "lastname", "role_id")
SELECT 'jeanpaul@gmail.com', 'jeanpaul', 'jean', 'paul', id FROM role_ids WHERE "name" = 'customer'
UNION ALL
SELECT 'admin@admin.com', 'password', 'fah', 'lcq', id FROM role_ids WHERE "name" = 'admin';



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



--
-- Déchargement des données de la table "book"
--


INSERT INTO "book" ("id", "title", "author", "description", "price", "user_id") VALUES
(1, 'L''iliade', 'Homère', 'Livre d''Homère nommé L''iliade', 10, 1),
(2, 'L''odyssée', 'Homère', 'Livre d''Homère nommé L''odyssée', 10, 2);




-- Insérer les valeurs dans la table de liaison
INSERT INTO "book_has_tag" ("book_id", "tag_id") VALUES
(1, 4), -- L'iliade - Littérature
(2, 4), -- L'odyssée - Littérature
(1, 5), -- L'iliade - Histoire
(2, 5); -- L'odyssée - Histoire

COMMIT;