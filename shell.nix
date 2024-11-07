{ pkgs ? import <nixpkgs-unstable> { } }:
let
  devDeps = with pkgs; [
    typescript
    nil
    nixd
    nodejs
    yarn
    lessc
    elmPackages.elm-test
    elmPackages.elm-live
    elmPackages.elm-review
    elmPackages.elm-format
    elmPackages.elm-language-server
  ];
  appDeps = with pkgs; [ nodejs elmPackages.elm ];
in pkgs.mkShell {
  LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath appDeps;
  nativeBuildInputs = devDeps ++ appDeps;
}

