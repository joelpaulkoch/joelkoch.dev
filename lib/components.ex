defmodule JoelKoch.Dev.Components do
  use Phoenix.Component

  attr(:class, :string, default: nil)

  def footer(assigns) do
    ~H"""
    <footer class={["switcher | footer", @class]}>
      <a href="https://github.com/elixir-tools/tableau">
        Built with Tableau
      </a>
      <.socials class="max-inline-size:fit-content" />
      <span>© 2024 Joël Koch</span>
    </footer>
    """
  end

  attr(:class, :string, default: nil)

  def header(assigns) do
    ~H"""
    <header class={["cluster | nav | padding-inline:s0", @class]}>
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

  attr(:class, :string, default: nil)

  def socials(assigns) do
    ~H"""
    <ul class={["cluster", @class]} role="list">
      <li>
        <a class="transitions rotate" href="https://elixirforum.com/u/joelpaulkoch/">
          <svg
            role="img"
            viewBox="0 0 24 24"
            xmlns="http://www.w3.org/2000/svg"
            class="icon"
            width="1.25em"
            height="1.25em"
            stroke="none"
            fill="currentColor"
          >
            <title>Elixir</title>
            <path d="M19.793 16.575c0 3.752-2.927 7.426-7.743 7.426-5.249 0-7.843-3.71-7.843-8.29 0-5.21 3.892-12.952 8-15.647a.397.397 0 0 1 .61.371 9.716 9.716 0 0 0 1.694 6.518c.522.795 1.092 1.478 1.763 2.352.94 1.227 1.637 1.906 2.644 3.842l.015.028a7.107 7.107 0 0 1 .86 3.4z" />
          </svg>
        </a>
      </li>
      <li>
        <a
          class="transitions rotate"
          href="https://bsky.app/profile/joelkoch.dev"
          style="display: box;"
        >
          <svg
            role="img"
            viewBox="0 0 24 24"
            xmlns="http://www.w3.org/2000/svg"
            class="icon"
            width="1.25em"
            height="1.25em"
            stroke="none"
            fill="currentColor"
          >
            <title>Bluesky</title>
            <path d="M12 10.8c-1.087-2.114-4.046-6.053-6.798-7.995C2.566.944 1.561 1.266.902 1.565.139 1.908 0 3.08 0 3.768c0 .69.378 5.65.624 6.479.815 2.736 3.713 3.66 6.383 3.364.136-.02.275-.039.415-.056-.138.022-.276.04-.415.056-3.912.58-7.387 2.005-2.83 7.078 5.013 5.19 6.87-1.113 7.823-4.308.953 3.195 2.05 9.271 7.733 4.308 4.267-4.308 1.172-6.498-2.74-7.078a8.741 8.741 0 0 1-.415-.056c.14.017.279.036.415.056 2.67.297 5.568-.628 6.383-3.364.246-.828.624-5.79.624-6.478 0-.69-.139-1.861-.902-2.206-.659-.298-1.664-.62-4.3 1.24C16.046 4.748 13.087 8.687 12 10.8Z" />
          </svg>
        </a>
      </li>
      <li>
        <a class="transitions rotate" href="mailto:joel@joelkoch.dev">
          <Heroicons.envelope solid class="icon" width="1.25em" height="1.25em" />
        </a>
      </li>
      <li>
        <a class="transitions rotate" href="https://www.linkedin.com/in/joelpaulkoch/">
          <svg
            role="img"
            viewBox="0 0 24 24"
            xmlns="http://www.w3.org/2000/svg"
            class="icon"
            width="1.25em"
            height="1.25em"
            stroke="none"
            fill="currentColor"
          >
            <title>LinkedIn</title>
            <path d="M20.447 20.452h-3.554v-5.569c0-1.328-.027-3.037-1.852-3.037-1.853 0-2.136 1.445-2.136 2.939v5.667H9.351V9h3.414v1.561h.046c.477-.9 1.637-1.85 3.37-1.85 3.601 0 4.267 2.37 4.267 5.455v6.286zM5.337 7.433c-1.144 0-2.063-.926-2.063-2.065 0-1.138.92-2.063 2.063-2.063 1.14 0 2.064.925 2.064 2.063 0 1.139-.925 2.065-2.064 2.065zm1.782 13.019H3.555V9h3.564v11.452zM22.225 0H1.771C.792 0 0 .774 0 1.729v20.542C0 23.227.792 24 1.771 24h20.451C23.2 24 24 23.227 24 22.271V1.729C24 .774 23.2 0 22.222 0h.003z" />
          </svg>
        </a>
      </li>
    </ul>
    """
  end
end
