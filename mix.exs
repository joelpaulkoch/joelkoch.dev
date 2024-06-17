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
      build: ["tableau.build", "tailwind default --minify"]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:tableau, "~> 0.15"},
      {:tailwind, "~> 0.2", runtime: Mix.env() == :dev},
      {:tailwind_formatter, "~> 0.4", only: [:dev, :test], runtime: false},
      {:phoenix_live_view, "~> 0.20"},
      {:heroicons, "~> 0.5"}
    ]
  end
end
