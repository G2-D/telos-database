-- Database create
CREATE DATABASE telos;

use telos;

-- Table "hotels"
CREATE TABLE hotels (
	id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    endereco VARCHAR(100) NOT NULL,
    cidade VARCHAR(50) NOT NULL,
    estrelas INT NOT NULL,
    foto_url VARCHAR(200) NOT NULL
);

INSERT INTO hotels (nome, descricao, endereco, cidade, estrelas, foto_url) VALUES 
	("Hotel 1", "Lorem ipsum dolor sit amet", "Rua do teste, 123", "Cidade do teste 1", 3, "https://www.hotel.com.br/img/1.jpg"),
	("Hotel 2", "consectetur adipiscing elit", "Rua do teste, 456", "Cidade do teste 2", 2, "https://www.hotel.com.br/img/2.jpg"),
	("Hotel 3", "Nunc tortor ex", "Rua do teste, 789", "Cidade do teste 3", 5, "https://www.hotel.com.br/img/3.jpg");

-- Table "rooms"
CREATE TABLE rooms (
	id INT PRIMARY KEY AUTO_INCREMENT,
	hotel_id INT NOT NULL,
    tamanho VARCHAR(50) NOT NULL,
    numero INT NOT NULL,
	FOREIGN KEY (hotel_id) REFERENCES hotels(id)
);

INSERT INTO rooms (hotel_id, tamanho, numero) VALUES 
	(1, "pequeno", 200),
	(1, "medio", 201),
	(1, "grande", 202),
	(2, "grande", 301),
	(2, "medio", 302),
	(3, "grande", 401),
	(3, "medio", 403),
	(3, "pequeno", 404),
	(3, "pequeno", 500);

-- Table "reservations"
CREATE TABLE reservations (
	id INT PRIMARY KEY AUTO_INCREMENT,
	room_id INT NOT NULL,
	checkin DATETIME,
	checkout DATETIME,
	created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	FOREIGN KEY (room_id) REFERENCES rooms(id)
);

INSERT INTO reservations (room_id, checkin) VALUES (1, NOW()), (2, NOW()), (3, NOW()), (4, NOW()), (5, NOW()), (6, NOW()), (7, NOW()), (8, NOW()), (9, NOW());