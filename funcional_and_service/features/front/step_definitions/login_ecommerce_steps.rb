
Dado("que eu esteja na página principal do e-commerce") do
    $login_ecommerce = LoginPage.new
    $login_ecommerce.load
end
  
Dado("desejo realizar o login") do
    $login_ecommerce.minha_conta.click
end
  
Quando("informo meus dados válidos para acessar minha conta") do
    $login_ecommerce.logar($authentication['username'], $authentication['password'])
end
  
Quando("solicito acessar o sistema") do
    $login_ecommerce.signin.click
end
  
Então("visualizo meu nome logado {string}") do |nome|
    expect($login_ecommerce.msg_logado.text).to have_content "#{nome}"
end

Quando("informo meus dados inválidos para acessar minha conta") do
    $login_ecommerce.logar($authentication['username'], 'teste01')
end

Então("visualizo uma mensagem de erro") do
    expect($login_ecommerce.msg_error.text).to have_content "Revise a sua senha."
end