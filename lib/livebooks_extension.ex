defmodule JoelKoch.Dev.LivebooksExtension do
  use Tableau.Extension, key: :livebooks, type: :pre_build, priority: 100

  def run(token) do
    token = put_in(token.livebooks, JoelKoch.Dev.LivebooksExtension.Livebooks.livebooks())
    {:ok, token}
  end
end
