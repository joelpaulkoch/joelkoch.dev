{
  description = "joelkoch.dev website";

  inputs.flake-utils.url = "github:numtide/flake-utils";
  inputs.next-ls.url = "github:elixir-tools/next-ls";

  outputs = {
    self,
    nixpkgs,
    flake-utils,
    next-ls,
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs {inherit system;};
      in {
        devShell = pkgs.mkShell {
          packages = [
            pkgs.beam.packages.erlang.elixir
            pkgs.inotify-tools
            # next-ls.packages.${system}.default
          ];
        };
      }
    );
}
