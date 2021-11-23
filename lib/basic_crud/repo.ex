defmodule BasicCrud.Repo do
  use Ecto.Repo,
    otp_app: :basic_crud,
    adapter: Ecto.Adapters.Postgres
end
