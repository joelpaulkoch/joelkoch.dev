defmodule JoelKoch.Dev.PageLayout do
  use Tableau.Layout, layout: JoelKoch.Dev.RootLayout
  use Phoenix.Component
  import JoelKoch.Dev.Components

  def template(assigns) do
    ~H"""
    <div class="header-main-footer wrapper">
      <.header />
      <main class="flow">
        {{:safe, render(@inner_content)}}
      </main>
      <.footer />
    </div>
    """
  end
end
