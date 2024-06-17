defmodule JoelKoch.Dev.HomePage do
  use Tableau.Page,
    layout: JoelKoch.Dev.RootLayout,
    permalink: "/"

  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <div class="flex grow flex-col items-center justify-items-start gap-16 pt-64">
      <div class="mx-16 grid max-w-7xl grid-cols-1 gap-16 sm:grid-cols-2 lg:grid-cols-3">
        <div class="px-8 sm:px-0">
          <img
            class="rounded-3xl object-contain"
            src="https://www.gravatar.com/avatar/a7eb43bdf873c6edcb9d79b0acb21764a78c6983deabba6cbc7fae944645c63c?s=1000"
          />
        </div>
        <div class="flex flex-col gap-8 pl-16 lg:col-span-2">
          <h1 class="text-bold text-5xl">
            It's me
          </h1>
          <p>
            hello, world! What's up?
          </p>
          <p>
            You can check out my github page: github.com/joelpaulkoch
          </p>
        </div>
      </div>
      <div class="min-h-60 w-full bg-neutral-900 p-16 ">
        <div class="mx-auto grid max-w-7xl grid-cols-1 gap-4 sm:grid-cols-2">
          <div class="s-32 row-span-2 rounded-xl bg-white p-4 dark:bg-neutral-800">
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
            <div class="col-start-3 m-auto rounded-md ring-white hover:ring">
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
    </div>
    """
  end
end
