
class Endereco
  include HTTParty

  base_uri $servidores['api_endereco']
  format :json

  attr_accessor :bairro, :codigo_retorno

  headers "content-type" => "application/json;charset=UTF-8"

  def consultarEndereco
    response = self.class.get("#{$servidores['api_endereco']}")
    begin
      @bairro = response["bairro"]
      @cep = response["cep"]
      @logradouro = response["logradouro"]
      @localidade = response["localidade"]
      @uf = response["uf"]
      @unidade = response["unidade"]
      @ibge = response["ibge"]
      @gia = response["gia"]
      @complemento = response["complemento"]
      @status = true
    rescue Exception => e

    end
    @codigo_retorno = response.code
    response
  end

end
