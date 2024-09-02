defmodule JoelKoch.Dev.PageLayout do
  use Tableau.Layout, layout: JoelKoch.Dev.RootLayout
  use Phoenix.Component
  import JoelKoch.Dev.Components

  def template(assigns) do
    ~H"""
    <div class="grid-rows-[auto_1fr_auto] grid h-full">
      <div class="flex flex-row justify-end p-4">
        <nav class="hidden flex-row justify-end gap-2 text-xl sm:flex">
          <a class="rounded-md p-2 underline ring-white transition hover:ring" href="/"> Home </a>
          <a class="rounded-md p-2 underline ring-white transition hover:ring" href="/livebooks">
            Livebooks
          </a>
          <a class="rounded-md p-2 underline ring-white transition hover:ring" href="/resume">
            Resume
          </a>
        </nav>
      </div>
      <div class="mx-auto max-w-7xl">
        <%= {:safe, render(@inner_content)} %>
      </div>
      <.footer />
    </div>
    """
  end
end
