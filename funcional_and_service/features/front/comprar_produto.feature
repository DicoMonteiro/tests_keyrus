# encoding: utf-8
# language: pt

@novo_produto
Funcionalidade: Comprar Produto
  Como um usuário do e-commerce Mercado Livre
  Desejo pesquisar um produto
  Para poder compra-lo

Contexto: 
  Dado que eu esteja na página principal do e-commerce
  E desejo realizar o login
  Quando informo meus dados válidos para acessar minha conta
  E solicito acessar o sistema

Cenario: Novo produto
  Dado que eu esteja logado no sistema
  E desejo pesquisa e selecionar um "cabo usb"
  Quando solicito comprar o produto
  E seleciono a opção "Boleto"
  Entao visualizo a geração do formato de pagamento para finalizar a compra
