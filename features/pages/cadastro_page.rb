class CadastroPage

  include Capybara::DSL

  def initialize
    super
    @cpf_elemento = 'input[name="cpf"]'
    @aniversario_elemento = 'input[name="birthDate"]'
    @full_name_elemento = 'input[name="fullName"]'
    @celular_elemento = 'input[name="phone"]'
    @email_elemento = 'input[name="email"]'
  end

  def realizar_cadastro
    find(@cpf_elemento).hover.send_keys('213.442.840-60')
    find(@aniversario_elemento).hover.send_keys('03/10/1980')
    find(@full_name_elemento).hover.send_keys('Reinaldo Mateus Rossetti')
    find(@celular_elemento).hover.send_keys('11 971508000')
    find(@email_elemento).hover.send_keys('11 971508000')
  end

  def limpar_campo(campo_string)

    case campo_string.downcase
    when 'cpf'
      find(@cpf_elemento).set(" ").send_keys :tab
    when 'data de nascimento'
      find(@aniversario_elemento).set(" ").send_keys :tab
    when 'nome'
      find(@full_name_elemento).set(" ").send_keys :tab
    when 'celular'
      find(@celular_elemento).set(" ").send_keys :tab
    when 'email'
      find(@email_elemento).set(" ").send_keys :tab
    else
      puts "campo nao encontrado na lista! verifique o mesmo."
    end

  end

end
