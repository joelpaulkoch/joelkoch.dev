defmodule JoelKoch.Dev.Components do
  use Phoenix.Component

  attr(:class, :string, default: nil)

  def footer(assigns) do
    ~H"""
    <footer class={["grid | footer", @class]}>
      © 2024 Joël Koch
      <a href="https://github.com/elixir-tools/tableau">
        Built with Tableau
      </a>
    </footer>
    """
  end

  attr(:class, :string, default: nil)

  def header(assigns) do
    ~H"""
    <header class={["cluster | nav | justify-content:flex-end padding-inline:s0", @class]}>
      <nav class="wrapper">
        <ul role="list" class="cluster">
          <li>
            <a href="/">Home</a>
          </li>
          <li>
            <a href="/content">Content</a>
          </li>
          <li>
            <a href="/resume">Resume</a>
          </li>
        </ul>
      </nav>
    </header>
    """
  end

  attr(:class, :string, default: nil)

  slot(:inner_block)

  def card(assigns) do
    ~H"""
    <article class={["card", @class]}>
      {render_slot(@inner_block)}
    </article>
    """
  end
end
