# OxeanFlix

Ruby on rails solution that provides saving movies data and importing by batch processing.

## 🛠 Tech Stack

To make this project run you will need to have the following items installed: 

* Ruby 3.1.4p223
* Rails 7.1.3.2
* SQLite 3.22.0
* Rspec 3.13

## :rocket: Get ready

### Clone the repository:

```
git clone https://github.com/robinsonmourao/fuzzy-octo-chainsaw-main.git
```
### Execute the command of Ruby programming language installer:
```
sudo apt-get install ruby-full
```
### Execute the following comands:

```
bundle install
```
```
rails db:migrate
```
```
rails db:seed
```
### Execute command to install SQLite

```
sudo apt-get install sqlite3
```

## :arrow_forward: Running

### Change directory to where you have cloned OxeanFlix project

> cd /your-root-directory/.../your-project-folder-name-here <br>

### Execute start rails application command:

```
rails s
```

### Access OxeanFlixAPI, you will access the following address

[http://localhost:3000/](http://localhost:3000/)


## :gear: Running tests

### Execute RSpec install commands:

On Windows, add this command on ./gemfile:
```
gem 'rspec-rails'
````
or on Linux:
```
echo "gem 'rspec-rails'" >> Gemfile
```
```
gem install rspec
```
```
gem install bundler
```
```
bundle update rspec-rails
```

### How about Database?

Well, you can access the SQLite3 database just get in ./storage folder then insert this following command:
```
sqlite3 development.sqlite3
```
## :closed_book:Documentation

The main specification of OxeanFlixAPI can be obtained at [https://github.com/robinsonmourao/fuzzy-octo-chainsaw-main/blob/master/SPECIFICATION.md](https://github.com/robinsonmourao/fuzzy-octo-chainsaw-main/blob/master/SPECIFICATION.md).

* Get more information about [Ruby](https://www.ruby-lang.org/en/documentation/)<br>
* Get more information about [Ruby on Rails](https://rubyonrails.org/)<br>
* Get more information about [SQLite3](https://www.sqlite.org/docs.html)<br>
* Get more information about [RSpec](https://rspec.info/documentation/)

## 👩‍💻👨‍💻 Contributors 

<table>
    <td align="center">
	    <a href="https://github.com/Marinofull">
		    <img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/u/4636436?v=4" width="100px;" alt=""/>
		    <br/><sub><b>Marino Hohenheim</b></sub>
		</a>
    </td>
    <td align="center">
	    <a href="https://github.com/robinsonmourao">
		    <img style="border-radius: 50%;" src="https://avatars.githubusercontent.com/u/49078615?s=460&u=1163c04d9f35b577063b3f6550ae520c4dd2f866&v=4" width="100px;" alt=""/>
		    <br/><sub><b>Robinson Mourão</b></sub>
		</a></br>
    </td>
</table>

## :mailbox: Contact us
* Contact us by email [Marino Hohenheim](mailto:intmarinoreturn0@gmail.com)
* Contact us by email [Robinson Mourão](mailto:bob.info.guaratiba@gmail.com)
---
