
-- PARA CREAR TABLAS
CREATE TABLE Entrenador(
id_entrenador int primary key,
Nombre varchar (100),
Medallas int,
Nivel int
);


CREATE TABLE Pokemon (
id_pokemon int primary key,
Nombre varchar(100) unique,
Tipo varchar(100),
Habilidad varchar (100),
Estadisticas varchar (100),
id_entrenador int,

foreign key (id_entrenador) references Entrenador (id_entrenador)
);

CREATE TABLE Batallas(
id_batalla int primary key,
id_entrenador1 int,
id_entrenador_2 int,
id_pokemon1 int,
id_pokemon2 int,
fecha date,
Resultado varchar (100),

FOREIGN KEY (id_entrenador1) references Entrenador (id_entrenador),
FOREIGN KEY (id_entrenador_2) references Entrenador (id_entrenador),
FOREIGN KEY (id_pokemon1) references Pokemon (id_pokemon),
FOREIGN KEY (id_pokemon2) references Pokemon (id_pokemon)
);

CREATE TABLE entrenadores_pokemones(
id_e_p int primary key,
entrenador_id int,
pokemon_id int,
UNIQUE(entrenador_id, pokemon_id),
FOREIGN KEY (entrenador_id) REFERENCES Entrenador(id_entrenador),
FOREIGN KEY (pokemon_id) REFERENCES Pokemon(id_pokemon)

);

