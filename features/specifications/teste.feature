#encoding: utf-8
#language: pt

Funcionalidade: Aqui vc descreve a sua Funcionalidade
  Como usuario de qualquer coisa
  Quero fazer alguma coisa
  Para que eu tenha o meu resultado esperado

# Agora iremos criar um scenario outline - esquema do cenário
# Um exemplo bem legal que encontrei é validar varias mensagens de erro na tela.

 @outline_teste
Esquema do Cenário: Validar diversos usuários - Usuários que não possuem acesso a essa aplicação
  Dado que esteja na pagina desejada
  Quando realizo o cadastro das informações
  Então valido o <campo> e a sua mensagem de erro <mensagem>

  Exemplos:
  |campo                 |mensagem|
  |'cpf'                 |'Preencha o CPF correto, por favor.'|
  |'Data de Nascimento'  |'Data inválida! Por favor, preencha novamente'|
  |'nome'                |'Digite o nome completo sem abreviações'|
  |'celular'             |'Número de celular inválido'           |
  |'email'               |'E-mail inválido'           |