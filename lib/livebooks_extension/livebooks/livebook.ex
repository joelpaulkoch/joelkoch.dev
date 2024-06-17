defmodule JoelKoch.Dev.LivebooksExtension.Livebooks.Livebook do
  @moduledoc false

  alias JoelKoch.Dev.LivebooksExtension

  def build(filename, attrs, body) do
    {:ok, livebook_config} =
      LivebooksExtension.Config.new(
        Map.new(Application.get_env(:tableau, LivebooksExtension, %{}))
      )

    Application.put_env(:date_time_parser, :include_zones_from, ~N[2010-01-01T00:00:00])

    attrs
    |> Map.put(:__tableau_livebook_extension__, true)
    |> Map.put(:body, body)
    |> Map.put(:file, filename)
    |> Map.put(:layout, Module.concat([attrs[:layout] || livebook_config.layout]))
    |> Map.put_new_lazy(:title, fn ->
      with {:ok, document} <- Floki.parse_fragment(body),
           [hd | _] <- Floki.find(document, "h1") do
        Floki.text(hd)
      else
        _ -> nil
      end
    end)
    |> build_permalink(livebook_config)
  end

  def parse(_filepath, content) do
    {%{}, content}
  end

  defp build_permalink(%{permalink: permalink} = attrs, _config) do
    permalink
    |> transform_permalink(attrs)
    |> then(&Map.put(attrs, :permalink, &1))
  end

  defp build_permalink(attrs, %{permalink: permalink}) when not is_nil(permalink) do
    permalink
    |> transform_permalink(attrs)
    |> then(&Map.put(attrs, :permalink, &1))
  end

  defp build_permalink(%{file: filename} = attrs, _) do
    filename
    |> Path.rootname()
    |> transform_permalink(attrs)
    |> then(&Map.put(attrs, :permalink, &1))
  end

  defp transform_permalink(path, attrs) do
    vars =
      attrs
      |> Map.new(fn {k, v} -> {":#{k}", v} end)

    path
    |> String.replace(Map.keys(vars), &to_string(Map.fetch!(vars, &1)))
    |> String.trim_leading("_")
    |> String.replace(" ", "-")
    |> String.replace("_", "-")
    |> String.replace(~r/[^[:alnum:]\/\-.]/, "")
    |> String.downcase()
    |> URI.encode()
  end
end
