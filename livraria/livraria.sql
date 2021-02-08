CREATE TABLE `autores` (
  `ida` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nacionalidade` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` date DEFAULT NULL,
  PRIMARY KEY (`ida`),
  KEY `nome_autor` (`nome`(4))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `autores` VALUES (1,'Luis Borges Gouveia','Portugês',NULL),(2,'João Ranito','Portugês',NULL),(3,'Nuno Magalhães Ribeiro','Portugês',NULL),(4,'Paulo Rurato','Português',NULL),(5,'Sofia Gaio','Portugês',NULL),(6,'Rui Moreira','Portugês',NULL),(7,'Margarida Bairrão','Português',NULL),(8,'Judite Gonçalves de Freitas','Português',NULL),(9,'António Borges Regedor','Português',NULL),(10,'José Dias Coelho','Português',NULL),(11,'Paula Moura','Português',NULL),(12,'Luis Cunha','Português',NULL),(13,'Pereira Alfredo','Angolano',NULL);


CREATE TABLE `editoras` (
  `ide` int(11) NOT NULL,
  `nome` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `morada` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`ide`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `editoras` VALUES (1,'SPI-Principia',''),(2,'Edições Universidade Fernando Pessoa',''),(3,'Edições GestKnowing',''),(4,'VDM - Verlag Dr. Muller',''),(5,'Sílabo',''),(6,'Green Lines Instituto',''),(7,'Lambert Academic Publishing',''),(8,'Kwigia editora','');


CREATE TABLE `livros` (
  `idl` int(11) NOT NULL,
  `titulo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `idioma` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isbn` varchar(13) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_paginas` int(11) DEFAULT NULL,
  `data_edicao` date DEFAULT NULL,
  `ide` int(11) not null,
  PRIMARY KEY (`idl`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `livros` VALUES (1,'sistema de informação de apoio a gestão','Portugês','9728589433',NULL,NULL,1),
(2,'cidades e regiões digitais:impacte na cidade e nas pessoas','Portugês','9728830033',NULL,NULL,2),
(3,'Informatica e Competencias Tecnologicas para a Sociedade da Informação','Portugês','9789728830304',NULL,NULL,1),
(4,'Readings in Information Society','Inglês','9789727228997',NULL,NULL,3),
(5,'Sociedade da Informação: balanço e implicações ','Português','9789728830182',NULL,NULL,3),
(6,'O Tribunal de Contas e as Autarquias Locais','Portugês','9789899936614',NULL,NULL,2),
(7,'Informática e Competências Tecnológicas para a Sociedade da Informação 2ed','Português','9789728830304',NULL,NULL,2),
(8,'Negócio Eletrónico - conceitos e perspetivas de desenvolvimento','Português','9789899552258',NULL,NULL,1),
(9,'Gestão da Informação na Biblioteca Escolar','Português','9789722314916',NULL,NULL,1),
(10,'A virtual environment to share knowledge','Inglês','9781351729901',NULL,NULL,2),
(11,'Ciência da Informação: contributos para o seu estudo','Português','9789896430900',NULL,NULL,1),
(12,'Repensar a Sociedade da Informação e do Conhecimento no Início do Século XXI','Português','9789726186953',NULL,NULL,3),
(13,'Gestão da Informação em Museus: uma contribuição para o seu estudo','Português','9789899901394',NULL,NULL,2),
(14,'Web 2.0 and Higher Education. A psychological perspective','Inglês','9783659683466',NULL,NULL,1),
(15,'Contribuições para a discussão de um modelo de Governo Eletrónico Local para Angola','Português','9789899933200',NULL,NULL,1);

CREATE TABLE generos (
  idg int(11) AUTO_INCREMENT  NOT NULL,
  designacao varchar(30) NOT NULL,
  observacoes varchar(255) NULL,
  PRIMARY KEY (idg)
);

insert into generos (idg, designacao) values (1, 'Memórias e Testemunhos');
insert into generos (idg, designacao) values (2, 'Direito Civil ');
insert into generos (idg, designacao) values (3, 'Culinária');
insert into generos (idg, designacao) values (4, 'Romance');
insert into generos (idg, designacao) values (5, 'Policial e Thriller');
