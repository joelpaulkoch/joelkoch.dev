defmodule JoelKoch.Dev.Components do
  use Phoenix.Component

  def footer(assigns) do
    ~H"""
    <footer class="mx-auto flex w-full max-w-7xl flex-col-reverse items-center justify-center gap-4 border-t-2 border-solid border-neutral-800 py-4 transition hover:border-white sm:flex-row">
      <span class="p-2">
        © 2024 Joël Koch
      </span>
      <.ringlink link="https://github.com/elixir-tools/tableau">
        Built with Tableau
      </.ringlink>
    </footer>
    """
  end

  attr(:link, :string, required: true)
  slot(:inner_block, required: true)

  def ringlink(assigns) do
    ~H"""
    <a class="rounded-md p-2 underline ring-white transition hover:ring" href={@link}>
      <%= render_slot(@inner_block) %>
    </a>
    """
  end

  def nav_menu(assigns) do
    ~H"""
    <nav class="hidden flex-row justify-end gap-2 text-xl sm:flex">
      <.ringlink link="/">
        Home
      </.ringlink>
      <.ringlink link="/projects">
        Projects
      </.ringlink>
      <.ringlink link="/resume">
        Resume
      </.ringlink>
    </nav>
    """
  end
end
