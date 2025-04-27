# 📝 Desenvolvimento 3

## ✅ Instruções do projeto

Uma empresa de vendas tem um banco de dados com informações sobre os seus produtos. Ela precisa criar um relatório que faça um levantamento diário da quantidade de produtos comprados por dia. Para ajudar a empresa, crie um procedure para agilizar esse processo.

## ✍️ Resolução

**Levantamento de produtos vendidos a partir da data adicionada**:

```
DELIMITER $$
CREATE PROCEDURE levantamento_vendas(IN data_informada DATE)
BEGIN
	SELECT produto_nome,
    COUNT(*) AS quantidade_vendida
	FROM vendas
	WHERE data_venda = data_informada
	GROUP BY produto_nome;


END $$

DELIMITER ;

CALL levantamento_vendas(2025-04-27);
```
