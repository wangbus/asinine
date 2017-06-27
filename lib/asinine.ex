defmodule Asinine do
  @moduledoc """
  Documentation for Asinine.
  """

  @doc """
  Parses ASIN from given URL

  ## Examples

      iex> Asinine.parse_asin("https://www.amazon.com/How-Travel-World-50-Day/dp/0399159673")
      "0399159673"

  """
  def parse_asin(url) do
    url_split = url |> String.split("/")
    url_split |> Enum.at(asin_index(url_split))
  end

  defp asin_index(url_split) do
    cond do
      Enum.member?(url_split, "dp") ->
        cond do
					url_split |> Enum.at(3) == "dp" -> 4
					url_split |> Enum.at(4) == "dp" -> 5
				end
      Enum.member?(url_split, "gp") ->
        cond do
          url_split |> Enum.at(4) == "product" -> 5
          url_split |> Enum.at(4) == "aw" -> 6
        end
      true -> 0
    end
  end
end

