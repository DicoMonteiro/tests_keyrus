require 'fileutils'

module Helpers
  def take_screenshot(scenario)
    target = 'reports/screenshots/' + "#{scenario}.png"
    page.save_screenshot(target)
    embed(target, 'image/png', 'Deu ruim :(. Clique aqui para ver o error.')
  end
end