# BasicCrud

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix

## Quick start

> https://www.wbotelhos.com/crud-in-5-minutes-with-phoenix-and-elixir

- create Phoenix App
```shell
mix phx.new basic_crud
cd basic_crud
```
- Initialize front
```sh=
cd assets
yarn install
cd ..
```
- Dockerize a PostGre DB
```sh=
echo "version: \"3.8\"

services:
  database:
    environment:
      POSTGRES_HOST_AUTH_METHOD: trust

    image: postgres:14-alpine

    ports:
      - 5432:5432
" >> docker-compose.yml

docker-compose up -d
```
- Install dependencies with `mix deps.get`
- Create and migrate your database with `mix ecto.setup`
- Create a *Users* controller, *User* model and *users* table with the following fields
  - *username* as string
  - *password* as string
  - *admin* as boolean
```
mix phx.gen.html Users User users username:string password:string admin:boolean
```
- Add `/users` to the routes in `lib/basic_crud_web/router.ex` (I use Sublime Text so : `subl lib/basic_crud_web/router.ex`) :
```exs
scope "/", BasicCrudWeb do
  ...
  resources "/persons", PersonController
end
```
- Migrate models `mix ecto.migrate`
- Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`


## Add tailwind to Phoenix project 

> https://pragmaticstudio.com/tutorials/adding-tailwind-css-to-phoenix

```sh=
cd assets
yarn add tailwindcss postcss autoprefixer --save-dev
cd -
```

Tailwind for phoenix 
```sh=
cd assets
npx tailwindcss init
```