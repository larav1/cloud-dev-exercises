// Capturar os elementos
const titulo = document.getElementById("titulo");
const link = document.querySelector("a");
const listaNaoOrdenada = document.getElementById("lista-nao-ordenada");
const listaOrdenada = document.getElementById("lista-ordenada");

// Adicionar texto ao título e ao link
titulo.innerText = "Lista de Séries";
link.innerText = "Visite o site Proz Educação";
link.setAttribute("target", "_blank");

// Adicionar itens à lista não ordenada (sem links)
listaNaoOrdenada.innerHTML = `
  <li>Coraline</li>
  <li>Abbott Elementary</li>
  <li>Criminal Minds</li>
`;

// Adicionar itens à lista ordenada (com links)
listaOrdenada.innerHTML = `
  <li><a href="https://www.adorocinema.com/series/serie-33469/" target="_blank">Teacup</a></li>
  <li><a href="https://www.adorocinema.com/series/serie-22123/" target="_blank">9-1-1</a></li>
  <li><a href="https://www.adorocinema.com/series/serie-31297/" target="_blank">Not Dead Yet</a></li>
`;

// Verificar no console se tudo foi capturado corretamente
console.log("Título:", titulo);
console.log("Link principal:", link);
console.log("Lista não ordenada:", listaNaoOrdenada);
console.log("Lista ordenada:", listaOrdenada);
