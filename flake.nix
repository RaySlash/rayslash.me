{
  description = "Rayslash Personal Website | ELM";

  inputs = {
    flake-parts.url = "github:hercules-ci/flake-parts";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    devshell.url = "github:numtide/devshell";
  };

  outputs = inputs @ {flake-parts, ...}:
    flake-parts.lib.mkFlake {inherit inputs;} {
      imports = [
        inputs.devshell.flakeModule
      ];
      systems = ["x86_64-linux" "aarch64-linux" "aarch64-darwin" "x86_64-darwin"];
      perSystem = {pkgs, ...}: let
        devDeps = with pkgs; [
          lessc
          pnpm
          nodejs
          elmPackages.elm
          elmPackages.elm-format
        ];
      in {
        devshells = {
          default = {
            commands = [
              # {
              #   help = ''
              #     USAGE: elm-build
              #     INFO: Build optimized output to /dist/index.html
              #   '';
              #   name = "elm-build";
              #   command = builtins.readFile ./scripts/build.bash;
              # }
            ];
            devshell = {
              name = "ELM | rayslash.me";
              packages = devDeps;
              meta = {
                description = "Dev Environment | Elm | rayslash.me";
              };
            };
          };
        };
      };
    };
}
