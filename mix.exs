defmodule Elixlsx.Mixfile do
  use Mix.Project

  def project do
    [app: :elixlsx,
     version: "0.0.1",
     elixir: "~> 1.1",
     package: package,
     description: "a writer for XLSX spreadsheet files",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     deps: deps]
  end

  def application do
    []
  end

  defp deps do
    [
      {:excheck, "~> 0.3", only: :test},
      {:triq, github: "krestenkrab/triq", only: :test},
      {:credo, "~> 0.1.9", only: [:dev, :test]}
    ]
  end

  defp package do
    [
      maintainers: [],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/xou/elixlsx"}
    ]
  end
end
