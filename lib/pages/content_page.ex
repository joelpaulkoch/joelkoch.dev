defmodule JoelKoch.Dev.ContentPage do
  use Tableau.Page,
    layout: JoelKoch.Dev.PageLayout,
    permalink: "/content"

  use Phoenix.Component
  import JoelKoch.Dev.Components

  def template(assigns) do
    ~H"""
    <h1 id="articles">Articles</h1>
    <ul role="list" class="cluster">
      <li :for={page <- @pages} :if={page[:content]}>
        <.card title={page.title} link={page.permalink} class="background-highlight">
          <p>
            {page.summary}
          </p>
        </.card>
      </li>
    </ul>

    <h1 id="external-content">External Content</h1>
    <ul role="list" class="cluster">
      <li :for={content <- @data["external_content"]}>
        <.card title={content["title"]} link={content["link"]} class="background-highlight">
          <p>
            {content["summary"]}
          </p>
        </.card>
      </li>
    </ul>

    <h1 id="devlogs">Devlogs</h1>
    <ul role="list" class="cluster">
      <li :for={post <- @posts}>
        <.card title={post.title} link={post.permalink} class="background-highlight">
          <p>
            Devlog from {DateTime.to_date(post.date)}
          </p>
        </.card>
      </li>
    </ul>
    """
  end
end
