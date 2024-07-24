--Crud

--leer

SELECT * FROM Batallas
SELECT * FROM Entrenador
SELECT * FROM Pokemon
SELECT * FROM entrenadores_pokemones

--crear

INSERT INTO Entrenador (id_entrenador, nombre, medallas, nivel)
VALUES
(11,'Barry','4','7')

INSERT INTO Pokemon(id_pokemon, Nombre, Tipo, Habilidad, Estadisticas, id_entrenador)
VALUES
(11,'Staraptor','volador','Intimidacion','{"hp": 85, "ataque": 120, "defensa": 70}',11)

insert into entrenadores_pokemones(id_e_p, entrenador_id, pokemon_id)
values
(11,11,11)
	

--Actualizar
UPDATE Entrenador SET medallas =15 
WHERE id_entrenador = 11;

UPDATE Entrenador SET nivel =30
WHERE id_Entrenador = 11;

UPDATE Entrenador SET nombre = 'Barry/Benito'
WHERE id_entrenador = 11;


--eliminar
	

DELETE FROM Pokemon 
WHERE id_pokemon = 11

DELETE FROM Entrenador 
WHERE id_entrenador = 11;

DELETE FROM entrenadores_pokemones
where id_e_p = 11

