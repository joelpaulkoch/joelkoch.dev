defmodule JoelKoch.Dev.PageLayout do
  use Tableau.Layout, layout: JoelKoch.Dev.RootLayout
  use Phoenix.Component
  import JoelKoch.Dev.Components

  def template(assigns) do
    ~H"""
    <div class="grid-rows-[auto_1fr_auto] min-h-dvh grid gap-4">
      <.nav_bar />
      <main class="prose prose-neutral mx-auto max-w-7xl p-4 dark:prose-invert">
        <%= {:safe, render(@inner_content)} %>
      </main>
      <.footer />
    </div>
    """
  end
end
