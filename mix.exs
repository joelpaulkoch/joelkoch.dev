defmodule JoelKoch.Dev.MixProject do
  use Mix.Project

  def project do
    [
      app: :joelkoch_dev,
      version: "0.1.0",
      elixir: "~> 1.15",
      start_permanent: Mix.env() == :prod,
      compilers: Mix.compilers(),
      deps: deps(),
      aliases: aliases()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  def aliases() do
    [
      build: ["tableau.build", "lightning_css default"]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:tableau, "~> 0.20"},
      {:lightning_css, "~> 0.5"},
      {:phoenix_live_view, "~> 1.0"},
      {:heroicons, "~> 0.5"}
    ]
  end
end
