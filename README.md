<h1>Trabalhando com Esquema de Cenário ou Scenario Outline</h1>

Esquema do Cenário ou Scenario Outline
-------------------------
Bom pessoal, nesse post vou mostrar um exemplo de Esquema do Cenário ou Scenario Outline e como ele é vantajoso para cenários repetitivos.

Mas antes pra quem tem alguma dúvida de como configurar o ruby em seu Windowns, vou deixar um breve material abaixo.

Configurando sua máquina
-------------------------
Necessário instalar:
-----------------------

*	Ruby for Windows: linguagem de programação utilizada nos testes.(Estou utilizando a versão ruby 2.3.3p222)
*	Cmder for Windows: Sistema que trás as funcionalidades bash (Terminal) para o Windows.
*	DevKit: Kit de ferramentas que o sistema operacional precisa para que o desenvolvimento funcione.
*	Chromedriver: Driver do navegador que será utilizado na automação. Disponível no site do <https://sites.google.com/a/chromium.org/chromedriver/downloads>.
*	Atom: Editor de texto com funções úteis para escrever o código da automação de testes.


Configurando o ambiente de automação de testes Web
------------------------------------------------------------

Para que sua automação possa ser realizada é necessário instalar alguns recursos, conforme será descrito abaixo:

Windows
--------

<h3>1. Instalando o Console do Cmder</h3>

*	Baixe em: <https://github.com/cmderdev/cmder/releases/download/v1.3.2/cmder.zip> .
*	Descompactar na pasta C:\Cmder.
*	Selecione o cmder.exe e arrastar até sua barra de ferramentas do Windows para criar um atalho.
*	Executar o cmder.exe.

<h3>2. Instalando o Ruby para Windows de acordo com a versão do seu sistema operacional e arquitetura x86 (32bits) ou x64 (64bits)</h3>

*	Baixe em: <http://rubyinstaller.org/downloads/>.
*	Executar o arquivo baixado e seguir as instruções clicando em ‘next’.
* Selecionar os 3 checkbox exibidos e continuar a dar ‘next’ até o ‘finish’.
*	No Console do Cmder, digite o comando ruby –v , se a instalação estiver correta aparecerá a versão instalada.

<h3>3. Instalando Devkit</h3>

*	Baixe em (x86): <https://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-32-4.7.2-20130224-1151-sfx.exe>.
* Baixe em (x64): <http://dl.bintray.com/oneclick/rubyinstaller/DevKit-mingw64-64-4.7.2-20130224-1432-sfx.exe>.
*	Acesse o diretório C:\Ruby23-x64.
*	Crie uma pasta chamada devkit e coloque o arquivo baixado dentro dessa pasta.
*	Clique duas vezes no arquivo para que ele descompate os arquivos na pasta que foi criada.
*	No Console do Cmder, digite os comandos:

```bash
cd/
cd C:\Ruby23-x64\devkit
ruby dk.rb init
ruby dk.rb install
```

<h3>4. Alterando os sources do rubygems</h3>

O Rubygems precisa de uma atualização de certificado de sergurança para permitir utilizar com https,
e para não precisar atualizar isso, passamos a utilizar então o repositório de gems em http, fazendo o
seguinte:
*	No Console do Cmder, digite o comando:
```bash
gem sources -a http://rubygems.org/
gem sources -r https://rubygems.org/
```

<h3>5. Instalando o bundler</h3>

No Console do Cmder, digite o comando:
```bash
gem install bundler
```

<h3>6. Instalando o chromedriver</h3>

Baixe o chromedriver em: <https://sites.google.com/a/chromium.org/chromedriver/downloads> .
*	Descompacte o arquivo dentro da pasta C:\Ruby23-x64\bin.

E pronto, ambiente configurado.

Clonando o repositório do git para execução dos teste
------------------------------------------------------

<h3>Selecionando o destino para o clone do projeto</h3>

*	Navegue no Cmder até a pasta em que você achar mais apropriada para ser feito o clone do projeto, como exemplo vou utilizar a pasta projetos dentro de C:.
```bash
cd/
cd projetos
```

<h3>Clonando o repositório </h3>

*	No Console do Cmder, digite o comando:

````bash
git clone https://github.com/reinaldorossetti/scenario-outline_bdd.git
````
Como é possível ver, a estrutura do comando é "git clone [endereço do repositório] .

Feito isso, temos um clone do projeto para que possamos trabalhar e executar os testes automatizados.


Automação de Testes
--------------------

Para a automação de testes algumas gems do Ruby são essenciais, sendo elas:
*	Cucumber
*	Capybara
*	Selenium-webdriver

Para manter o controle das Gems usadas no projeto, adicione no arquivo Gemfile e serão instaladas de uma só vez.
Com o arquivo Gemfile configurado, utiliza-se a gem bundler para instalação das dependências listadas:
Instalando a Gem bundler
```bash
cd C:\projetos\scenario-outline
gem install bundler
```

Baixando as dependências do projeto
```bash
bundler install
```

**Observação o bundler install precisa encontrar um Gemfile para poder baixar as dependências.**



References:

Mais Informações [Scenario Outline](https://github.com/felipeqa/scenario-outline)

