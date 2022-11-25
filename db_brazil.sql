-- crear una base de datos con el nombre de tu seleccion favrita del mundial
-- crear la tabla plantel (DT),  y otra tabla con el nombre player, con los datos de minimo 15 jugadores
-- jugadores
-- nombre, apellido, edad, equipo-actual, talla, peso, sueldo 

-- =========================================================================================================
-- creacion de la base de datos

CREATE DATABASE brazil DEFAULT CHARACTER SET utf8mb4;
use brazil;

-- creacion de las tablas

CREATE TABLE player(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(80) NOT NULL,
    lastName VARCHAR(100) NOT NULL,
    age INT NOT NULL,
    team VARCHAR(150) NOT NULL,
    tall DOUBLE NOT NULL,
    weight DOUBLE NOT NULL,
    position varchar(100) NOT NULL
);

CREATE TABLE coaching_staff(
	id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    age INT NOT NULL,
    occupation VARCHAR(150),
    nationality VARCHAR(100) NOT NULL,
    start_contract DATE,
    final_contract DATE
);

-- =========================================================================================================

-- insertar datos coaching_staff
INSERT INTO coaching_staff (name, age, occupation, nationality, start_contract, final_contract)
VALUES
	('Adenor Leonardo Bacchi',61,'coach','brazil','2016-06-16','2022-12-31'),
    ('Cleber Xavier','58','second coach','brazil','2016-06-16','2022-12-31'),
	('Matheus Bachi','33','second coach','brazil','2016-06-16','2022-12-31'),
	('Claudio Taffarel','56','Goalkeeping coach','brazil','2014-07-21',null),
     ('Fabio Mashseredijan','55','physical trainer','brazil','2014-07-23',null);


-- insertar datos player

INSERT INTO player (name, lastName, age, team, tall, weight, position)
VALUES
	('Alisson',' Ramses Becker',30,'Liverpool',1.93 ,91 ,'goalkeeper'),
    ('Ederson',' Santana de Moraes',29,'Manchester City',1.88 , 89, 'goalkeeper'),
    ('Thiago',' Emiliano da Silva',38,' Chelsea', 1.81, 79, 'Defense - Central Defense'),
    ('Alex Sandro',' Lobo Silva',31,'Juventus',1.81 ,80 , 'Defense - Left Back'),
    ('Eder Gabriel', 'Militão',24,'Real Madrid',1.86 ,78 , 'Defense - Central Defense'),
    ('Fabio',' Henrique Tavares',29,'Liverpool',1.88 ,78 ,'Midfield - Pivote'),
    ('Carlos Henrique','Venancio Casimiro',30,'Manchester United',1.85 ,84,'Midfield - Pivote'),
    ('Frederico', 'Rodrigues de Paula Santos',29,'Manchester United',1.69 ,62 ,'Midfield '),
    ('Neymar da Silva',' Santos Júnior',30,'PSG',1.75 ,68 ,'Forward - Left winger'),
    ('Vinicius José',' Paixão de Oliveira Junior',22,'Real Madrid',1.76 ,73 ,'Forward - Left winger'),
    ('Richarlison',' de Andrade',25,'Tottenham Hotspur',1.84 ,83,'Forward - Center Forward'),
    ('Raphael',' Dias Belloli',25,'Barcelona',1.76 ,68 ,'Forward - Right winger'),
	('Rodrygo',' Silva de Goes',21,'Real Madrid',1.74 ,64 ,'Forward - Right winger'),
    ('Gabriel Teodoro',' Martinelli Silva',21,'Arsenal',1.78 ,75 ,'Forward - Left winger'),
    ('Antony Matheus',' dos Santos',22,'Manchester United',1.72 ,63,'Forward - Left winger');
    
-- =========================================================================================================
    
  

