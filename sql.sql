sql

CREATE TABLE Usuario (
    id_usuario INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    senha VARCHAR(255)
);

CREATE TABLE Disciplina (
    id_disciplina INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    semestre VARCHAR(10),
    id_usuario INT,
    FOREIGN KEY (id_usuario) REFERENCES Usuario(id_usuario)
);

CREATE TABLE Atividade (
    id_atividade INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(150),
    descricao TEXT,
    tipo VARCHAR(50),
    data_entrega DATE,
    horario TIME,
    prioridade VARCHAR(20),
    status VARCHAR(20),
    id_disciplina INT,
    FOREIGN KEY (id_disciplina) REFERENCES Disciplina(id_disciplina)
);

CREATE TABLE Notificacao (
    id_notificacao INT PRIMARY KEY AUTO_INCREMENT,
    mensagem TEXT,
    data_envio DATETIME,
    id_atividade INT,
    FOREIGN KEY (id_atividade) REFERENCES Atividade(id_atividade)
);
