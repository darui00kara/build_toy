defmodule BuildToyTest do
  use ExUnit.Case
  doctest BuildToy

  test "greets the world" do
    assert BuildToy.hello() == :world
  end
end
