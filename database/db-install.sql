create database if not EXISTS jokes character set='utf8mb4' collate='utf8mb4_general_ci';
create user if not EXISTS 'joker'@'localhost' identified by 'secure_password';
grant all privileges on jokes.* to 'joker'@'localhost';
flush privileges;

use jokes;
CREATE TABLE jokes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    question VARCHAR(255),
    answer VARCHAR(255)
);

INSERT INTO jokes (question, answer) VALUES
('¿Qué le dice un jardinero a otro?', '¡Estamos plantados!'),
('¿Cuál es el colmo de un electricista?', 'No tener corriente.'),
('¿Por qué los pájaros no usan Facebook?', 'Porque ya tienen Twitter.'),
('¿Cuál es el animal más antiguo?', 'La cebra, ¡porque está en blanco y negro!'),
('¿Qué hace una abeja en el gimnasio?', '¡Zum-ba!'),
('¿Qué le dice un ojo a otro ojo?', '¡Entre nosotros algo huele mal!'),
('¿Cuál es el animal más valiente?', 'El pato, porque se enfrenta al problema de frente.'),
('¿Cuál es el día más fuerte de la semana?', '¡El sábado! Y los demás días están "debiles".'),
('¿Qué le dice un taxi a otro taxi?', '¡Nos vemos en la parada!'),
('¿Por qué la vaca fue al espacio?', 'Porque quería ser una "vacuna" espacial.'),
('¿Qué hace una abeja en el gimnasio?', '¡Zum-ba!'),
('¿Qué le dice un jardinero a otro?', '¡Estamos plantados!'),
('¿Qué hace un pez cuando se cae?', '¡Se pone en remojo!'),
('¿Por qué el libro de matemáticas estaba triste?', 'Porque tenía demasiados problemas.'),
('¿Qué le dice una iguana a su hermana gemela?', '¡Eres igual-iguana que yo!'),
('¿Qué hace una abeja en el cine?', '¡Zumbi!'),
('¿Por qué los pájaros no usan Facebook?', 'Porque ya tienen Twitter.'),
('¿Qué le dice un perro a otro perro?', '¡Estoy ladrando de alegría!'),
('¿Cuál es el colmo de un electricista?', 'No tener corriente.'),
('¿Cuál es el colmo de un astronauta?', '¡Que le den un "Planeta-miento"!'),
('¿Por qué los esqueletos no pelean entre sí?', 'Porque no tienen agallas.'),
('¿Qué le dice un árbol a otro árbol?', '¡Qué tal el "ambiente"!'),
('¿Qué le dice un semáforo a otro semáforo?', '¡No me mires, que me pongo en rojo!'),
('¿Qué hace una ola en la playa?', '¡Saluda!'),
('¿Cuál es el lugar más fresco del planeta?', '¡La nevera!'),
('¿Cuál es el animal más antiguo?', 'La cebra, ¡porque está en blanco y negro!'),
('¿Cuál es el animal más ruidoso?', '¡El trueno!'),
('¿Por qué el libro de geografía está mareado?', 'Porque da muchas vueltas.'),
('¿Qué le dice un árbol a otro árbol?', '¡Qué tal el "ambiente"!'),
('¿Qué le dice un árbol a otro árbol?', '¡Deja de ramificarte!'),
('¿Cuál es el colmo de un astronauta?', 'Que le den un "Planeta-miento".'),
('¿Qué le dice un ojo a otro ojo?', '¡Entre nosotros algo huele mal!'),
('¿Por qué los peces no hacen chistes?', 'Porque siempre se los toman en serio.'),
('¿Por qué el libro de matemáticas estaba triste?', 'Porque tenía demasiados problemas.'),
('¿Cuál es el animal más valiente?', 'El pato, porque se enfrenta al problema de frente.'),
('¿Cuál es el colmo de un jardinero?', '¡Que le dé miedo la tierra!'),
('¿Qué le dice un perro a otro perro?', '¡Estoy ladrando de alegría!'),
('¿Qué hace una abeja en el cine?', '¡Zumbi!'),
('¿Qué le dice un zapato a otro zapato?', '¡Nos vemos en el tacón!'),
('¿Cuál es el día más fuerte de la semana?', 'El sábado, y los demás días están "debiles".'),
('¿Cuál es el lugar más fresco del planeta?', '¡La nevera!'),
('¿Qué le dice una iguana a su hermana gemela?', '¡Eres igual-iguana que yo!'),
('¿Por qué el libro de geografía está mareado?', 'Porque da muchas vueltas.'),
('¿Por qué los esqueletos no pelean entre sí?', 'Porque no tienen agallas.'),
('¿Por qué la vaca fue al espacio?', 'Porque quería ser una "vacuna" espacial.'),
('¿Qué hace una ola en la playa?', '¡Saluda!'),
('¿Qué hace un pez cuando se cae?', '¡Se pone en remojo!'),
('¿Cuál es el día más fuerte de la semana?', 'El sábado, ¡y los demás días están "debiles"!'),
('¿Qué le dice un semáforo a otro semáforo?', '¡No me mires, que me pongo en rojo!'),
('¿Qué le dice un taxi a otro taxi?', '¡Nos vemos en la parada!');

