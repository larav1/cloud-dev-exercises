# Desenvolvimento 2
## 📝 Descrição do projeto
Num torneio de e-sports é necessário que todos os integrantes da mesma equipe tenham etiquetas que os identifiquem. Por exemplo, se o nome da equipe é “Os Lutadores”, o primeiro membro deve ter uma etiqueta “Os Lutadores – 1", o segundo membro “Os Lutadores – 2", e assim pela frente.

Elabore um algoritmo que permita ao usuário inserir o nome da equipe, e imprime etiquetas para os 5 membros da equipe seguindo o exemplo mostrado acima.

## Resolução

```
Var
// Seção de Declarações das variáveis
equipe: caractere
contador: inteiro

Inicio
// Seção de Comandos, procedimento, funções, operadores, etc...
contador <- 1

escreval("Digite o nome da equipe:")
leia(equipe)

ENQUANTO (contador <= 5) FACA
escreval(equipe, " - ", contador)
contador <- contador + 1
    
Fimenquanto

Fimalgoritmo
```

### **Visualização dos resultados**
![equipe](https://github.com/user-attachments/assets/d1a7b611-dbdf-4d79-a597-7744a883a637)
