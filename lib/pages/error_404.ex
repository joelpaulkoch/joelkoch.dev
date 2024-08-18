defmodule JoelKoch.Dev.Error404 do
  use Tableau.Page,
    layout: JoelKoch.Dev.PageLayout,
    permalink: "/404"

  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <div class="text-pretty grid h-full place-content-center px-4 text-center text-2xl">
      <p>
        This page does not exist.
      </p>

      <a
        href="/"
        class="rounded-md p-2 underline ring-white transition hover:text-bold hover:decoration-2 hover:ring"
      >
        Go back to home.
      </a>
    </div>
    """
  end
end
