defmodule JoelKoch.Dev.ContentPage do
  use Tableau.Page,
    layout: JoelKoch.Dev.PageLayout,
    permalink: "/content"

  use Phoenix.Component
  import JoelKoch.Dev.Components

  def template(assigns) do
    ~H"""
    <p>
      Here you'll find all my content. Images and summaries are AI generated, thoughts are not.
    </p>
    <h1 id="articles">Articles</h1>
    <ul role="list" class="cluster">
      <li :for={page <- @pages} :if={page[:content]}>
        <.card>
          <img :if={page[:image]} src={page.image} alt="" width="256" height="256" />
          <h2>{page.title}</h2>
          <p>
            {page.summary}
          </p>
          <a href={page.permalink}> Read more </a>
        </.card>
      </li>
    </ul>

    <h1 id="external-content">External Content</h1>
    <ul role="list" class="cluster">
      <li :for={content <- @data["external_content"]}>
        <.card>
          <img src={content["image"]} alt="" width="256" height="256" />
          <h2>{content["title"]}</h2>
          <p>
            {content["summary"]}
          </p>
          <a href={content["link"]}> Read more </a>
        </.card>
      </li>
    </ul>

    <h1 id="devlogs">Devlogs</h1>
    <ul role="list" class="cluster">
      <li :for={post <- @posts} class="transitions zoom">
        <.card>
          <img :if={post[:image]} src={post.image} alt="" width="256" height="256" />
          <h2>{post.title}</h2>
          <p>
            {post.summary}
          </p>
          <p>
            Devlog from {DateTime.to_date(post.date)}
          </p>
        </.card>
      </li>
    </ul>
    """
  end
end
