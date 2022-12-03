
-- Create Auth Database

-- User for DB access
CREATE USER 'auth_user' @'locahost' IDENTIFIED BY 'auth_password';

CREATE DATABASE auth;

GRANT ALL PRIVELEGES ON auth.* TO 'auth_user'@'locahost';

USE auth;

CREATE TABLE user (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL
);

INSERT INTO user (email, password) VALUES ("initialuser@audi-oh.com", 'password')