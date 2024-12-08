{pkgs ? import <nixpkgs-unstable> {}}: let
  devDeps = with pkgs; [
    lessc
    elmPackages.elm
    elmPackages.elm-live
  ];
in
  pkgs.mkShell {
    # LD_LIBRARY_PATH = pkgs.lib.makeLibraryPath devDeps;
    nativeBuildInputs = devDeps;
  }
