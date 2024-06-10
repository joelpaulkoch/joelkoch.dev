defmodule JoelKoch.Dev.HomePage do
  use Tableau.Page,
    layout: JoelKoch.Dev.RootLayout,
    permalink: "/"

  use Phoenix.Component

  def template(assigns) do
    ~H"""
    <div class="flex flex-col grow gap-16 items-center justify-items-start pt-64">
      <h1 class="text-5xl text-bold">
        Joel Koch
      </h1>
      <p class="">
        hello, world!
      </p>
      <div class="size-64">
        <img
          class="rounded-full"
          src="https://www.gravatar.com/avatar/a7eb43bdf873c6edcb9d79b0acb21764a78c6983deabba6cbc7fae944645c63c?s=1000"
        />
      </div>
    </div>
    """
  end
end
