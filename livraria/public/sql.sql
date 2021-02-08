CREATE TABLE autores (
  id_autor int(11) AUTO_INCREMENT NOT NULL,
  nome varchar(100) NOT NULL,
  nacionalidade varchar(20)  NULL,
  data_nascimento datetime  NULL,
  fotografia varchar(255) NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  deleted_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id_autor)
);


INSERT INTO `autores` (id_autor, nome, nacionalidade, data_nascimento)VALUES (1,'Luis Borges Gouveia','Portugês',NULL),(2,'João Ranito','Portugês',NULL),(3,'Nuno Magalhães Ribeiro','Portugês',NULL),(4,'Paulo Rurato','Português',NULL),(5,'Sofia Gaio','Portugês',NULL),(6,'Rui Moreira','Portugês',NULL),(7,'Margarida Bairrão','Português',NULL),(8,'Judite Gonçalves de Freitas','Português',NULL),(9,'António Borges Regedor','Português',NULL),(10,'José Dias Coelho','Português',NULL),(11,'Paula Moura','Português',NULL),(12,'Luis Cunha','Português',NULL),(13,'Pereira Alfredo','Angolano',NULL);


CREATE TABLE livros (
  id_livro int(11) AUTO_INCREMENT NOT NULL,
  titulo varchar(100)  NOT NULL,
  idioma varchar(10)  NOT NULL,
  total_paginas int(11) NULL,
  data_edicao datetime NULL,
  isbn varchar(13)  NULL,
  observacoes varchar(255) NULL,
  imagem_capa varchar(255) NULL,
  id_genero int(11) NULL,
  id_autor int(11) NULL,
  sinopse varchar(255) NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  deleted_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id_livro)
)  ;

INSERT INTO `livros`  (id_livro, titulo, idioma, isbn, observacoes, imagem_capa, id_genero, id_autor )VALUES (1,'sistema de informação de apoio a gestão','Portugês','9728589433',NULL,NULL,1,1),
(2,'cidades e regiões digitais:impacte na cidade e nas pessoas','Portugês','9728830033',NULL,NULL,2,1),
(3,'Informatica e Competencias Tecnologicas para a Sociedade da Informação','Portugês','9789728830304',NULL,NULL,1,3),
(4,'Readings in Information Society','Inglês','9789727228997',NULL,NULL,3,5),
(5,'Sociedade da Informação: balanço e implicações ','Português','9789728830182',NULL,NULL,3,7),
(6,'O Tribunal de Contas e as Autarquias Locais','Portugês','9789899936614',NULL,NULL,2,7),
(7,'Informática e Competências Tecnológicas para a Sociedade da Informação 2ed','Português','9789728830304',NULL,NULL,2,8),
(8,'Negócio Eletrónico - conceitos e perspetivas de desenvolvimento','Português','9789899552258',NULL,NULL,1,8),
(9,'Gestão da Informação na Biblioteca Escolar','Português','9789722314916',NULL,NULL,1,9),
(10,'A virtual environment to share knowledge','Inglês','9781351729901',NULL,NULL,2,4),
(11,'Ciência da Informação: contributos para o seu estudo','Português','9789896430900',NULL,NULL,1,4),
(12,'Repensar a Sociedade da Informação e do Conhecimento no Início do Século XXI','Português','9789726186953',NULL,NULL,3,4),
(13,'Gestão da Informação em Museus: uma contribuição para o seu estudo','Português','9789899901394',NULL,NULL,2,4),
(14,'Web 2.0 and Higher Education. A psychological perspective','Inglês','9783659683466',NULL,NULL,1,1),
(15,'Contribuições para a discussão de um modelo de Governo Eletrónico Local para Angola','Português','9789899933200',NULL,NULL,1,13);



CREATE TABLE editoras (
  id_editora int(11) AUTO_INCREMENT  NOT NULL,
  nome varchar(100)  not NULL,
  morada varchar(255)  NULL,
  observacoes varchar(255) NULL,
   created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  deleted_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id_editora)
)  ;

INSERT INTO `editoras` (id_editora,nome,morada) VALUES (1,'SPI-Principia',''),(2,'Edições Universidade Fernando Pessoa',''),(3,'Edições GestKnowing',''),(4,'VDM - Verlag Dr. Muller',''),(5,'Sílabo',''),(6,'Green Lines Instituto',''),(7,'Lambert Academic Publishing',''),(8,'Kwigia editora','');


CREATE TABLE edicoes (
  id_livro int(11) NOT NULL,
  id_editora int(11) NOT NULL,
  data datetime  NULL, 
  observacoes varchar(255) NULL,
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  deleted_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id_livro,id_editora)
);

CREATE TABLE generos (
  id_genero int(11) AUTO_INCREMENT  NOT NULL,
  designacao varchar(30) NOT NULL,
  observacoes varchar(255) NULL,  
  created_at timestamp NULL DEFAULT NULL,
  updated_at timestamp NULL DEFAULT NULL,
  deleted_at timestamp NULL DEFAULT NULL,
  PRIMARY KEY (id_genero)
);


insert into generos (id_genero, designacao) values (1, 'Memórias e Testemunhos');
insert into generos (id_genero, designacao) values (2, 'Direito Civil ');
insert into generos (id_genero, designacao) values (3, 'Culinária');
insert into generos (id_genero, designacao) values (4, 'Romance');
insert into generos (id_genero, designacao) values (5, 'Policial e Thriller');
