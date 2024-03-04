# 1. OxeanFlix Routes

## Default routes

### User Routes

    Allows to create users

* `/users`
  * `/new/` `GET` Render a form to fill a user data `🔒implicit route`
  * `/create/` `POST` Action of create a new user in database `🔒implicit route`

### Session routes

    Manages user authentication
    
* `/sessions/`
  * `/new/` `GET` Render a form to fill Sessions data`🔒implicit route`
  * `/create/` `POST` Allows CREATE a Session in database`🔒implicit route`
  * `/destroy/` `DELETE` Action of DELETE a Session previously created in the database`🔒implicit route`

### Movie routes

    Manages Movies operations

* `/movies/`
  * `/index/` `GET` Render the index page of movies `🔒implicit route`
  * `/new/` `GET` Render a form to fill data movie
  * `/create/` `POST` Action of CREATE A Movie in the database `🔒implicit route`

### User_movies routes

    Manages the relation between of User and Movie

* `/user_movies/`
  * `/index/` `GET` Render the index page of User-movie `🔒implicit route`
  * `/new/` `GET` Render a form to fill data of a relation between User and Movie
  * `/update/` `PUT` Action of UPDATE a User-Movie relation in the database `🔒implicit route`

## Customizated routes

### Login route

    Login page to User

  * `/login` `GET` Render login page

### Logout route

    Logout page to finish session

  * `/logout` `DELETE` fnishes Session then render homepage of application

### Homepage route

     Homepage's application
 
  * `/` `GET` Render homepage

### Movies import route

    Allows import movies
    
  * `/movies/import`
    *   `/show/` `GET` Render a page to select a JSON file to import a lot of movies by batch processing`🔒implicit route`
    *   `/upload/` `POST` Action CREATE plenty of Movies sending it by JSON file to database `🔒implicit route`

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
  * `/controllers` Business rules and access controllers of Session, User, Movie and User_movie to database
  * `/models` Models Session, User, Movie and User_movie
  * `/views` Interface between cliente-servidor
* `./bin` Binaries of rails scripts
* `./db` [D]ata[B]ase
  * `/migrate` Essentials migrations configurations of the tables to set database
* `./lib` Libraries
  * `/data` Default path to import plenty of movies by JSON file payload
* `./log` Keeps server logs from development and tests profile
* `./spec` Default path to testing tool RSpec
  * `/models` Testing code of models testing
  * `/routing` Testing code of routes testing
* `./storage` Files from SQLite3 database
* `./tmp` Temporary files
* `Gemfile` Dependencies
* `Dockerdile` Configurations to build a projeto docker image
* `README.MD` Description of project
<hr>

# 3. Fluxos do OxeanFlix

### A logued user could access one or many Movies by batching processing.
<p align="center">
  <img src="https://github.com/robinsonmourao/fuzzy-octo-chainsaw-main/assets/49078615/52f6cca9-97a3-409e-a55e-04600d91983a" alt="Flux diagram"/>
</p>

# 4. OxeanFlix relational diagram

### One of the most characteristics of OxeanFlix is the relation between User e Movie, showing by the following picture:
<p align="center">
  <img src="https://github.com/robinsonmourao/fuzzy-octo-chainsaw-main/assets/49078615/40368693-0ab9-4b11-b98e-5af1b3abcad0" alt="Relational diagram"/>
</p>
