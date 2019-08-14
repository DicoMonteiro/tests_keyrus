class LoginPage < SitePrism::Page

  set_url "#{$servidores['ecommerce']}"
  element :minha_conta, '#nav-header-menu > a:nth-child(2)'
  element :email, '#user_id'
  element :continuar, 'input[value="Continuar"]'
  element :password, '#password'
  element :signin, '#action-complete'
  element :msg_logado, 'a > span > span.nav-header-username'

  element :msg_error, '.ui-form__message'

  def logar(user, password)
    self.email.set user
    self.continuar.click
    self.password.set password
  end
end
