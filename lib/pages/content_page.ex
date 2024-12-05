defmodule JoelKoch.Dev.ContentPage do
  use Tableau.Page,
    layout: JoelKoch.Dev.PageLayout,
    permalink: "/content"

  use Phoenix.Component
  import JoelKoch.Dev.Components

  def template(assigns) do
    ~H"""
    <ul role="list" class="cluster">
      <li>
        <.card
          title="How to use Jina embeddings in Elixir with Bumblebee"
          link="https://bitcrowd.dev/how-to-run-jina-embeddings-in-elixir/"
          class="background-highlight"
        >
          <p>
            This is me, writing about how to take an existing Python ML model and implement it in Elixir.
          </p>
        </.card>
      </li>
    </ul>
    """
  end
end
