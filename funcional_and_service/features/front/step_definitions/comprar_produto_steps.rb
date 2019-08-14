
Dado("que eu esteja logado no sistema") do
    expect($login_ecommerce.msg_logado.text).to have_content "Keyrus"
    @pesquisar_produto = ProdutoPage.new
end
  
Dado("desejo pesquisa e selecionar um {string}") do |produto|
    @pesquisar_produto.pesquisar(produto)
end
  
Quando("solicito comprar o produto") do
    @pesquisar_produto.selecionarProduto
end
  
Quando("seleciono a opção {string}") do |text|
    expect(@pesquisar_produto.boleto.text).to have_content "#{text}"
    @pesquisar_produto.pagamento
end
  
Entao("visualizo a geração do formato de pagamento para finalizar a compra") do
    expect(@pesquisar_produto.msg_confirmacao.text).to have_content "boleto para pagamento"
end
