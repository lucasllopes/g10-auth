CREATE TABLE IF NOT EXISTS usuario (
                                       id BIGINT AUTO_INCREMENT PRIMARY KEY,
                                       nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    login VARCHAR(50) NOT NULL UNIQUE,
    senha VARCHAR(255) NOT NULL,
    data_ultima_alteracao DATETIME,
    tipo VARCHAR(20) NOT NULL
    );

CREATE TABLE IF NOT EXISTS endereco (
                                        id BIGINT AUTO_INCREMENT PRIMARY KEY,
                                        logradouro VARCHAR(100),
    numero VARCHAR(20),
    complemento VARCHAR(50),
    bairro VARCHAR(50),
    cidade VARCHAR(50),
    estado VARCHAR(50),
    cep VARCHAR(20),
    usuario_id BIGINT NOT NULL UNIQUE,
    CONSTRAINT fk_endereco_usuario FOREIGN KEY (usuario_id) REFERENCES usuario(id) ON DELETE CASCADE
    );
