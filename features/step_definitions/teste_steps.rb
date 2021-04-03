Dado("que esteja na pagina desejada") do
  visit 'https://agendecovid.grupofleury.com.br/login/primeiro-acesso/'
end

Quando("realizo o cadastro das informações") do
  $page_cadastro = CadastroPage.new
  $page_cadastro.realizar_cadastro
end

Então("valido o {string} e a sua mensagem de erro {string}") do |campo_string, mensagem_string|
  $page_cadastro.limpar_campo(campo_string)
  page.assert_selector('span', :text => mensagem_string, :visible => true, wait: 15)
end
