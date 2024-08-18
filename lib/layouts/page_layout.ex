defmodule JoelKoch.Dev.PageLayout do
  use Tableau.Layout, layout: JoelKoch.Dev.RootLayout
  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <div class="grid-rows-[auto_1fr] grid h-full">
      <div>
        <nav class="flex flex-row sm:hidden">
          <a href="/"> Home </a>
          <a href="/livebooks"> Livebooks </a>
        </nav>
      </div>
      <div class="mx-auto max-w-7xl">
        <%= {:safe, render(@inner_content)} %>
      </div>
    </div>
    """
  end
end
