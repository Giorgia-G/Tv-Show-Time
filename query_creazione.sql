-- Creazione tabella utente
CREATE TABLE utente
(
	cf char(16) PRIMARY KEY,
  nickname varchar(20) NOT NULL UNIQUE,
	nome varchar(30) NOT NULL,
	cognome varchar(30) NOT NULL,
	data_n date NOT NULL CHECK (data_n BETWEEN date '1930-01-01' AND current_date),
	nazionalita varchar(60) NOT NULL,
	luogo_n varchar(60) NOT NULL,
	email varchar(50) NOT NULL UNIQUE,
	ultimo_accesso date DEFAULT NULL CHECK (ultimo_accesso <= current_date),
	password varchar(60) NOT NULL,
CHECK (LENGTH(nickname) >= 4),
CHECK (LENGTH(password) >= 6),
CHECK(email ~* '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$')
);

-- Creazione tabella attore
CREATE TABLE attore
(
	cf char(16) PRIMARY KEY,
	nome varchar(30) NOT NULL,
	cognome varchar(30) NOT NULL,
	data_n date NOT NULL CHECK (data_n < current_date),
	nazionalita varchar(60) NOT NULL,
	luogo_n varchar(60) NOT NULL,
	biografia varchar(500)
);

-- Creazione tabella Serie TV
CREATE TABLE serietv
	(
		titolo_serie varchar(60),
		anno_serie integer,
		n_stagioni int NOT NULL DEFAULT 0,
		trama varchar(500) NOT NULL,
		PRIMARY KEY (titolo_serie, anno_serie)
	);

-- Creazione tabella sulle Stagioni
CREATE TABLE stagione
	(
		n_stagione int,
    titolo_serie varchar(60),
		anno_serie integer,
		anno_stagione integer NOT NULL,
	 	n_episodi int NOT NULL DEFAULT 0,
		PRIMARY KEY (n_stagione, titolo_serie, anno_serie),
		FOREIGN KEY (titolo_serie,anno_serie) REFERENCES serietv ON DELETE CASCADE ON UPDATE CASCADE,
		CHECK (anno_stagione >= anno_serie)
	);

-- Creazione tabella Puntate
CREATE TABLE puntata
	(
		n_episodio int,
		n_stagione int,
    titolo_serie varchar(60),
		anno_serie integer,
	 	titolo_puntata varchar(60) NOT NULL,
	 	durata integer NOT NULL CHECK (durata >= 0),
		descrizione varchar(500) DEFAULT NULL,
		PRIMARY KEY (n_episodio, n_stagione, titolo_serie, anno_serie),
		FOREIGN KEY (n_stagione, titolo_serie, anno_serie) REFERENCES stagione ON DELETE CASCADE ON UPDATE CASCADE
	);

-- Creazione tabella casa produttrice
CREATE TABLE casa_produttrice
(
	titolo_serie varchar(60),
	anno_serie integer,
	nome varchar(30),
	PRIMARY KEY (nome, titolo_serie, anno_serie),
	FOREIGN KEY (titolo_serie, anno_serie) REFERENCES serietv ON DELETE CASCADE ON UPDATE CASCADE
);

-- Creazione tabella Emissione
CREATE TABLE emissione
(
	canale varchar(15),
	data timestamp,
	n_episodio int NOT NULL,
	n_stagione int NOT NULL,
	titolo_serie varchar(60) NOT NULL,
	anno_serie integer NOT NULL,
	PRIMARY KEY (canale, data),
	FOREIGN KEY (n_episodio, n_stagione, titolo_serie, anno_serie) REFERENCES puntata ON DELETE CASCADE ON UPDATE CASCADE
);

-- Creazione tabella guarda
CREATE TABLE guarda
(
	cf char(16),
	n_episodio int,
	n_stagione int,
	titolo_serie varchar(60),
	anno_serie integer,
	dispositivo varchar(20) NOT NULL,
	data date NOT NULL DEFAULT current_date,
	PRIMARY KEY (cf, n_episodio, n_stagione, titolo_serie, anno_serie),
	FOREIGN KEY (n_episodio, n_stagione, titolo_serie, anno_serie) REFERENCES puntata ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (cf) REFERENCES utente ON DELETE CASCADE ON UPDATE CASCADE,
	CHECK (dispositivo='Phone' OR dispositivo='Tablet' OR dispositivo='Computer' OR dispositivo='TV')
);

-- Creazione tabella voti
CREATE TABLE vota
(
	cf char(16),
	voto integer CHECK (voto BETWEEN 1 AND 10) NOT NULL,
	n_episodio int,
	n_stagione int,
	titolo_serie varchar(60),
	anno_serie integer,
	PRIMARY KEY(cf,n_episodio, n_stagione, titolo_serie, anno_serie),
	FOREIGN KEY (cf) REFERENCES utente ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (n_episodio, n_stagione, titolo_serie, anno_serie) REFERENCES puntata ON DELETE CASCADE ON UPDATE CASCADE
);

-- Creazione tabella recensioni
CREATE TABLE recensione
(
	cf char(16),
	titolo_serie varchar(60),
	anno_serie integer,
	titolo varchar(30) NOT NULL,
	testo varchar(500) NOT NULL,
	PRIMARY KEY(cf,titolo_serie, anno_serie),
	FOREIGN KEY (cf) REFERENCES utente ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (titolo_serie, anno_serie) REFERENCES serietv ON DELETE CASCADE ON UPDATE CASCADE
);

-- Creazione tabella cast
CREATE TABLE casts
(
	titolo_serie varchar(60),
	anno_serie integer,
	cf_attore char(16),
	personaggio varchar(30) NOT NULL,
	PRIMARY KEY(titolo_serie,anno_serie,cf_attore, personaggio),
	FOREIGN KEY (cf_attore) REFERENCES attore(cf) ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (titolo_serie,anno_serie) REFERENCES serietv ON DELETE CASCADE ON UPDATE CASCADE
);

-- Creazione tabella genere
CREATE TABLE genere
(
	nome varchar(30) PRIMARY KEY NOT NULL UNIQUE
);

-- Creazione tabella "Utente preferisce Genere"
CREATE TABLE utente_genere
(
	cf char(16),
	genere varchar(30),
	PRIMARY KEY(cf, genere),
	FOREIGN KEY (cf) REFERENCES utente ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (genere) REFERENCES genere(nome) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Creazione tabella "SerieTV possiede Genere"
CREATE TABLE serie_genere
(
	titolo varchar(60),
	anno integer,
	genere varchar(30),
	PRIMARY KEY(titolo, anno, genere),
	FOREIGN KEY (titolo,anno) REFERENCES serietv ON DELETE CASCADE ON UPDATE CASCADE,
	FOREIGN KEY (genere) REFERENCES genere(nome) ON DELETE CASCADE ON UPDATE CASCADE
);
