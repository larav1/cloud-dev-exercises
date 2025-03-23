# 🎲 Desenvolvimento 2

## 📝 Instruções do projeto

Crie um banco de dados, adicione tabelas e determine quais são os atributos de cada uma. Em seguida, execute um trigger que se relacione com algum comando, como insert, select, delete ou update.

## 📌 Resolução

**Tabela filmes**

```
CREATE TABLE Filmes (
  id_filme SERIAL PRIMARY KEY,
  nome VARCHAR(255) NOT NULL,
  ano_lancamento INT,
  sinopse TEXT NOT NULL,
  diretor VARCHAR(255)
);
```

**Trigger para registrar atualizações em filmes**

```
DELIMITER $$

CREATE TRIGGER after_update_filmes
AFTER UPDATE ON Filmes
FOR EACH ROW
BEGIN
    INSERT INTO Atualizacoes (tabela_modificada, id_registro, data_atualizacao)
    VALUES ('Filmes', NEW.id_filme, NOW());
END $$

DELIMITER ;

```
