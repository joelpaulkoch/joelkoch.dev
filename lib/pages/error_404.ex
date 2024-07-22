defmodule JoelKoch.Dev.Error404 do
  use Tableau.Page,
    layout: JoelKoch.Dev.PageLayout,
    permalink: "/404.html"

  use Phoenix.Component

  def template(assigns) do
    ~H"""
    This page does not exist
    """
  end
end
