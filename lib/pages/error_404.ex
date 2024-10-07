defmodule JoelKoch.Dev.Error404 do
  use Tableau.Page,
    layout: JoelKoch.Dev.PageLayout,
    permalink: "/404"

  use Phoenix.Component
  import JoelKoch.Dev.Components

  def template(assigns) do
    ~H"""
    <div class="text-pretty grid h-full place-content-center px-4 text-center text-2xl">
      <p>
        This page does not exist.
      </p>

      <.ringlink link="/">Go back to home.</.ringlink>
    </div>
    """
  end
end
