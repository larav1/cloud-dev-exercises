/*Instruções do projeto - Desenvolvimento I_Banco de dados II

Desenvolva um banco de dados e relacione tabelas através de chaves estrangeiras ou nomes de colunas iguais. 
Siga as instruções:
a) crie uma base de dados; 
b) crie tabelas nessa base de dados;
c) em cada tabela, adicione atributos;
d) insira dados em cada tabela;
e) utilize os comandos Joins para realizar consultas nas tabelas. 
*/

-- Criando o banco de dados de filmes de terror
--CREATE DATABASE FilmesSeriesTerror;
--USE FilmesTerror;

-- Criando as tabelas
CREATE TABLE Filmes (
  id_filme SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  ano_lancamento INT,
  sinopse TEXT NOT NULL,
  diretor VARCHAR(255)
);

CREATE TABLE Series (
  id_serie SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  ano_lancamento INT,
  sinopse TEXT NOT NULL,
  diretor VARCHAR(255)
);

CREATE TABLE Atores (
  id_ator SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL
);

-- Tabela intermediária para associar atores a filmes e séries
CREATE TABLE Atores_Filmes_Series (
  id_entrada SERIAL PRIMARY KEY, 
  id_ator INT NOT NULL,         
  id_filme INT,                  
  id_serie INT,                 
  personagem VARCHAR(255),
  FOREIGN KEY (id_ator) REFERENCES Atores(id_ator),
  FOREIGN KEY (id_filme) REFERENCES Filmes(id_filme),
  FOREIGN KEY (id_serie) REFERENCES Series(id_serie)
);


-- Inserindo os dados nas tabelas
INSERT INTO Filmes (nome, ano_lancamento, sinopse, diretor) 
            VALUES ('O Exorcista', 1973, 'Uma garota é possuída por uma entidade demoníaca.', 'William Friedkin'),
                   ('Invocação do Mal', 2013, 'Os investigadores paranormais Ed e Lorraine Warren trabalham para ajudar a família aterrorizada por uma entidade demoníaca em sua fazenda.', 'James Wan'),
                   ('Os Outros', 2001, 'Durante a Segunda Guerra, a devota Grace aguarda com os filhos o retorno do marido dos campos de batalha. Isolados em uma mansão numa ilha deserta, passam a observar estranhos acontecimentos ao seu redor.', 'Alejandro Amenábar'),
                   ('It - a coisa', 2017, 'Um grupo de crianças se une para investigar o misterioso desaparecimento de vários jovens em sua cidade.', 'Andy Muschietti'),
                   ('Invocação do Mal 2', 2016, 'Os famosos demonologistas Lorraine e Ed Warren viajam até o norte de Londres. Lá, eles ajudam uma mãe solteira que cria quatro filhos sozinha em uma casa atormentada por espíritos malignos.', 'James Wan'),
                   ('Casamento Sangrento', 2019, 'Horas após o casamento dos seus sonhos, Grace retorna à casa de campo do novo marido para passar a noite com seus novos sogros. Grace logo se vê em uma luta sangrenta pela sobrevivência no que deveria ser a sua lua de mel.', 'Tyler Gillett e Matt Bettinelli-Olpin'),
                   ('Pânico', 1997, 'Sidney Prescott, traumatizada após o brutal assassinato de sua mãe, é o alvo preferido do misterioso homicida que aterroriza a outrora pacata comunidade.', 'Wes Craven'),
                   ('Pearl', 2023, 'Presa em uma fazenda isolada, Pearl deve cuidar de seu pai doente sob a vigilância de sua mãe. Desejando a vida glamouroso que ela viu nos filmes, as tentações e repressões de Pearl colidem.', 'Ti West');
                   

INSERT INTO Series (nome, ano_lancamento, sinopse, diretor) 
            VALUES ('From', 2022, 'From é uma série de terror e mistério sobrenatural que conta a história de um grupo de pessoas presas em uma cidade misteriosa.', 'Jack Bender'),
                   ('Slasher', 2016, 'Slasher é uma série de televisão canadense antológica de terror.', 'Aaron Martin'),
                   ('American Horror Story', 2011, 'American Horror Story é uma antologia de terror, com cada temporada contando uma história diferente, em um cenário e com personagens diferentes.', 'Ryan Murphy e Brad Falchuk');
                   
                   
INSERT INTO Atores (nome) 
      VALUES ('Linda Blair'),
             ('Samara Weaving'),
             ('Nicole Kidman'),
             ('Neve Campbell');
             

INSERT INTO Atores_Filmes_Series (id_ator, id_filme, personagem) 
      VALUES (1, 1, 'Regan'),
             (2, 6, 'Grace'),
             (3, 3, 'Grace'),
             (4, 7, 'Sidney');
             
             

-- Ver todos os filmes
SELECT * FROM Filmes;

-- Ver todas as séries
SELECT * FROM Series;

-- Ver todos os atores
SELECT * FROM Atores;

-- Ver todas as relações entre atores, filmes e séries
SELECT * FROM Atores_Filmes_Series;

-- Nome do ator, personagem e obra
SELECT A.nome AS Ator, 
       COALESCE(F.nome, S.nome) AS Obra, 
       AFS.personagem
FROM Atores_Filmes_Series AFS
JOIN Atores A ON AFS.id_ator = A.id_ator
LEFT JOIN Filmes F ON AFS.id_filme = F.id_filme
LEFT JOIN Series S ON AFS.id_serie = S.id_serie;





                   


