import Config

config :tableau, :reloader,
  patterns: [
    ~r"lib/.*.ex",
    ~r"(_posts|_pages)/.*.md",
    ~r"livebooks/.*.livemd",
    ~r"assets/.*.(css|js)"
  ]

config :web_dev_utils, :reload_log, true
# uncomment this if you use something like ngrok
# config :web_dev_utils, :reload_url, "'wss://' + location.host + '/ws'"

config :tailwind,
  version: "3.4.4",
  default: [
    args: ~w(
    --config=assets/tailwind.config.js
    --input=assets/css/app.css
    --output=_site/css/app.css
    )
  ]

config :tableau, :assets, tailwind: {Tailwind, :install_and_run, [:default, ~w(--watch)]}

config :tableau, :config, include_dir: "extra"

config :tableau, :config,
  url: "http://localhost:4999",
  markdown: [
    mdex: [
      extension: [table: false, header_ids: "", tasklist: true, strikethrough: true],
      render: [unsafe_: true],
      features: [syntax_highlight_theme: "onedark"]
    ]
  ]

config :tableau, Tableau.PageExtension, enabled: true
config :tableau, Tableau.PostExtension, enabled: true, future: true
config :tableau, Tableau.DataExtension, enabled: true
config :tableau, Tableau.SitemapExtension, enabled: true

config :tableau, Tableau.RSSExtension,
  enabled: true,
  title: "joelkoch.dev",
  description: "My personal website"

config :tableau, JoelKoch.Dev.LivebooksExtension,
  enabled: true,
  layout: "JoelKoch.Dev.LivebookLayout",
  dir: "_livebooks",
  livebooks_root: "https://github.com/joelpaulkoch/joelkoch.dev/blob/main/",
  discussions_url: "https://github.com/joelpaulkoch/joelkoch.dev/discussions"

config :elixir, :time_zone_database, Tz.TimeZoneDatabase

import_config "#{Mix.env()}.exs"
