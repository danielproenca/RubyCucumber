require 'rspec/expectations'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.default_driver = :selenium
Capybara.default_max_wait_time = 30

#criar variavel para preencher na sessão (Hora da execução)
$pri_nome = ENV['PRI_NOME']
$seg_nome = ENV['SEG_NOME']
$mail 	  = ENV['MAIL']
$cof_mail = ENV['COF_MAIL']
$senha    = ENV['SENHA']
$month    = ENV['MONTH']
$day      = ENV['DAY']
$year      = ENV['YEAR']
$sex      = ENV['SEX']


#cucumber PRI_NOME=Tomsmith SEG_NOME=Silva MAIL=silva@gmail.com COF_MAIL=silva@gmail.com SENHA=SuperSecretPassword! MONTH=Jan DAY=10 YEAR=1987 SEX=Fame
#cucumber PRI_NOME=Tomsmith SEG_NOME=Silva MAIL=silva@gmail.com SENHA=SuperSecretPassword! MONTH=Jan DAY=10 YEAR=1987 SEX='Masculino'