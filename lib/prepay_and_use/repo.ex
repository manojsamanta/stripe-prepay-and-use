defmodule PrepayAndUse.Repo do
  use Ecto.Repo,
    otp_app: :prepay_and_use,
    adapter: Ecto.Adapters.Postgres
end
