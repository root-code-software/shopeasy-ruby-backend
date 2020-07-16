# ShopEasy Ruby Backend

<!-- PROJECT SHIELDS -->
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues-open][issues-open-shield]][issues-url]
[![Issues-closed][issues-closed-shield]][issues-url]
[![Contributors][contributors-shield]][contributors-url]
[![contributions welcome][contributions-welcome]][issues-url]

<!-- PROJECT LOGO -->
<br/>
<p align="center">
  <a href="https://github.com/Israel-Laguan/shopeasy-ruby-backend/">
    <img src="docs/shopeasy-md.png"/>
  </a>

  <h2 align="center">
	Server made in Rails for an E-Commerce basic solution
  </h2>
  <p align="center">
    <br/>
    <a href="https://github.com/Israel-Laguan/shopeasy-ruby-backend/issues">Report a Bug</a>
    🙋‍♂️
    <a href="https://github.com/Israel-Laguan/shopeasy-ruby-backend/issues">Request Feature</a>
  </p>
</p>

## [Live Version Here](https://shopeasy-ruby-backend.herokuapp.com/items)

## Table of Contents

- [ShopEasy Ruby Backend](#shopeasy-ruby-backend)
  - [Live Version Here](#live-version-here)
  - [Table of Contents](#table-of-contents)
  - [The Project](#the-project)
  - [Built With](#built-with)
  - [Features](#features)
  - [Run It](#run-it)
    - [Prerequisites](#prerequisites)
    - [Setup](#setup)
    - [Database creation](#database-creation)
    - [Run it](#run-it-1)
  - [Test suite](#test-suite)
  - [Potential Features](#potential-features)
  - [Models created](#models-created)
  - [FAQ](#faq)
  - [Author](#author)
  - [Contributing](#contributing)
  - [Show your support](#show-your-support)
  - [License](#license)

## The Project

Provides a base for a E-commerce backend, with Items to display and Payments to log. It should provides the frontend with enought data to be functional.

This project have as a primary function to provide a base for a demostration on how to detect a credit card issuer/network. Later I can re use it by adding features, for example the ones describes later.

Card type detection using regex for a credit card form component. As managing money for programmers is important, we have to make sure things like card issuer are as the user says; also we have to take care of the looks.

This projects shows how to check in a Rails controller's method for the Network issuing certain cards based on the [Issuer identification number (IIN)](https://en.wikipedia.org/wiki/Payment_card_number). This way we take care of security issues validating server-side the card number.

Based on [this gist](https://gist.github.com/andreamiranda019/8f768ce78ae6a1095d7c42218c168c34)

## Built With

- ruby v2.7.x
- rails v6.0.x
- `rbenv` v1.1.x
- vscode with Ruby and Rubocop extensions
- Linux MX (Debian 10/XFCE)
- Love and Passion for code.

## Features

![ruby][]
[![Framework][badge-framework]][framework-url]
![postgres][]
![heroku][]

- Using Rails 6.x
- No views, only API
- Using postgres databases for development and production (postgres)
- Uses migrations and seed
- Associates several tables on the database using foreign keys

## Run It

This project was bootstrapped with Ruby on Rails. So is already setup to be wasily developed and run.

### Prerequisites

You will need Ruby on Rails version 6.0 or greater installed on your system.

### Setup

Get the code by either cloning this repository using git

```bash
git clone git@github.com:Israel-Laguan/shopeasy-ruby-backend.git
```

... or [downloading source code](git@github.com:Israel-Laguan/shopeasy-ruby-backend.git/archive/master.zip) as a zip archive.

Once downloaded, open the terminal in the project directory, and install dependencies with:

```bash
bundle
```

### Database creation

Provide a `.env` file the keys ``

```sh
rails db:reset && rails db:reset RAILS_ENV=test && rails db:migrate && \
rails db:migrate RAILS_ENV=test
```

Run tests with `bundle exec rspec`
Run `rails db:seed` to generate seed data.

### Run it

Then start the app with:

```bash
rails s
```

The app should now be up and running at http://localhost:3000 🚀

If for some reason you have a server running in that same port just change the port with rails server -p XXXX, where XXXX is any number greater than 1024 (below that we have permission troubles). For example 3001 could work.

## Test suite

To run the tests that verify the proper behavior of the Rails app, run the following command. There are about 119 passing specs, this should make you stop worrying about a malfunction in the app.

`rspec`

## Potential Features

- [ ] Add Swagger
- [ ] Add User Auth with Devise and OnmiAuth
- [ ] Improves Active Record's Queries
- [ ] Add more tests

## Models created

- Items
- Payments

## FAQ

- How to migrate or Seed my Heroku's Postgres DB?

> You must use Heroku CLI ([more info here](https://help.heroku.com/63D7ALXT/why-am-i-seeing-user-does-not-have-connect-privilege-error-with-heroku-postgres-on-review-apps)). Try these commands:

```sh
heroku run rails db:migrate
heroku run rails db:seed
```

- My Postgres gem (`pg`) don't compile 😢

> You must install system dependencies for Postgres. In Debian try this:

```sh
sudo apt update
sudo apt-get install zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev libffi-dev postgresql-client-common postgresql-client libpq-dev
```

## Author

<table style="width:100%">
  <tr>
    <td>
        <div align="center">
            <a href="./docs/img/photo.png" target="_blank" rel="author">
                <img src="https://avatars2.githubusercontent.com/u/36519478?s=460&v=4" style="border-radius: 10%; min-width: 100px;" alt="Israel Laguan's Photo" width="200px">
            </a>
            <h2>
                <a href="https://israel-laguan.github.io/" target="_blank" rel="author">
                    Israel Laguan
                </a>
            </h2>
        </div>
    </td>
    <td>
        <div align="center">
            <a href="mailto:israellaguan@gmail.com" target="_blank" rel="author">
                <img src="https://img.icons8.com/color/48/000000/message-squared.png" style="border-radius: 10%" alt="My GitHub" height="45px">
                <h3>
                    Email me to 
                    <a href="mailto:israellaguan@gmail.com">
                        israellaguan@gmail.com
                    </a>
                </h3>
            </a>
            <a href="https://www.linkedin.com/in/israellaguan/" target="_blank" rel="author">
                <img src="https://img.icons8.com/color/48/000000/linkedin.png" alt="My Linkedin" height="45px">
                <h3>
                    Connect to my Linkedin
                </h3>
            </a>
            <a href="https://github.com/Israel-Laguan" target="_blank" rel="author">
                <img src="https://img.icons8.com/color/48/000000/github--v1.png" 
			style="border-radius: 10%" alt="My GitHub" height="45px"
		>
                <h3>
                    Check my GitHub Profile
                </h3>
            </a>
        </div>
    </td>
  </tr>
</table>

## Contributing

[![contributions welcome][contributions-welcome]][issues-url]

🤝 Contributions, issues and feature requests are welcome!
Feel free to check the [issues page][issues-url].

## Show your support

🤗 Give a ⭐️ if you like this project!

Regexs: Adapted form [here](https://www.w3resource.com/javascript/form/credit-card-validation.php)

## License

[![License][badge-apache]][apache-license]

📝 This project is licensed under the [Apache 2](LICENSE)\
Feel free to fork this project and improve it

<!-- MARKDOWN LINKS & IMAGES -->
[contributors-shield]: https://img.shields.io/github/contributors/Israel-Laguan/shopeasy-ruby-backend?style=for-the-badge
[contributors-url]: https://github.com/Israel-Laguan/shopeasy-ruby-backend/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/Israel-Laguan/shopeasy-ruby-backend?style=for-the-badge
[forks-url]: https://github.com/Israel-Laguan/shopeasy-ruby-backend/network/members
[stars-shield]: https://img.shields.io/github/stars/Israel-Laguan/shopeasy-ruby-backend?style=for-the-badge
[stars-url]: https://github.com/Israel-Laguan/shopeasy-ruby-backend/stargazers
[issues-open-shield]: https://img.shields.io/github/issues/Israel-Laguan/shopeasy-ruby-backend?style=for-the-badge
[issues-url]: https://github.com/Israel-Laguan/shopeasy-ruby-backend/issues
[issues-closed-shield]: https://img.shields.io/github/issues-closed/Israel-Laguan/shopeasy-ruby-backend?style=for-the-badge
[badge-framework]: https://img.shields.io/badge/Framework-Rails-CC0000?style=for-the-badge&logo=rails
[framework-url]: https://rubyonrails.org/
[contributions-welcome]: https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=for-the-badge
[badge-apache]: https://img.shields.io/badge/License-Apache%202.0-blue.svg?style=for-the-badge
[apache-license]: https://opensource.org/licenses/Apache-2.0
[heroku]: https://img.shields.io/badge/Hosting-heroku-430098?style=for-the-badge&logo=heroku
[postgres]: https://img.shields.io/badge/database-postgreSQL-47A248?style=for-the-badge&logo=postgresql
[ruby]: https://img.shields.io/badge/ruby-V2.7.x-CC342D?style=for-the-badge&logo=ruby
