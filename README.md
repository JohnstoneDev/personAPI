# personAPI

## Introduction

This is a `CRUD` [Ruby on Rails](https://rubyonrails.org/) API that communicates with a [PostgreSQL](https://www.postgresql.org/) database with a single user table.

The project was created with Rails v 7.0.8 in [API mode](https://guides.rubyonrails.org/api_app.html)

The Live API is hosted on [Render](https://render.com/)

## Dependencies

The main dependencies of the application are

    Rails v7.0.8
    Ruby v3.1.2
    postgres gem installed on your machine
## Database Models

The Database only contains one users table

#### Validations

    For a user to be created, they have to have a username & email.
    The username must be unique with a minimum length of 8 characters.
    The email must be in the correct format eg: (user@mail.com).

## Endpoints

  `get '/api'` , will displays all the users in the database.

  `post '/api'` , will create a user in the database.

  `get '/api/:user_id'`, will fetch a user with `user_id` from the database.

  `patch '/api/:user_id'`, will update user information in the database.

  `delete '/api/:user_id'`, will delete user information in the database.

## Testing the Endpoints

To test the API, you should use [Postman](https://www.postman.com/) or the [Postman VS Code Extension](https://blog.postman.com/introducing-the-postman-vs-code-extension/).

For more technical testing, you can use the `rails console` in a terminal / the intergrated VS Code terminal.

To start the console :

    rails c
or

    bundle exec rails c

## Running the Project locally

To run the project locally:

  clone the project on your machine

    git clone git@github.com:JohnstoneDev/personAPI.git

  install the dependencies

    bundle install

  perform database migrations

    rails db:migrate db:seed

  start the server

    rails s
  or

    bundle exec rails s

This will start a server on your machine on `localhost:3000`
## Deploying the Project

To Deploy the project, you need to fork it first, this can be done from the github website or using the [github cli](https://cli.github.com).

This will create a copy of the project in your Github Account.

You should choose a `SAAS`  provider, I recommend one of these; [Railway](https://railway.app) or [Render](https:///render.com).

Each provider has it's own method for deployment, bust most importanly, you should take into note how to `provision a PostgreSQL Database`.

This is necessary because Rails uses, `sqlite3` as the default database in test and development environments. In a production environment,  **`you NEED / MUST  provision a PostgreSQL Database`**

The settings for this can be find in [Database Config File](./config/database.yml)




