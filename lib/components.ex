defmodule JoelKoch.Dev.Components do
  use Phoenix.Component

  def footer(assigns) do
    ~H"""
    <footer class="mx-auto flex w-full max-w-7xl flex-col-reverse items-center justify-center gap-4 border-t-2 border-solid border-zinc-100 py-4 transition hover:border-lime-600 dark:border-zinc-800 dark:hover:border-zinc-100 sm:flex-row">
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
    <a
      class="flex flex-row items-center gap-2 rounded-md p-2 underline ring-lime-600 transition hover:ring dark:ring-zinc-100"
      href={@link}
    >
      <%= render_slot(@inner_block) %>
    </a>
    """
  end

  def nav_bar(assigns) do
    ~H"""
    <div class="mx-auto flex w-full max-w-7xl flex-row justify-end p-4">
      <nav class="hidden flex-row justify-end gap-2 text-xl sm:flex">
        <.ringlink link="/">Home</.ringlink>
        <.ringlink link="/livebooks">Livebooks</.ringlink>
        <.ringlink link="/resume">Resume</.ringlink>
      </nav>

      <button popovertarget="mobile-nav" class="justify-self-end sm:hidden">
        <Heroicons.bars_3 class="size-8" />
      </button>

      <div
        popover
        id="mobile-nav"
        class="h-full w-full bg-zinc-100 p-0 text-zinc-800 dark:bg-zinc-800 dark:text-zinc-100 sm:hidden"
      >
        <div class="grid-rows-[auto_1fr] size-full grid ">
          <div class="flex flex-row justify-end p-4">
            <button popovertarget="mobile-nav" popovertargetaction="hide">
              <Heroicons.x_mark outline class="size-8" />
            </button>
          </div>
          <nav class="flex flex-col items-center justify-center gap-8 text-xl">
            <.ringlink link="/">Home</.ringlink>
            <.ringlink link="/livebooks">Livebooks</.ringlink>
            <.ringlink link="/resume">Resume</.ringlink>
          </nav>
        </div>
      </div>
    </div>
    """
  end
end
