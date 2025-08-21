DROP DATABASE IF EXISTS `auth_app`;

CREATE DATABASE IF NOT EXISTS `auth_app`;

USE `auth_app`;


CREATE TABLE IF NOT EXISTS applications (
    id_app INT PRIMARY KEY AUTO_INCREMENT,
    app_name VARCHAR(100) NOT NULL UNIQUE,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


CREATE TABLE IF NOT EXISTS users (
    id_user INT PRIMARY KEY AUTO_INCREMENT,
    email VARCHAR(255) NOT NULL UNIQUE,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);


CREATE TABLE IF NOT EXISTS authentifications (
    id_auth INT PRIMARY KEY AUTO_INCREMENT,
    id_user INT NOT NULL,
    id_app INT NOT NULL DEFAULT 1,
    password VARCHAR(255) NOT NULL,
    auth_method ENUM('google', 'icloud', 'email', 'tel') NOT NULL DEFAULT 'email',
    last_login_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    adress_ip VARCHAR(255),
    FOREIGN KEY (id_user) REFERENCES users(id_user) ON DELETE CASCADE,
    FOREIGN KEY (id_app) REFERENCES applications(id_app) ON DELETE CASCADE,
    INDEX idx_user_app (id_user, id_app)
);


INSERT INTO applications (app_name, description) VALUES 
('Application Principale', 'Application principale d authentification');


INSERT INTO users (email, first_name, last_name) VALUES 
('fordimalanda7@gmail.com', 'Fordi', 'Malanda');


INSERT INTO authentifications (id_user, id_app, password, auth_method) VALUES 
(1, 1, '$2a$10$N9qo8uLOickgx2ZMRZoMy.Mrq4Lp3Z6yfYjz4VVDg5uUIZO6nRgem', 'email');