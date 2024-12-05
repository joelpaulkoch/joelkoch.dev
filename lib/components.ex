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
    <header class={["cluster | nav | justify-content:flex-end", @class]}>
      <nav>
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

      <button popovertarget="mobile-nav" class="button">
        <Heroicons.bars_3 outline class="icon" />
      </button>
    </header>

    <nav popover="auto" id="mobile-nav" class="center | mobile-nav | radius">
      <ul role="list">
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
    """
  end

  attr(:title, :string, required: true)
  attr(:link, :string, required: true)
  attr(:class, :string, default: nil)

  slot(:inner_block)

  def card(assigns) do
    ~H"""
    <article class={["card", @class]}>
      <h2>{@title}</h2>
      {render_slot(@inner_block)}
      <a href={@link}> Read more </a>
    </article>
    """
  end
end
