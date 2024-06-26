defmodule JoelKoch.Dev.RootLayout do
  use Tableau.Layout
  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <!DOCTYPE html>
    <html lang="en">
      <head>
        <meta charset="utf-8" />
        <meta http_equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <title>
          <%= [@page[:title], JoelKoch.Dev]
          |> Enum.filter(& &1)
          |> Enum.intersperse("|")
          |> Enum.join(" ") %>
        </title>

        <link rel="stylesheet" href="/css/app.css" />
        <link rel="icon" type="image/svg+xml" href="/favicon.svg" />
        <link rel="icon" type="image/x-icon" href="/favicon.ico" />
      </head>

      <body class="min-h-dvh flex flex-col bg-white text-black antialiased dark:bg-neutral-800 dark:text-neutral-200">
        <main class="grow">
          <%= render(@inner_content) %>
        </main>
        <.footer />
      </body>

      <%= if Mix.env() == :dev do %>
        <%= Phoenix.HTML.raw(Tableau.live_reload(assigns)) %>
      <% end %>
    </html>
    """
    |> Phoenix.HTML.Safe.to_iodata()
  end

  def footer(assigns) do
    ~H"""
    <div class="mx-16">
      <footer class="mx-auto mt-16 flex w-full max-w-7xl shrink-0 flex-col-reverse items-center justify-center gap-4 border-t-2 border-solid border-neutral-800 py-8 transition hover:border-white sm:flex-row">
        <p class="">
          © 2024 Joel Koch
        </p>
        <nav>
          <a href="/test" class="rounded-md p-2 ring-white transition hover:ring">
            Nav somewhere
          </a>
        </nav>
        <nav>
          <a href="/test" class="rounded-md p-2 ring-white transition hover:ring">
            Nav somewhere
          </a>
        </nav>
        <nav>
          <a href="/test" class="rounded-md p-2 ring-white transition hover:ring">
            Nav somewhere
          </a>
        </nav>
        <p class="">
          Made with Tableau
        </p>
      </footer>
    </div>
    """
  end
end
