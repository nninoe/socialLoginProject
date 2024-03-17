CREATE DATABASE DB_TABLES CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

CREATE TABLE User(
  userId VARCHAR(60),
  username VARCHAR(20) CHARACTER SET utf8mb4,
  profilelmg VARCHAR(200),
  created DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP(),
  Updated DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP() ON UPDATE CURRENT_TIMESTAMP(),
  PRIMARY KEY(userId)
);

INSERT INTO User(userId, username, profilelmg) VALUES
("asd", "김기재", "123"),
("park", "박근원", "567"),
("kim1226", "김민웅", "남동생");
("kim1126", "김민희", "여동생");
("kim0413", "김민정", "잇츠미");

SELECT userId, username
FROM User
ORDER BY created DESC
LIMIT 1;

SELECT username
FROM User
WHERE userId = "asd";

DELETE FROM User
WHERE username = "박근원";

UPDATE User
SET userId = "dsa"
WHERE username = "김기재";
