# Desenvolvimento 5
## 📝 Descrição do projeto
Elabore um algoritmo que possa descobrir, através de perguntas e respostas, em qual área de um restaurante uma pessoa ou grupo de pessoas precisa ser alocada.
O restaurante tem três áreas: térreo, 1ro andar, e área externa.

Clientes fumantes ou com animais de estimação precisam ser alocadas na área externa.

Grupos de 5 ou mais precisam ser alocados no 1º andar, pois não dá para juntar mesas no térreo.

Qualquer outro grupo de pessoas pode ser alocado no térreo. 

## 🏩 Resolução


```
Algoritmo "Restaurante"
// Descrição   : Define em qual lugar o cliente irá ficar
// Autor(a)    : Lara Vitória da Costa Bezerra
// Data atual  : 01/10/2024

Var
   cliente, fumante, animais: caractere
   total_pessoas: inteiro

Inicio

   escreval("Qual o seu nome?")
   leia(cliente)

   escreval("Mesa para quantas pessoas?")
   leia(total_pessoas)

   escreval("Você ou alguém do grupo é fumante? ((s) -> Sim/(n) -> Não)")
   leia(fumante)

   escreval("Você está com animais de estimação? ((s) -> Sim/(n) -> Não)")
   leia(animais)

   SE (fumante = "s") OU (animais = "s") ENTÃO
      escreval("Olá, ", cliente, "! Você será alocado(a) na área externa.")
   SENÃO
      SE total_pessoas >= 5 ENTÃO
         escreval("Olá, ", cliente, "! Você será alocado(a) no 1º andar.")
      SENÃO
         escreval("Olá, ", cliente, "! Você será alocado(a) no térreo.")
      FIMSE
   FIMSE

Fimalgoritmo
```
**Imagem do algoritmo funcionando**
![Captura de tela 2024-10-01 182906](https://github.com/user-attachments/assets/4b270eda-6f7b-4de1-8ac7-aff288ec7d3d)

