let elementoProduto = document.createElement("h2");
elementoProduto.innerText = "Widi Care Juba Mousse";

let produtosVenda = document.querySelector(".produtos-venda");
produtosVenda.appendChild(elementoProduto);

const produtoNovo = document.createElement("div");
produtoNovo.innerHTML = `
        <p class="descricaoProduto">
            É um produto desenvolvido para facilitar o cuidado e a definição de cachos em cabelos ondulados, cacheados e crespos. Este incrível produto promete tornar sua rotina capilar mais simples e seus cachos mais definidos e livres de frizz. 
        </p>
        <img
          src="https://acdn.mitiendanube.com/stores/003/941/769/products/prancheta-1-1724cf9d293ab64d5e17289134503819-640-0.webp"
          width="180"
          alt="Mousse capilar"
        />
        <h4 class="precoProduto">Preço: R$ 50,90</h3>
`;

const produtos = document.querySelector(".produtos-venda");
produtos.appendChild(produtoNovo);
