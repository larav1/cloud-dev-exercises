/*  
Instruções do projeto  
De acordo com os comandos aprendidos, programe códigos SQL para criar um banco de dados chamado ESCOLA e deixe-o pronto para o uso.  
Depois, pesquise qual é o comando utilizado para inserir uma tabela no banco de dados e siga as instruções:  

1. crie uma tabela chamada ALUNO;  
2. defina os atributos da tabela;  
3. adicione a chave primária de nome ID (identificador);  
4. adicione um atributo nome do tipo varchar;  
5. adicione um atributo e-mail do tipo varchar;  
6. adicione um atributo endereço do tipo varchar.  
*/

-- Criação da tabela ALUNO
CREATE TABLE ALUNO (
  id SERIAL PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  matricula VARCHAR(10) UNIQUE NOT NULL,
  email VARCHAR(255) UNIQUE NOT NULL,
  endereco VARCHAR(200) NOT NULL,
  telefone VARCHAR(20) NOT NULL
);

-- Inserindo dados na tabela ALUNO
INSERT INTO ALUNO (nome, matricula, email, endereco, telefone) VALUES 
    ('João Carlos', '1234', 'Jcarlos@gmail.com', 'Rua 13 de maio', '(11)7825-4489'),
    ('José Vitor', '2345', 'Jvitor@gmail.com', 'Rua da Saudade', '(11)7825-6589'),
    ('Paulo André', '3456', 'Padr@gmail.com', 'Rua do Sol', '(11)7825-4495');
    
    
-- Consultando os dados inseridos
SELECT * FROM ALUNO;
