CREATE SCHEMA IF NOT EXISTS SpotifyClone;

CREATE TABLE IF NOT EXISTS SpotifyClone.Planos (
  plano_id INT PRIMARY KEY AUTO_INCREMENT,
  modelo VARCHAR(15) NOT NULL,
  valor DECIMAL(4,2) NOT NULL,
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS SpotifyClone.Usuarios (
  usuario_id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(40) NOT NULL,
  idade INT NOT NULL,
  plano_id INT NOT NULL,
  data_assinatura DATE NOT NULL,
  FOREIGN KEY (plano_id)
  REFERENCES SpotifyClone.Planos (plano_id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS SpotifyClone.Artistas (
  artista_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(40) NOT NULL,
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS SpotifyClone.Albuns (
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(40) NOT NULL,
  ano_lancamento INT NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (artista_id)
  REFERENCES SpotifyClone.Artistas (artista_id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS SpotifyClone.Musicas (
  musica_id INT PRIMARY KEY AUTO_INCREMENT,
  titulo VARCHAR(45) NOT NULL,
  duracao INT NOT NULL,
  album_id INT NOT NULL,
  artista_id INT NOT NULL,
  FOREIGN KEY (album_id)
  REFERENCES SpotifyClone.Albuns (album_id)
  FOREIGN KEY (artista_id)
  REFERENCES SpotifyClone.Artistas (artista_id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS SpotifyClone.Artistas_Seguidos (
  artista_id INT NOT NULL,
  usuario_id INT NOT NULL,
  FOREIGN KEY (artista_id)
  REFERENCES SpotifyClone.Artistas (artista_id)
  FOREIGN KEY (usuario_id)
  REFERENCES SpotifyClone.Usuarios (usuario_id)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS  SpotifyClone.Historico_reproducoes (
  historico_id INT PRIMARY KEY AUTO_INCREMENT,
  usuario_id INT NOT NULL,
  musica_id INT NOT NULL,
  data_reproducao DATETIME NOT NULL,
  FOREIGN KEY (usuario_id)
  REFERENCES SpotifyClone.Usuarios (usuario_id)
  FOREIGN KEY (musica_id)
  REFERENCES SpotifyClone.Musicas (musica_id)
) ENGINE = InnoDB;
