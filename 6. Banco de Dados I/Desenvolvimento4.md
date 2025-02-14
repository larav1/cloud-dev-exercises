# Desenvolvimento 4

## 📝 Descrição do projeto

De acordo com os conceitos estudados, exiba os resultados das consultas das operações select, project, união, intersecção e diferença. Siga as instruções com base na tabela apresentada em anexo.

- Mostre as informações apenas dos alunos aprovados. A aprovação é acima de 7,0;
- Exiba as informações dos alunos do primeiro ano com nota maior ou igual a 8,0;
- Exiba apenas os nomes e as notas dos alunos;
- Crie uma tabela PROFESSOR que apresente apenas o primeiro e o último nome do professor;
- Crie uma tabela ALUNO com o primeiro e o último nome de cada;
- Mostre o resultado da união entre a tabela ALUNO(PNome, UNome) e a tabela PROFESSOR;
- Exiba o resultado da intersecção entre a tabela ALUNO(PNome, UNome) e a tabela PROFESSOR;
- Exiba o resultado da diferença entre a tabela ALUNO(PNome, UNome) e a tabela PROFESSOR.

    <img src="../img/Imagem01_Atividade04_BancoDeDadosI.png" alt="">

## 📊 Resolução
Mostre as informações apenas dos alunos aprovados. A aprovação é acima de 7,0
```
σ NOTA > 7 (ALUNO)
```

Exiba as informações dos alunos do primeiro ano com nota maior ou igual a 8,0
```
 σ NOTA ≥ 8 (ALUNO)
```
Exiba apenas os nomes e as notas dos alunos
```
π P.NOME,NOTA (ALUNO)
```
Crie uma tabela PROFESSOR que apresente apenas o primeiro e o último nome do professor
```
π P.NOME,U.NOME (PROFESSOR)
```
Crie uma tabela ALUNO com o primeiro e o último nome de cada
```
π P.NOME,U.NOME (ALUNO)
```
Mostre o resultado da união entre a tabela ALUNO(PNome, UNome) e a tabela PROFESSOR
```
ALUNO ∪ PROFESSOR
```
Exiba o resultado da intersecção entre a tabela ALUNO(PNome, UNome) e a tabela PROFESSOR
```
ALUNO ∩ PROFESSOR
```
Exiba o resultado da diferença entre a tabela ALUNO(PNome, UNome) e a tabela PROFESSOR
```
ALUNO - PROFESSOR
```



