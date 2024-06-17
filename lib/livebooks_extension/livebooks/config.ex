defmodule JoelKoch.Dev.LivebooksExtension.Config do
  @moduledoc false

  import Schematic

  defstruct enabled: true,
            dir: "_livebooks",
            permalink: nil,
            layout: nil,
            livebooks_root: nil,
            discussions_url: nil

  def new(input), do: unify(schematic(), input)

  def schematic do
    schema(
      __MODULE__,
      %{
        optional(:enabled) => bool(),
        optional(:dir) => str(),
        optional(:permalink) => str(),
        optional(:layout) => str(),
        optional(:livebooks_root) => str(),
        optional(:discussions_url) => str()
      },
      convert: false
    )
  end
end
