defmodule JoelKoch.Dev.PageLayout do
  use Tableau.Layout, layout: JoelKoch.Dev.RootLayout
  use Phoenix.Component
  import JoelKoch.Dev.Components

  def template(assigns) do
    ~H"""
    <div class="grid-rows-[auto_1fr_auto] grid h-full">
      <.nav_bar />
      <div class="mx-auto max-w-7xl">
        <%= {:safe, render(@inner_content)} %>
      </div>
      <.footer />
    </div>
    """
  end
end
