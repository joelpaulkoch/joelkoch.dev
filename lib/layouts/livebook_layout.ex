defmodule JoelKoch.Dev.LivebookLayout do
  use Tableau.Layout, layout: JoelKoch.Dev.RootLayout
  use Phoenix.Component

  def template(assigns) do
    ~H"""
      <article>
        <%=  {:safe, render @inner_content} %>
      </article>
    """
  end
end

