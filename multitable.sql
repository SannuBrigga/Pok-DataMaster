--ver el entrenador y su pokemon
SELECT 
    Entrenador.Nombre AS Entrenador,
    Pokemon.Nombre AS Pokemon
FROM 
    Entrenador
INNER JOIN 
    Pokemon ON Entrenador.id_entrenador = Pokemon.id_entrenador;

--info de batallas
SELECT 
    Entrenador.Nombre AS Entrenador1, 
    Pokemon.Nombre AS Pokemon1, 
    Entrenador2.Nombre AS Entrenador2, 
    Pokemon2.Nombre AS Pokemon2, 
    Batallas.fecha, 
    Batallas.Resultado
FROM 
    Batallas
JOIN 
    Entrenador ON Batallas.id_entrenador1 = Entrenador.id_entrenador
JOIN 
    Entrenador AS Entrenador2 ON Batallas.id_entrenador_2 = Entrenador2.id_entrenador
JOIN 
    Pokemon ON Batallas.id_pokemon1 = Pokemon.id_pokemon
JOIN 
    Pokemon AS Pokemon2 ON Batallas.id_pokemon2 = Pokemon2.id_pokemon;



-- Eliminar a Brock y sus relaciones
BEGIN TRANSACTION;

-- Paso 1: Eliminar registros relacionados en Batallas donde Brock participa como id_entrenador1
DELETE FROM Batallas
WHERE id_entrenador1 = (SELECT id_entrenador FROM Entrenador WHERE Nombre = 'Brock');

-- Paso 2: Eliminar registros relacionados en Batallas donde Brock participa como id_entrenador_2
DELETE FROM Batallas
WHERE id_entrenador_2 = (SELECT id_entrenador FROM Entrenador WHERE Nombre = 'Brock');

-- Paso 3: Eliminar registros relacionados en entrenadores_pokemones donde Brock es el entrenador
DELETE FROM entrenadores_pokemones
WHERE entrenador_id = (SELECT id_entrenador FROM Entrenador WHERE Nombre = 'Brock');

-- Paso 4: Eliminar el entrenador Brock de la tabla Entrenador
DELETE FROM Entrenador
WHERE Nombre = 'Brock';

COMMIT TRANSACTION;

-- Eliminar a Vulpix y sus relaciones
BEGIN TRANSACTION;

-- Paso 1: Eliminar registros relacionados en Batallas donde Vulpix participa como id_pokemon1
DELETE FROM Batallas
WHERE id_pokemon1 = (SELECT id_pokemon FROM Pokemon WHERE Nombre = 'Vulpix');

-- Paso 2: Eliminar registros relacionados en Batallas donde Vulpix participa como id_pokemon2
DELETE FROM Batallas
WHERE id_pokemon2 = (SELECT id_pokemon FROM Pokemon WHERE Nombre = 'Vulpix');

-- Paso 3: Eliminar registros relacionados en entrenadores_pokemones donde Vulpix es el Pokémon
DELETE FROM entrenadores_pokemones
WHERE pokemon_id = (SELECT id_pokemon FROM Pokemon WHERE Nombre = 'Vulpix');

-- Paso 4: Eliminar el Pokémon Vulpix de la tabla Pokemon
DELETE FROM Pokemon
WHERE Nombre = 'Vulpix';

COMMIT TRANSACTION;








