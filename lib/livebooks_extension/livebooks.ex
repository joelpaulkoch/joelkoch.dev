defmodule JoelKoch.Dev.LivebooksExtension.Livebooks do
  @moduledoc false
  alias Tableau.Extension.Common
  alias JoelKoch.Dev.LivebooksExtension

  @config Map.new(Application.compile_env(:tableau, LivebooksExtension, %{}))

  def __tableau_type__, do: :pages

  def pages(opts \\ []) do
    opts
    |> livebooks()
    |> Enum.map(fn livebook ->
      %{
        type: :page,
        parent: livebook.layout,
        permalink: livebook.permalink,
        template: livebook.body,
        opts: livebook
      }
    end)
  end

  def livebooks(opts \\ []) do
    {:ok, config} =
      LivebooksExtension.Config.new(@config)

    opts = Keyword.put_new(opts, :html_converter, LivebooksExtension.Livebooks.HTMLConverter)

    config.dir
    |> Path.join("**/*.livemd")
    |> Common.paths()
    |> Common.entries(
      LivebooksExtension.Livebooks.Livebook,
      LivebooksExtension.Livebooks.Livebook,
      opts
    )
  end
end
