defmodule JoelKoch.Dev.HomePage do
  use Tableau.Page,
    layout: JoelKoch.Dev.RootLayout,
    permalink: "/"

  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <div class="h-lvh">
      <div class="relative top-1/4 mx-auto grid max-w-7xl grid-cols-1 gap-4 px-4 sm:grid-cols-2 sm:gap-16 lg:grid-cols-3">
        <div class="mx-auto">
          <img
            class="rounded-3xl object-contain"
            src="https://www.gravatar.com/avatar/a7eb43bdf873c6edcb9d79b0acb21764a78c6983deabba6cbc7fae944645c63c?s=256"
          />
        </div>
        <div class="flex flex-col items-center gap-4 px-4 pt-4 mx-auto max-w-80 sm:items-start sm:gap-8">
          <h1 class="text-bold text-xl sm:text-5xl">
            This is me, Joël
          </h1>
          <p>
            Happy to code for fun and a living.
          </p>
          <div class="self-end">
            <a
              href="https://github.com/joelpaulkoch"
              class="flex flex-row items-center gap-2 rounded-md p-2 underline ring-white transition hover:ring sm:gap-4 sm:p-4"
            >
              <span> Checkout my GitHub profile </span>
              <img src="/github-mark.svg" width="32" height="32" class="dark:hidden" />
              <img src="/github-mark-white.svg" width="32" height="32" class="hidden dark:block" />
            </a>
          </div>
          <div class="self-end">
            <a
              href="/resume"
              class="flex flex-row items-center gap-2 rounded-md p-2 underline ring-white transition hover:ring sm:gap-4 sm:p-4"
            >
              <span> ... or what I've done so far</span>
              <Heroicons.document_text class="size-8" />
            </a>
          </div>
        </div>
      </div>
      <div class="absolute bottom-0 w-full">
        <a href="#livebooks">
          <Heroicons.chevron_down class="mx-auto size-16" />
        </a>
      </div>
    </div>
    <div id="livebooks" class="bg-neutral-900 py-16">
      <div class="mx-auto grid max-w-7xl grid-cols-1 gap-4 px-4 sm:grid-cols-2">
        <div class="row-span-2 rounded-xl bg-white p-4 dark:bg-neutral-800">
          <h2 class="bold text-xl">
            Livebook Action
          </h2>
          <p class="my-2">
            I've done this thing
          </p>
        </div>
        <div class="s-32 row-span-2 grid grid-cols-3 rounded-xl bg-white p-4 ring-white transition hover:ring dark:bg-neutral-800 sm:col-start-2 sm:row-start-2">
          <div class="col-span-2">
            <a href="/livebookthing">
              <h2 class="bold text-xl">
                Livebook Action
              </h2>
            </a>
            <p class="my-2">
              I've done this other thing
            </p>
          </div>
          <div class="col-start-3 m-auto hover:scale-110 ">
            <a href="https://livebook.dev/run?url=test">
              <img src="https://livebook.dev/badge/v1/blue.svg" alt="Run in Livebook" />
            </a>
          </div>
        </div>
        <div class="s-32 row-span-2 rounded-xl bg-white p-4 dark:bg-neutral-800">
          <h2 class="bold text-xl">
            Livebook Action
          </h2>
          <p class="my-2">
            I've done this thing
          </p>
        </div>
      </div>
    </div>
    """
  end
end
