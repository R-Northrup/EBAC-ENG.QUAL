#language: pt

Funcionalidade: Configurar produto
Como cliente da EBAC-SHOP
Quero configurar meu produto de acordo com meu tamanho e gosto 
E escolher a quantidade
Para depois inserir no carrinho

Contexto:
Dado que estou na página de configuração de um produto

Cenário: Produto sem seleção de cor, tamanho e quantidade
Quando tentar adicionar o produto ao carrinho sem selecionar a cor
E sem selecionar o tamanho 
E com o valor de quantidade igual a 0
Então deve aparecer a mensagem "Cor, tamanho e quantidade do produto são obrigatórios"
E o produto não deve ser adicionado ao carrinho

Esquema do Cenário: Falta de seleção de cor, tamanho ou quantidade
Quando tentar adicionar o produto ao carrinho sem selecionar <campo>
Então deve aparecer a mensagem "<mensagem>"
E o produto não deve ser adicionado ao carrinho

Exemplos:
| campo      | mensagem                                 |
| cor        | Favor selecionar a cor do produto        |
| tamanho    | Favor selecionar o tamanho do produto    |
| quantidade | Favor selecionar a quantidade de produtos|

Cenário: Quantidade de produtos
Quando a quantidade de produtos selecionados for maior que 10
Então deve aparecer a mensagem "A quantidade máxima de produtos por venda é 10"
E o produto não deve ser adicionado ao carrinho

Cenário: Linmpar configuração do produto
Quando clicar no botão "limpar"
Então os valores de cor deve retornar ao estado de não selecionado
E o tamanho deve retornar ao estado de não selecionado
E a quantidade deve retornar ao valor padrão de 1

Cenário: Produto selecionado corretamente
Quando selecionar uma cor válida
E selecionar um tamanho válido
E selecionar uma quantidade entre 1 e 10
E clicar no botão "comprar"
Então o produto deve ser adicionado ao carrinho