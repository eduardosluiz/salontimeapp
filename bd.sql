<<<<<<< HEAD
CREATE TABLE cliente (
  id SERIAL NOT NULL PRIMARY KEY,
  nome TEXT NOT NULL,
  email TEXT NOT NULL,
  senha TEXT NOT NULL,
  telefone TEXT NOT NULL,
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

CREATE TABLE estabelecimento (
  id SERIAL NOT NULL PRIMARY KEY,
  nome TEXT NOT NULL,
  email TEXT NOT NULL,
  senha TEXT NOT NULL,
  endereco TEXT NOT NULL,
  telefone TEXT NOT NULL,
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

CREATE TABLE profissional (
  id SERIAL NOT NULL PRIMARY KEY,
  nome TEXT NOT NULL,
  porcentagem TEXT,
  id_estabelecimento SERIAL NOT NULL,
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_profissional_estabelecimento
    FOREIGN KEY (id_estabelecimento)
    REFERENCES estabelecimento (id)
);

CREATE TABLE categoria (
  id SERIAL NOT NULL PRIMARY KEY,
  nome TEXT NOT NULL,
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE servico (
  id SERIAL NOT NULL PRIMARY KEY,
  nome TEXT NOT NULL,
  duracao INTEGER NOT NULL,
  id_categoria SERIAL NOT NULL,
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_servico_categoria
    FOREIGN KEY (id_categoria)
    REFERENCES categoria (id)
);

CREATE TABLE estabelecimento_servico (
  id SERIAL PRIMARY KEY NOT NULL,
  preco DECIMAL,
  id_estabelecimento SERIAL NOT NULL,
  id_servico SERIAL NOT NULL,
  CONSTRAINT fk_servico_estabelecimento
    FOREIGN KEY (id_estabelecimento)
    REFERENCES estabelecimento (id),
  CONSTRAINT fk_estabelecimento_servico
    FOREIGN KEY (id_servico)
    REFERENCES servico (id)
);

CREATE TABLE profissional_servico (
  id SERIAL PRIMARY KEY NOT NULL,
  id_profissional SERIAL NOT NULL,
  id_servico SERIAL NOT NULL,
  CONSTRAINT fk_profissional_servico
    FOREIGN KEY (id_servico)
    REFERENCES servico (id),
  CONSTRAINT fk_servico_profissional
    FOREIGN KEY (id_profissional)
    REFERENCES profissional (id)
);

CREATE TABLE agendamento (
  id SERIAL NOT NULL PRIMARY KEY,
  data TIMESTAMP NOT NULL,
  id_estabelecimento SERIAL NOT NULL,
  id_cliente SERIAL NOT NULL,
  id_profissional SERIAL NOT NULL,
  id_servico SERIAL NOT NULL,
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_agendamento_estabelecimento
    FOREIGN KEY (id_estabelecimento)
    REFERENCES estabelecimento (id),
  CONSTRAINT fk_agendamento_cliente
    FOREIGN KEY (id_cliente)
    REFERENCES cliente (id),
  CONSTRAINT fk_agendamento_profissional
    FOREIGN KEY (id_profissional)
    REFERENCES profissional (id),
  CONSTRAINT fk_agendamento_servico
    FOREIGN KEY (id_servico)
    REFERENCES servico (id)
);

INSERT INTO cliente (nome, email, senha, telefone, criado_em) VALUES ('Renan', 'renanpadilha94@hotmail.com', '12345', '5184941322', CURRENT_TIMESTAMP);
INSERT INTO cliente (nome, email, senha, telefone, criado_em) VALUES ('Déffany', 'deffanyo@gmail.com', '12345', '5199853364', CURRENT_TIMESTAMP);
INSERT INTO estabelecimento (nome, email, senha, endereco, telefone, criado_em) VALUES ('Hugo Beauty', 'contato@hugobeauty.com.br', '12345', 'Avenida Ipiranga, 8433', '5184941322',CURRENT_TIMESTAMP);
INSERT INTO estabelecimento (nome, email, senha, endereco, telefone, criado_em) VALUES ('Salão da Dona Ana', 'contato@salaodonaana.com.br', '12345', 'Rua José Alves de Castro, 522', '5133332222',CURRENT_TIMESTAMP);
INSERT INTO categoria(nome) VALUES ('Barba');
INSERT INTO categoria(nome) VALUES ('Cabelo');
INSERT INTO categoria(nome) VALUES ('Depilação');
INSERT INTO categoria(nome) VALUES ('Estética Corporal');
INSERT INTO categoria(nome) VALUES ('Estética Facial');
INSERT INTO categoria(nome) VALUES ('Manicure e Pedicure');
INSERT INTO categoria(nome) VALUES ('Maquiagem');
INSERT INTO categoria(nome) VALUES ('Massagem');
INSERT INTO categoria(nome) VALUES ('Podologia');
INSERT INTO categoria(nome) VALUES ('Outros');

INSERT INTO servico(nome, duracao ,id_categoria) VALUES ('Corte masculino', 30, 2);
INSERT INTO servico(nome, duracao ,id_categoria) VALUES ('Depilação peito', 30, 3);
INSERT INTO servico(nome, duracao ,id_categoria) VALUES ('Mão', 60, 6);

INSERT INTO profissional (nome, porcentagem, id_estabelecimento, criado_em) VALUES ('Juliana', '70', 1, CURRENT_TIMESTAMP);
INSERT INTO profissional (nome, porcentagem, id_estabelecimento, criado_em) VALUES ('Craudete', '70', 2, CURRENT_TIMESTAMP);
INSERT INTO estabelecimento_servico (preco, id_estabelecimento, id_servico) VALUES (30, 1, 1);
INSERT INTO estabelecimento_servico (preco, id_estabelecimento, id_servico) VALUES (30, 2, 2);
INSERT INTO profissional_servico (id_profissional, id_servico) VALUES (1, 1);
INSERT INTO profissional_servico (id_profissional, id_servico) VALUES (1, 2);
INSERT INTO profissional_servico (id_profissional, id_servico) VALUES (2, 2);
=======
CREATE TABLE cliente (
  id SERIAL NOT NULL PRIMARY KEY,
  nome TEXT NOT NULL,
  email TEXT NOT NULL,
  senha TEXT NOT NULL,
  telefone TEXT NOT NULL,
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

CREATE TABLE estabelecimento (
  id SERIAL NOT NULL PRIMARY KEY,
  nome TEXT NOT NULL,
  email TEXT NOT NULL,
  senha TEXT NOT NULL,
  endereco TEXT NOT NULL,
  telefone TEXT NOT NULL,
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP);

CREATE TABLE profissional (
  id SERIAL NOT NULL PRIMARY KEY,
  nome TEXT NOT NULL,
  porcentagem TEXT,
  id_estabelecimento SERIAL NOT NULL,
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_profissional_estabelecimento
    FOREIGN KEY (id_estabelecimento)
    REFERENCES estabelecimento (id)
);

CREATE TABLE categoria (
  id SERIAL NOT NULL PRIMARY KEY,
  nome TEXT NOT NULL,
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE servico (
  id SERIAL NOT NULL PRIMARY KEY,
  nome TEXT NOT NULL,
  duracao INTEGER NOT NULL,
  id_categoria SERIAL NOT NULL,
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_servico_categoria
    FOREIGN KEY (id_categoria)
    REFERENCES categoria (id)
);

CREATE TABLE estabelecimento_servico (
  id SERIAL PRIMARY KEY NOT NULL,
  preco DECIMAL,
  id_estabelecimento SERIAL NOT NULL,
  id_servico SERIAL NOT NULL,
  CONSTRAINT fk_servico_estabelecimento
    FOREIGN KEY (id_estabelecimento)
    REFERENCES estabelecimento (id),
  CONSTRAINT fk_estabelecimento_servico
    FOREIGN KEY (id_servico)
    REFERENCES servico (id)
);

CREATE TABLE profissional_servico (
  id SERIAL PRIMARY KEY NOT NULL,
  id_profissional SERIAL NOT NULL,
  id_servico SERIAL NOT NULL,
  CONSTRAINT fk_profissional_servico
    FOREIGN KEY (id_servico)
    REFERENCES servico (id),
  CONSTRAINT fk_servico_profissional
    FOREIGN KEY (id_profissional)
    REFERENCES profissional (id)
);

CREATE TABLE agendamento (
  id SERIAL NOT NULL PRIMARY KEY,
  data TIMESTAMP NOT NULL,
  id_estabelecimento SERIAL NOT NULL,
  id_cliente SERIAL NOT NULL,
  id_profissional SERIAL NOT NULL,
  id_servico SERIAL NOT NULL,
  criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  CONSTRAINT fk_agendamento_estabelecimento
    FOREIGN KEY (id_estabelecimento)
    REFERENCES estabelecimento (id),
  CONSTRAINT fk_agendamento_cliente
    FOREIGN KEY (id_cliente)
    REFERENCES cliente (id),
  CONSTRAINT fk_agendamento_profissional
    FOREIGN KEY (id_profissional)
    REFERENCES profissional (id),
  CONSTRAINT fk_agendamento_servico
    FOREIGN KEY (id_servico)
    REFERENCES servico (id)
);

INSERT INTO cliente (nome, email, senha, telefone, criado_em) VALUES ('Renan', 'renanpadilha94@hotmail.com', '12345', '5184941322', CURRENT_TIMESTAMP);
INSERT INTO cliente (nome, email, senha, telefone, criado_em) VALUES ('Déffany', 'deffanyo@gmail.com', '12345', '5199853364', CURRENT_TIMESTAMP);
INSERT INTO estabelecimento (nome, email, senha, endereco, telefone, criado_em) VALUES ('Hugo Beauty', 'contato@hugobeauty.com.br', '12345', 'Avenida Ipiranga, 8433', '5184941322',CURRENT_TIMESTAMP);
INSERT INTO estabelecimento (nome, email, senha, endereco, telefone, criado_em) VALUES ('Salão da Dona Ana', 'contato@salaodonaana.com.br', '12345', 'Rua José Alves de Castro, 522', '5133332222',CURRENT_TIMESTAMP);
INSERT INTO categoria(nome) VALUES ('Barba');
INSERT INTO categoria(nome) VALUES ('Cabelo');
INSERT INTO categoria(nome) VALUES ('Depilação');
INSERT INTO categoria(nome) VALUES ('Estética Corporal');
INSERT INTO categoria(nome) VALUES ('Estética Facial');
INSERT INTO categoria(nome) VALUES ('Manicure e Pedicure');
INSERT INTO categoria(nome) VALUES ('Maquiagem');
INSERT INTO categoria(nome) VALUES ('Massagem');
INSERT INTO categoria(nome) VALUES ('Podologia');
INSERT INTO categoria(nome) VALUES ('Outros');

INSERT INTO servico(nome, duracao ,id_categoria) VALUES ('Corte masculino', 30, 2);
INSERT INTO servico(nome, duracao ,id_categoria) VALUES ('Depilação peito', 30, 3);
INSERT INTO servico(nome, duracao ,id_categoria) VALUES ('Mão', 60, 6);

INSERT INTO profissional (nome, porcentagem, id_estabelecimento, criado_em) VALUES ('Juliana', '70', 1, CURRENT_TIMESTAMP);
INSERT INTO profissional (nome, porcentagem, id_estabelecimento, criado_em) VALUES ('Craudete', '70', 2, CURRENT_TIMESTAMP);
INSERT INTO estabelecimento_servico (preco, id_estabelecimento, id_servico) VALUES (30, 1, 1);
INSERT INTO estabelecimento_servico (preco, id_estabelecimento, id_servico) VALUES (30, 2, 2);
INSERT INTO profissional_servico (id_profissional, id_servico) VALUES (1, 1);
INSERT INTO profissional_servico (id_profissional, id_servico) VALUES (1, 2);
INSERT INTO profissional_servico (id_profissional, id_servico) VALUES (2, 2);
>>>>>>> a92174380d1d9ac2194c048cc85d82fe7c2db332
