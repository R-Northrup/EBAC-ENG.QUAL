#language: pt

Funcionalidade: Tela de Cadastro
Como cliente da EBAC-SHOP
Quero fazer concluir meu cadastro   
Para finalizar minha compra

Contexto:
Dado esteja na tela de cadastro

Cenário: E-mail com formato inválido
Quando informar um e-mail com formato inválido
E clicar em "FINALIZAR COMPRA"
Então deve exibir a mensagem de erro "Favor inserir um e-mail válido"

Esquema do Cenário: campo obrigatório do cadastro vazio
Quando um <campo> obrigatório estiver vazio
E clicar em "FINALIZAR COMPRA"
Então deve exibir a mensagem de alerta "<mensagem>"

Exemplos:
| campo            | mensagem                    |
|Nome              |Insira seu nome              |
|Sobrenome         |Insira seu sobrenome         |
|País              |Selecione seu país           |
|Endereço          |Insira seu endereço          |
|Cidade            |Insira sua cidade            |
|CEP               |Insira seu CEP               |
|Telefone          |Insira seu telefone          |
|Endereço de e-mail|Insira seu endereço de e-mail|

Cenário: Dados obrigatórios do cadastro 
Quando informar todos os dados obrigatórios
E o endereço de e-mail possuir formato válido
E clicar em "FINALIZAR COMPRA"
Então deve ser redirecionado para a tela de finalização da compra
