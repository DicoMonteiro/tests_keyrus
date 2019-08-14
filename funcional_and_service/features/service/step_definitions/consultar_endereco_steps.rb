#encoding: utf-8

Dado("que eu desejo obter as informacoes de um endereco") do
  @consultar_endereco = Endereco.new
end

Quando("solicito pesquisar o endereco") do
  @consultar_endereco.consultarEndereco
end

Então("visualizo o dados de bairro {string}") do |bairro|
  expect(@consultar_endereco.bairro).to eq bairro
end

Então("o código de retorno {string}") do |code_return|
  expect(@consultar_endereco.codigo_retorno.to_s).to eq code_return
end
