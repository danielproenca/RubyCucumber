class Cadastropg < SitePrism::Page

	#Informar a url para acesso
	set_url "http://www.facebook.com"
	
	#Element -> comando onde se indentifca o elemnto do componente
	
	#Utilizando xpath no Site prism para localizar o componente
  	element :fristname, "input[name='firstname']"
	
	#utilizando o nome do objeto para pegar o componente
	element :secname, "input[name='lastname']"	
	
	#utilizando o id do objeto para pegar o componente
	element :mail, "input[name='reg_email__']"
	
	#Utilizando xpath no Site prism para localizar o componente
	element :confemail, "input[name='reg_email_confirmation__']"
	
	#utilizando o nome do objeto para pegar o componente
	element :pass, "input[name='reg_passwd__']"
	
	#Selecionar mes de nascimento:
	element :month, "select[name='birthday_month']"
	
	#Selecionar dia de nascimento:	
	element :day, "select[name='birthday_day']"
		
	#Selecionar ano de nascimento:
	element :year, "select[name='birthday_year']"
	
		
	def preencher_campos
		fristname.set $pri_nome
		secname.set $seg_nome
		mail.set $mail
		confemail.set $cof_mail
		pass.set $senha
		month.select $month
		day.select $day
		year.select $year
		if $sex == 'Fame'
			#choose(option: 1)
			choose("sex", option: 1)
			else
			#choose(option: 2)
			choose("sex", option: 2)
		end
	end
	
	def clicar_login
		click_button('Create Account')
	end
	
	#def validar_cadastro
	#end
	
end