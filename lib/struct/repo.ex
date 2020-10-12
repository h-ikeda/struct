defmodule Struct.Repo do
  use Ecto.Repo,
    otp_app: :struct,
    adapter: Ecto.Adapters.Postgres
end
