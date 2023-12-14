CREATE TABLE cliente (
    codigo_cliente INT PRIMARY KEY,
    nome_cliente VARCHAR(255),
    sobrenome_cliente VARCHAR(255),
    telefone_cliente VARCHAR(15),
    municipio_cliente VARCHAR(255),
    codigo_tipo_cliente INT
);

CREATE TABLE produto (
    codigo_produto INT PRIMARY KEY,
    nome_produto VARCHAR(255),
    descricao_produto VARCHAR(255),
    fk_diretor_responsavel_codigo_diretor_responsavel INT,
    codigo_tipo_produto INT
);

CREATE TABLE contrato (
    codigo_contrato INT PRIMARY KEY,
    fk_produto_codigo_produto INT,
    fk_cliente_codigo_cliente INT
);

CREATE TABLE diretor_responsavel (
    codigo_diretor_responsavel INT PRIMARY KEY,
    nome_diretor_responsavel VARCHAR(255),
    email_diretor_responsavel VARCHAR(255)
);

CREATE TABLE tipo_produto (
    codigo_tipo_produto INT PRIMARY KEY,
    tipo_produto VARCHAR(255)
);

CREATE TABLE tipo_cliente (
    codigo_tipo_cliente INT PRIMARY KEY,
    tipo_cliente VARCHAR(255)
);
 
 
ALTER TABLE cliente ADD CONSTRAINT FK_cliente_2
    FOREIGN KEY (codigo_tipo_cliente)
    REFERENCES tipo_cliente (codigo_tipo_cliente);
 
ALTER TABLE produto ADD CONSTRAINT FK_produto_2
    FOREIGN KEY (fk_diretor_responsavel_codigo_diretor_responsavel)
    REFERENCES diretor_responsavel (codigo_diretor_responsavel);
 
ALTER TABLE produto ADD CONSTRAINT FK_produto_3
    FOREIGN KEY (codigo_tipo_produto)
    REFERENCES tipo_produto (tipo_produto);
 
ALTER TABLE contrato ADD CONSTRAINT FK_contrato_1
    FOREIGN KEY (fk_produto_codigo_produto)
    REFERENCES produto (codigo_produto)
    ON DELETE RESTRICT;
 
ALTER TABLE contrato ADD CONSTRAINT FK_contrato_2
    FOREIGN KEY (fk_cliente_codigo_cliente)
    REFERENCES cliente (codigo_cliente)
    ON DELETE RESTRICT;