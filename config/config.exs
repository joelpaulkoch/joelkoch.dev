import Config

config :tableau, :reloader,
  patterns: [
    ~r"lib/.*.ex",
    ~r"(_posts|_pages)/.*.md",
    ~r"(_data)/.*.yaml",
    ~r"livebooks/.*.livemd",
    ~r"_site/css/*"
  ]

config :web_dev_utils, :reload_log, true
# uncomment this if you use something like ngrok
# config :web_dev_utils, :reload_url, "'wss://' + location.host + '/ws'"

config :lightning_css,
  version: "1.28.2",
  default: [
    args: [
      "assets/css/app.css",
      "--bundle",
      "--targets",
      ">= 0.25%",
      "--output-file",
      "_site/css/app.css"
    ],
    watch_files: "assets/css/"
  ]

config :tableau, :assets,
  lightning_css: {LightningCSS, :install_and_run, [:default, ~w(), [watch: true]]}

config :tableau, :config, include_dir: "extra"

config :tableau, :config,
  url: "http://localhost:4999",
  timezone: "Europe/Berlin",
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

config :elixir, :time_zone_database, Tz.TimeZoneDatabase

import_config "#{Mix.env()}.exs"
