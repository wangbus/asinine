defmodule AsinineTest do
  use ExUnit.Case
  doctest Asinine

  test "Parse ASIN for */dp/* URL" do
    url = "https://www.amazon.com/How-Travel-World-50-Day/dp/0399159673"
    assert Asinine.parse_asin(url) == "0399159673"
    url = "https://www.amazon.com/dp/B002361MLA/"
    assert Asinine.parse_asin(url) == "B002361MLA"
  end

  test "Parse ASIN for */gp/aw/d/* URL" do
    url = "https://www.amazon.com/gp/aw/d/1101981873/"
    assert Asinine.parse_asin(url) == "1101981873"
  end

  test "Parse ASIN for */gp/* URL" do
    url = "https://www.amazon.com/gp/product/B0096T5P7O/"
    assert Asinine.parse_asin(url) == "B0096T5P7O"
    url = "https://www.amazon.com/gp/product/B008YNLXW4"
    assert Asinine.parse_asin(url) == "B008YNLXW4"
  end
end
