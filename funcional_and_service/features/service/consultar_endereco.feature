# encoding: utf-8
# language: pt

@consulta_endereco
Funcionalidade: Consultar Endereço
   Como usuário 
   Desejo realizar uma consulta por endereço
   Para poder obter os dados detalhados

Cenario: Consultar Endreco com sucesso
   Dado que eu desejo obter as informacoes de um endereco
   Quando solicito pesquisar o endereco
   Então visualizo o dados de bairro "Moema"
   E o código de retorno "200"