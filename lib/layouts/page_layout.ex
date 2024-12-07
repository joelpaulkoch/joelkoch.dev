defmodule JoelKoch.Dev.PageLayout do
  use Tableau.Layout, layout: JoelKoch.Dev.RootLayout
  use Phoenix.Component
  import JoelKoch.Dev.Components

  def template(assigns) do
    ~H"""
    <div class="header-main-footer">
      <.header />
      <main class="flow wrapper">
        {{:safe, render(@inner_content)}}
      </main>
      <.footer class="wrapper" />
    </div>
    """
  end
end
