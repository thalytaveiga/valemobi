CREATE DATABASE IF NOT EXISTS valemobi;

USE valemobi;

CREATE TABLE tipo_mercadoria (
	cod INT NOT NULL AUTO_INCREMENT,
    descricao VARCHAR (100) NOT NULL,
    PRIMARY KEY (cod)
);

CREATE TABLE movimentacao (
	cod INT NOT NULL AUTO_INCREMENT,
	cod_merc INT NOT NULL,
	tipo_merc INT NOT NULL,
	nome VARCHAR (100) NOT NULL,
	qtde INT NOT NULL,
	valor_unit DECIMAL (9,2) NOT NULL,
	tipo_negocio CHAR (1) NOT NULL,
	PRIMARY KEY (cod),
	CONSTRAINT FOREIGN KEY (tipo_merc) REFERENCES tipo_mercadoria (cod)
);