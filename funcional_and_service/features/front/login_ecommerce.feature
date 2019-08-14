# encoding: utf-8
# language: pt

@login
Funcionalidade: Efetuar Login
  Como um usuário do e-commerce Mercado Livre
  Desejo logar na minha conta para poder gerenciar meus dados

  
Cenário: Realizar login com sucesso
    Dado que eu esteja na página principal do e-commerce
    E desejo realizar o login
    Quando informo meus dados válidos para acessar minha conta
    E solicito acessar o sistema
    Então visualizo meu nome logado 'Keyrus'

Cenário: Realizar login sem sucesso
    Dado que eu esteja na página principal do e-commerce
    E desejo realizar o login
    Quando informo meus dados inválidos para acessar minha conta
    E solicito acessar o sistema
    Então visualizo uma mensagem de erro