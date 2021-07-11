defmodule ProjectMis.Repo do
  use Ecto.Repo,
    otp_app: :project_mis,
    adapter: Ecto.Adapters.Postgres
end
