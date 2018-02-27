#!/usr/bin/env ruby
# encoding: utf-8

require './features/Page/Cadastropg.rb'

Dado ("que eu acesse o facebook") do
	@cadastro_page = Cadastropg.new
	@cadastro_page.load
end

Quando("eu preencher os campos de cadastro") do
	@cadastro_page.preencher_campos
	sleep 5
end

E("clicar em Abrir uma conta") do
	@cadastro_page.clicar_login
end

Então("cadastro inicial completo") do
end

