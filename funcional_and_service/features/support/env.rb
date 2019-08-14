require 'capybara/cucumber'
require 'page-object'
require 'pry'
require 'rspec'
require 'site_prism'
require 'yaml'
require 'httparty'
require 'selenium-webdriver'

World(Capybara::DSL)

BROWSER = ENV['BROWSER']

#Arquivo que contem os ambientes para acessar, verificar e validar os dados
$servidores = YAML.load_file('./features/config/environments.yml')[ENV['ENV']]
$authentication = YAML.load_file('./features/config/authentication.yml')[ENV['ENV']]

#Configuração para utilizar a execuçao em headless, sem abertura do browser
browser_options = ["headless", "no-sandbox", "disable-dev-shm-usage","--window-size=1920,1080"]

Capybara.register_driver :selenium do |app|

    if BROWSER.eql?('chrome')
       Capybara::Selenium::Driver.new(
           app,
           :browser => :chrome,
           :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
                   'chromeOptions' => {
                        'args' => [ "headless", "window-size=1280x720", "disable-gpu"]
                   }
           )
       ) 
     elsif BROWSER.eql?('firefox')  
       Capybara::Selenium::Driver.new(
           app,
           :browser => :firefox,
           :marionette => true
           )
      elsif BROWSER.eql?('ie')  
       Capybara::Selenium::Driver.new(
           app,
           :browser => :internet_explorer
           )
       elsif BROWSER.eql?('headless')  
        profile = Selenium::WebDriver::Chrome::Profile.new
        profile["download.default_directory"] = Dir.pwd
        options = Selenium::WebDriver::Chrome::Options.new(args: browser_options)
        Capybara::Selenium::Driver.new(app, :browser => :chrome, options: options, :profile => profile)
       end
end

Capybara.configure do |config|
    config.default_driver = :selenium
end

Capybara.default_max_wait_time = 5
