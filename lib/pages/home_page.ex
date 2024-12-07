defmodule JoelKoch.Dev.HomePage do
  use Tableau.Page,
    layout: JoelKoch.Dev.RootLayout,
    permalink: "/"

  use Phoenix.Component
  import JoelKoch.Dev.Components

  def template(assigns) do
    ~H"""
    <main>
      <div class="cover center">
        <div class="grid" data-principal-element>
          <img
            src="/images/me.webp"
            alt="A picture of me, Joël Koch"
            width="256"
            height="256"
            class="radius"
          />
          <div class="flow">
            <h1>
              This is me, Joël
            </h1>
            <p>
              Happy to code for fun and a living.
            </p>
            <ol role="list" class="flow">
              <li>
                <a href="https://github.com/joelpaulkoch">
                  <svg
                    class="icon"
                    aria-hidden="true"
                    width="1.25em"
                    height="1.25em"
                    stroke="currentColor"
                    stroke-width="1"
                    viewBox="0 0 100 100"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      fill-rule="evenodd"
                      clip-rule="evenodd"
                      d="M48.854 0C21.839 0 0 22 0 49.217c0 21.756 13.993 40.172 33.405 46.69 2.427.49 3.316-1.059 3.316-2.362 0-1.141-.08-5.052-.08-9.127-13.59 2.934-16.42-5.867-16.42-5.867-2.184-5.704-5.42-7.17-5.42-7.17-4.448-3.015.324-3.015.324-3.015 4.934.326 7.523 5.052 7.523 5.052 4.367 7.496 11.404 5.378 14.235 4.074.404-3.178 1.699-5.378 3.074-6.6-10.839-1.141-22.243-5.378-22.243-24.283 0-5.378 1.94-9.778 5.014-13.2-.485-1.222-2.184-6.275.486-13.038 0 0 4.125-1.304 13.426 5.052a46.97 46.97 0 0 1 12.214-1.63c4.125 0 8.33.571 12.213 1.63 9.302-6.356 13.427-5.052 13.427-5.052 2.67 6.763.97 11.816.485 13.038 3.155 3.422 5.015 7.822 5.015 13.2 0 18.905-11.404 23.06-22.324 24.283 1.78 1.548 3.316 4.481 3.316 9.126 0 6.6-.08 11.897-.08 13.526 0 1.304.89 2.853 3.316 2.364 19.412-6.52 33.405-24.935 33.405-46.691C97.707 22 75.788 0 48.854 0z"
                      fill="currentColor"
                    />
                  </svg>
                  Checkout my GitHub profile
                </a>
              </li>
              <li>
                <a href="/resume">
                  <Heroicons.document_text
                    class="icon"
                    width="1.25em"
                    height="1.25em"
                    stroke="currentColor"
                    stroke-width="2"
                  /> ... or what I've done so far
                </a>
              </li>
            </ol>
          </div>
        </div>
        <a href="#content" class="center transitions rise" aria-label="Scroll down">
          <Heroicons.chevron_down
            class="icon | font-size:s4 accent-color"
            width="2.5em"
            height="2.5em"
          />
        </a>
      </div>
      <div id="content" class="box | background-highlight">
        <ul role="list" class="cluster">
          <li :for={content <- @data["external_content"]} :if={content["on_home"]}>
            <.card title={content["title"]} link={content["link"]}>
              <p>
                {content["summary"]}
              </p>
            </.card>
          </li>

          <li :for={page <- @pages} :if={page[:on_home]}>
            <.card title={page.title} link={page.permalink}>
              <p>
                {page.summary}
              </p>
            </.card>
          </li>

          <li :for={post <- @posts} :if={post[:on_home]}>
            <.card title={post.title} link={post.permalink}>
              <p>
                {post.summary}
              </p>
            </.card>
          </li>

          <li>
            <.card link="/content" link_text="Show more" />
          </li>
        </ul>
      </div>
    </main>
    <.footer class="wrapper" />
    """
  end
end
