defmodule JoelKoch.Dev.HomePage do
  use Tableau.Page,
    layout: JoelKoch.Dev.RootLayout,
    permalink: "/"

  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <p class="">
      hello, world!
    </p>
    """
  end
end
