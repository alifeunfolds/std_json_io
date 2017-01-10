defmodule StdJsonIo.Mixfile do
  use Mix.Project

  def project do
    [app: :std_json_io,
     version: "0.1.0",
     elixir: "~> 1.3",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger, :porcelain]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:porcelain, "~> 2.0"},
      {:poolboy, "~> 1.5.1"},
      {:poison, "~> 2.2.0"},
      {:fs, "~> 0.9.1"},
    ]
  end
end
