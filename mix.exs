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
      extra_applications: [:logger]
    ]
  end

  defp deps do
    [
      {:ecto_sql, "~> 3.5.1"},
      {:postgrex, "~> 0.15.7"}
    ]
  end
end
