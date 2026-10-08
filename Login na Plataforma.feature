#language: pt

Funcionalidade: Login na Plataforma
Como cliente da EBAC-SHOP
Quero fazer o login (autenticação) na plataforma  
Para visualizar meus pedidos

Contexto: 
Dado que estou na página de login da plataforma EBAC-SHOP

Cenário: Login com dados válidos
Quando inserir um usuário válido 
E inserir a senha correspondente ao usuário
E clicar em "login"
Então devo ser direcionado para a tela de checkout para visializar meus pedidos

Cenário: Login com Usuário inválido
Quando inserir um usuário inválido
E clicar em "Login"
Então devo receber a mensagem de alerta "Usuário ou senha inválidos"
E não devo ser direcionado para a tela de checkout

Cenário: Login com Senha inválida
Quando inserir um usuário válido
E inserir uma senha não correspondente ao usuário
E clicar em "Login"
Então devo receber a mensagem de alerta "Usuário ou senha inválidos"
E não devo ser direcionado para a tela de checkout  