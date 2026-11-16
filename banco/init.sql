CREATE DATABASE IF NOT EXISTS estacionamento;
USE estacionamento;

CREATE TABLE usuario (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    tipo VARCHAR(100) NOT NULL
);

CREATE TABLE veiculo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    placa VARCHAR(10) NOT NULL UNIQUE,
    qrCode VARCHAR(100),
    modelo VARCHAR(100),
    cor VARCHAR(50),
    usuario_id INT NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id)
);

CREATE TABLE vaga (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero INT NOT NULL UNIQUE,
    status VARCHAR(100) NOT NULL
);

CREATE TABLE registro (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dataHoraEntrada DATETIME NOT NULL,
    dataHoraSaida DATETIME NOT NULL,
    status VARCHAR(100) NOT NULL,
    veiculo_id INT NOT NULL,
    vaga_id INT,
    FOREIGN KEY (veiculo_id) REFERENCES Veiculo(id),
    FOREIGN KEY (vaga_id) REFERENCES Vaga(id)
);

CREATE TABLE sincronizacao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dataHora DATETIME NOT NULL,
    status VARCHAR(100) NOT NULL
);

CREATE TABLE autenticacao (
    id INT AUTO_INCREMENT PRIMARY KEY,
    login VARCHAR(100) NOT NULL UNIQUE,
    senha VARCHAR(10) NOT NULL,
    usuario_id INT NOT NULL UNIQUE,
    FOREIGN KEY (usuario_id) REFERENCES Usuario(id)
);

CREATE TABLE registro_Sincronizacao (
    registro_id INT NOT NULL,
    sincronizacao_id INT NOT NULL,
    PRIMARY KEY (registro_id, sincronizacao_id),
    FOREIGN KEY (registro_id) REFERENCES RegistroAcesso(id),
    FOREIGN KEY (sincronizacao_id) REFERENCES Sincronizacao(id)
);
