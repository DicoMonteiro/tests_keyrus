class ProdutoPage < SitePrism::Page
  #pós login
  element :nome_produto, 'input[name="as_word"]'
  element :link_produto, '#MLB930557251 > div.item__info-container.highlighted > div > h2 > a > span'
  element :comprar, 'input[value="Comprar agora"]'
  
  #Endereço de Entrega
  # element :nome, 'label[for="contactName"]'
  # element :cep, 'label[for="zipCode"]'
  # element :rua, 'label[for="street"]'
  # element :numero, 'label[for="streetNumber"]'
  # element :telefone, 'label[for="contactPhoneNumber"]'
  # element :residencial, 'input[value="residential"]'
  #element :continuar, 'button[type="submit"]'
  
  #Pagamento
  element :continuar, '.list-submit-button'
  element :boleto, 'section > div > form > article:nth-child(2) > ul > li:nth-child(2)'
  
  #Endereço de Faturamento
  # element :cpf, 'label[for="docNumber"]'
  # element :cep_faturamento, 'label[for="zipCode"]'
  # element :rua_faturamento, 'label[for="street"]'
  # element :numero_faturamento, 'label[for="streetNumber"]'

  #Finalização da Compra
  element :botao_finalizar,'aside > form > button'

  #Confirmacao da Forma de Pagamento
  element :msg_confirmacao, 'div > section > div > header > h3'
  
  def pesquisar(produto)
    self.nome_produto.set produto
    self.nome_produto.send_keys :enter
  end

  def selecionarProduto
      self.link_produto.click
      self.comprar.click
      self.continuar.click
  end  

  def pagamento
      self.boleto.click
      self.continuar.click
      self.botao_finalizar.click
  end  

end
