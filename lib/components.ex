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
        class="h-full w-full bg-white p-0 text-black dark:bg-neutral-800 dark:text-neutral-200 sm:hidden"
      >
        <div class="grid-rows-[auto_1fr] size-full grid ">
          <div class="flex flex-row justify-end p-4">
            <button popovertarget="mobile-nav" popovertargetaction="hide">
              <Heroicons.x_mark outline class="size-8" />
            </button>
          </div>
          <nav class="flex flex-col place-content-center gap-6 text-center text-xl">
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
