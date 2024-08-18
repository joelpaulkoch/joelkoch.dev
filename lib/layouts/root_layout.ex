defmodule JoelKoch.Dev.RootLayout do
  use Tableau.Layout
  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <!DOCTYPE html>
    <html lang="en" class="scroll-smooth">
      <head>
        <meta charset="utf-8" />
        <meta http_equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />

        <title>
          <%= [@page[:title], "Joël Koch"]
          |> Enum.filter(& &1)
          |> Enum.intersperse("|")
          |> Enum.join(" ") %>
        </title>

        <link rel="stylesheet" href="/css/app.css" />
        <link rel="icon" type="image/svg+xml" href="/favicon.svg" />
        <link rel="icon" type="image/x-icon" href="/favicon.ico" />
      </head>

      <body class="min-h-dvh grid-rows-[1fr_auto] grid bg-white text-black antialiased dark:bg-neutral-800 dark:text-neutral-200">
        <main>
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
    <footer class="mx-auto flex w-full max-w-7xl flex-col-reverse items-center justify-center gap-4 border-t-2 border-solid border-neutral-800 py-4 transition hover:border-white sm:flex-row">
      <span class="p-2">
        © 2024 Joël Koch
      </span>
      <a
        href="https://github.com/elixir-tools/tableau"
        class="rounded-md p-2 underline ring-white transition hover:ring"
      >
        Built with Tableau
      </a>
    </footer>
    """
  end
end
