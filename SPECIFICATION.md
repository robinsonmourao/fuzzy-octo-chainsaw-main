# 1. Rotas OxeanFlix

## Rotas padrões

### Rotas de User

    Descrição: Permite criar novos usuários na aplicação.

* `/users`
  * `/new/` `GET` Renderiza um formulário para preencher dados de um novo user `🔒implicit route`
  * `/create/` `POST` Ação de CRIAR um novo user em banco de dados `🔒implicit route`

### Rotas de Sessions

    Descrição: Gerencia a autenticação de user na aplicação.
    
* `/sessions/`
  * `/new/` `GET` Renderiza um formulário para preencher dados de sessions `🔒implicit route`
  * `/create/` `POST` Permite CRIAR uma sessions em banco de dados `🔒implicit route`
  * `/destroy/` `DELETE` Ação de DELETAR uma session previamente criadas do banco de dados `🔒implicit route`

### Rotas de Movies

    Descrição: Manipula as operações relacionadas aos filmes na aplicação.

* `/movies/`
  * `/index/` `GET` Renderiza a página inicial de movies `🔒implicit route`
  * `/new/` `GET` Renderiza um formulário para preencher dados de um movie
  * `/create/` `POST` Ação de CRIAR um movie em banco de dados `🔒implicit route`

### Rotas de User_movies

    Descrição: Gerencia as interações dos usuários com os filmes, como adicionar e atualizar filmes assistidos.

* `/user_movies/`
  * `/index/` `GET` Renderiza a página inicial de uma relaçao user-movie `🔒implicit route`
  * `/new/` `GET` Renderiza um formulário para preencher dados para uma relação user-movie
  * `/update/` `PUT` Ação de ATUALIZAR uma relação user-movie em banco de dados `🔒implicit route`

## Rotas Personalizadas

### Rota de Login

    Descrição: Página de login para os usuários acessarem a aplicação.

  * `/login` `GET` Renderiza página inicial de login

### Rota de Logout

    Descrição: Página de logout para finalizar session.

  * `/logout` `DELETE` Finaliza session e renderiza página inicial

### Rota de Página Inicial

     Descrição: Página inicial da aplicação, redireciona para a página de login.
 
  * `/` `GET` Renderiza página inicial

### Rota de Importação de Filmes

    Descrição: Permite importar filmes para a aplicação.
    
  * `/movies/import`
    *   `/show/` `GET` Rederiza a importação de movies em massa `🔒implicit route`
    *   `/upload/` `POST` Ação CRIAR filmes em massa no banco de dados via JSON file `🔒implicit route`

### Rota de Importação de Filmes do Usuário

    Descrição: Permite importar filmes para a lista de filmes do usuário.
    
  * `/movies/import`
    *   `/show/` `GET` Rederiza a importação de relações user_movies em massa `🔒implicit route`
    *   `/upload/` `POST` Ação CRIAR user_movies em massa no banco de dados via JSON file `🔒implicit route`
<hr>

# 2. Directory structure OxeanFlix

* `./app` Application
  * `/assert`
    * `/images` OxeanFlix logo
  * `/controllers` Regras de negócio e controladores de acesso ao banco de dados Session, User, Movie and User_movie
  * `/models` Modelos Session, User, Movie and User_movie
  * `/views` Interface entre cliente-servidor
* `./bin` Binaries of rails scripts
* `./db` [D]ata[B]ase
  * `/migrate` Configurações essenciais de migração das tabelas a se implementar em banco de dados
* `./lib` Libraries
  * `/data` Path padrão para armazenamento de arquivos JSON utilizados no import em massa
* `./log` Armazenamento de logs dos servidores de profile development e tests
* `./spec` Path padrão da ferramenta de testes RSpec
  * `/models` Códigos para testes do modelo
  * `/routing` Códigos para testes de rota
* `./storage` Arquivos do banco de dados SQLite3
* `./tmp` Temporary files
* `Gemfile` Arquivo contendo as dependências de projeto
* `Dockerdile` Instruções para construção da imagem do projeto
* `README.MD` Description of project
<hr>

# 3. Fluxos do OxeanFlix

### Ao realizar o login o usuário terá acesso a cadastramento de um Movie ou de vários, neste ultimo importando por arquivo JSON.
<p align="center">
  <img src="https://github.com/robinsonmourao/fuzzy-octo-chainsaw-main/assets/49078615/52f6cca9-97a3-409e-a55e-04600d91983a" alt="Diagrama de fluxo"/>
</p>

# 4. Diagrama relacional OxeanFlix 

### Uma das principais características do projeto OceanFlix é a relação entre User e Movie, ilustrada na Figura abaixo:
<p align="center">
  <img src="https://github.com/robinsonmourao/fuzzy-octo-chainsaw-main/assets/49078615/40368693-0ab9-4b11-b98e-5af1b3abcad0" alt="Diagrama de relacionamentos"/>
</p>
