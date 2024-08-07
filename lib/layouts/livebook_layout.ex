defmodule JoelKoch.Dev.LivebookLayout do
  use Tableau.Layout, layout: JoelKoch.Dev.RootLayout
  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <div class="mx-auto max-w-7xl">
      <div class="flex flex-row justify-between">
        <a
          :if={@page[:livebook_url]}
          href={"https://livebook.dev/run?url=#{URI.encode(@page.livebook_url)}"}
        >
          <img src="https://livebook.dev/badge/v1/blue.svg" alt="Run in Livebook" />
        </a>
        <div class="flex grow justify-end">
          <a :if={@page[:discussions_url]} href={@page.discussions_url}>
            <Heroicons.chat_bubble_left_right class="size-16" />
          </a>
          <a :if={@page[:livebook_url]} href={@page.livebook_url}>
            <img src="/github-mark.svg" class="dark:hidden" />
            <img src="/github-mark-white.svg" class="hidden dark:block" />
          </a>
        </div>
      </div>
      <article class="livebook-text *:my-4 *:overflow-x-auto *:px-4">
        <%= {:safe, render(@inner_content)} %>
      </article>
    </div>
    """
  end
end
