defmodule PollerDal.MixProject do
  use Mix.Project

  def project do
    [
      app: :poller_dal,
      version: "0.1.0",
      elixir: "~> 1.11",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  def application do
    [
      mod: {PollerDal, []},
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ecto_sql, "~> 3.5.1"},
      {:postgrex, "~> 0.15.7"},
      {:argon2_elixir, "~> 2.3.0"}
    ]
  end
end
