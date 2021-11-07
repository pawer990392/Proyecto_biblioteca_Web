/* 
CREANDO LA BASE DE DATOS BIBIOTECA CON LOS INTEGRANTES DE EQUIPOS:
Miguel Angel Florencio Isabel (Patron)
Miguel Angel Garcia Martinez  (Apenas va)
Mateteria: Paginas Web
Hacer una pagina Web de forma de manera Local*/

-- Creando la Base de Datos
CREATE DATABASE bd_Biblioteca;
-- Usando la Base De datos
Use bd_Biblioteca;

-- Creando la tabla "Usuario"
CREATE TABLE IF NOT EXISTS Usuario (
  id_Isuario INT auto_increment,
  Matricula INTEGER UNIQUE ,
  Nombre VARCHAR(35) NOT NULL,
  Apellido_Paterno VARCHAR(35) NOT NULL,
  Apellido_Materno VARCHAR(35) NOT NULL,
  Fecha_Nacimiento DATE NOT NULL,
  Genero CHAR(1) NOT NULL,
  Domicilio VARCHAR(70) NULL DEFAULT 'S/E',
  Poblacion VARCHAR(35) NOT NULL,
  Providencia VARCHAR(60) NOT NULL,
  CONSTRAINT Pk_Usuario PRIMARY KEY (id_Isuario))
  ENGINE = InnoDB;

-- Creando la base de datos "Libros"
CREATE TABLE IF NOT EXISTS Libro (
  Id_Libro INT NOT NULL auto_increment,
  Nombre VARCHAR(70) NOT NULL,
  Editorial VARCHAR(70) NOT NULL,
  Autor VARCHAR(60) NOT NULL,
  Genero VARCHAR(35) NOT NULL,
  Pais_Autor VARCHAR(30) NOT NULL,
  Numero_Pagina INT NOT NULL,
  Year_Edicion DATE NOT NULL,
  Precio_Libro DOUBLE default 0,
  Descripcion VARCHAR(200) NULL,
  CONSTRAINT Pk_Libro1 PRIMARY KEY (Id_Libro))
ENGINE = InnoDB;

-- Creacion de la tabla Registro
CREATE TABLE IF NOT EXISTS Registro (
  Id_Registro INT NOT NULL auto_increment,
  Usuario_id_Isuario INT NOT NULL,
  Libro_Id_Libro INT NOT NULL,
  Fecha_Salida DATE NOT NULL,
  Fecha_Maxima DATE NOT NULL,
  Fecha_Devolucion DATE NOT NULL,
  CONSTRAINT Pk_Registro PRIMARY KEY (Id_Registro),
  CONSTRAINT Fk_Usuario FOREIGN KEY (Usuario_id_Isuario) REFERENCES Usuario (id_Isuario) ON DELETE CASCADE,
  CONSTRAINT Fk_Libro FOREIGN KEY (Libro_Id_Libro) REFERENCES Libro (Id_Libro) ON DELETE CASCADE)
ENGINE = InnoDB;

-- Mostrando lista de la tabla de la base de datos 
  SHOW TABLES FROM biblio;
  -- Mostrando el contenido de la tabla usuario
  show columns from Usuario;
-- Liga ayuda
-- https://www.jveweb.net/archivo/2011/03/manejando-mysql-desde-la-linea-de-comandos.html#jveweb_es_029_07