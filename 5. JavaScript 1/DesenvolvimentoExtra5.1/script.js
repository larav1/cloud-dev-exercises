const titulo = document.getElementById("titulo");
const link = document.querySelector("a");

titulo.innerText = "Lista de Séries";
console.log(link);

const lista = document.getElementById("lista-ordenada");
const itens = lista.getElementsByTagName("li");

// Altera o texto dos itens individualmente
itens[0].innerText = "Teacup";
itens[1].innerText = "ER";
itens[2].innerText = "This is us";

console.log(itens); // Para verificar o resultado
