defmodule Asinine.Mixfile do
  use Mix.Project

  def project do
    [
      app: :asinine,
      version: "0.1.0",
      elixir: "~> 1.4",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env == :prod,
      description: description(),
      package: package(),
      deps: deps(),
      name: "Asinine",
      source_url: "https://github.com/wangbus/asinine"
    ]
  end

  def application do
    [extra_applications: [:logger]]
  end

  defp deps do
    [
      {:ex_doc, ">= 0.0.0", only: :dev}
    ]
  end

  defp description do
    """
    _The Amazon Standard Identification Number (ASIN) is a 10-character alphanumeric unique identifier assigned by Amazon.com and its partners for product identification within the Amazon organization._

    Asinine is an ASIN parser for Amazon product URLs.
    """
  end

  defp package do
    [
      name: :asinine,
      files: ["lib", "mix.exs", "README*"],
      maintainers: ["James Wang"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/wangbus/asinine"}
    ]
  end
end
