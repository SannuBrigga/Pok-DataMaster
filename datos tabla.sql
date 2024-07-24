INSERT INTO Entrenador (id_entrenador, Nombre, Medallas, Nivel)
VALUES
(1, 'Ash Ketchum', 8, 50),
(2, 'Misty', 3, 30),
(3, 'Brock', 6, 40),
(4, 'Jessie', 1, 20),
(5, 'James', 1, 20),
(6, 'Tracey', 2, 25),
(7, 'Gary Oak', 10, 55),
(8, 'May', 4, 35),
(9, 'Dawn', 5, 35),
(10, 'Iris', 6, 45);


insert into Pokemon (id_pokemon, Nombre, Tipo, Habilidad, Estadisticas, id_entrenador)
VALUES
(1, 'Pikachu', 'Eléctrico', 'Electricidad Estática', '{"hp": 35, "ataque": 55, "defensa": 40}', 1),
(2, 'Squirtle', 'Agua', 'Torrente', '{"hp": 44, "ataque": 48, "defensa": 65}', 2),
(3, 'Bulbasaur', 'Planta', 'Clorofila', '{"hp": 45, "ataque": 49, "defensa": 49}', 3),
(4, 'Charmander', 'Fuego', 'Mar Llamas', '{"hp": 39, "ataque": 52, "defensa": 43}', 1),
(5, 'Meowth', 'Normal', 'Recogida', '{"hp": 40, "ataque": 45, "defensa": 35}', 5),
(6, 'Vulpix', 'Fuego', 'Absorbe Fuego', '{"hp": 38, "ataque": 41, "defensa": 40}', 4),
(7, 'Psyduck', 'Agua', 'Nado Rápido', '{"hp": 50, "ataque": 52, "defensa": 48}', 2),
(8, 'Geodude', 'Roca', 'Cabeza Roca', '{"hp": 40, "ataque": 80, "defensa": 100}', 3),
(9, 'Eevee', 'Normal', 'Fuga', '{"hp": 55, "ataque": 55, "defensa": 50}', 1),
(10, 'Pidgeotto', 'Volador', 'Vista Lince', '{"hp": 63, "ataque": 60, "defensa": 55}', 7);


insert into Batallas (id_batalla, id_entrenador1, id_entrenador_2, id_pokemon1, id_pokemon2, fecha, Resultado)
VALUES
(1, 1, 2, 1, 2, '2023-07-10', 'Ganó Ash'),
(2, 1, 4, 3, 4, '2023-07-11', 'Ganó Jessie'),
(3, 2, 3, 2, 3, '2023-07-12', 'Ganó Misty'),
(4, 3, 5, 3, 5, '2023-07-13', 'Ganó Brock'),
(5, 1, 7, 1, 10, '2023-07-14', 'Ganó Gary Oak'),
(6, 6, 8, 6, 9, '2023-07-15', 'Ganó Tracey'),
(7, 9, 10, 7, 8, '2023-07-16', 'Ganó Iris'),
(8, 3, 2, 3, 7, '2023-07-17', 'Ganó Misty'),
(9, 4, 5, 4, 6, '2023-07-18', 'Ganó Jessie'),
(10, 7, 9, 10, 7, '2023-07-19', 'Ganó Gary Oak');


INSERT INTO entrenadores_pokemones (id_e_p, entrenador_id, pokemon_id)
VALUES
(1, 1, 1),  -- Ash y Pikachu
(2, 2, 2),  -- Misty y Squirtle
(3, 3, 3),  -- Brock y Bulbasaur
(4, 1, 4),  -- Ash y Charmander
(5, 5, 5),  -- James y Meowth
(6, 4, 6),  -- Jessie y Vulpix
(7, 2, 7),  -- Misty y Psyduck
(8, 3, 8),  -- Brock y Geodude
(9, 1, 9),  -- Ash y Eevee
(10, 7, 10); -- Gary Oak y Pidgeotto

