defmodule JoelKoch.Dev.LivebooksExtension do
  use Tableau.Extension, key: :livebooks, type: :pre_build, priority: 100

  @config Map.new(Application.compile_env(:tableau, __MODULE__, %{}))
  # def __tableau_type__, do: :livebooks

  def run(token) do
    token = put_in(token.livebooks, livebooks())
    {:ok, token}
  end

  def livebooks() do
    # {:ok, config} = JoelKoch.Dev.Config.new(@config)

    # config.dir
    livebooks =
      "_livebooks"
      |> Path.join("**/*.livemd")
      |> Path.wildcard()

    for livebook <- livebooks do
      content =
        livebook
        |> File.read!()
        |> Tableau.markdown()

      lb = %{
        type: :livebook,
        parent: JoelKoch.Dev.LivebookLayout,
        permalink: "/livebooks/#{Path.basename(livebook, ".livemd")}",
        content: content
      }

      dir = Path.join("_site", lb.permalink)
      File.mkdir_p!(dir)

      File.write!(Path.join(dir, "index.html"), lb.content)
    end
  end
end

defmodule JoelKoch.Dev.LivebooksExtension.Config do
  def new(conf), do: {:ok, conf}
end
