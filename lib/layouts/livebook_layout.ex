defmodule JoelKoch.Dev.LivebookLayout do
  use Tableau.Layout, layout: JoelKoch.Dev.RootLayout
  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <div class="flex">
      <a href="https://github.com/joelpaulkoch/joelkoch.dev/discussions">
        <Heroicons.chat_bubble_left_right class="min-h-16" />
      </a>
      <a href="https://github.com/joelpaulkoch/joelkoch.dev/blob/main/_livebooks/flax_to_axon_automate.livemd">
        <img src="/github-mark-white.svg" />
      </a>
    </div>
    <article>
      <%= {:safe, render(@inner_content)} %>
    </article>
    """
  end
end
