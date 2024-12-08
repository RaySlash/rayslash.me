# rayslash.me README

## Development Environment

If you are in a Linux environment, you can get nix using:

```shell
$ sh <(curl -L https://nixos.org/nix/install) --daemon
```

You can use following to enter into `nix` development shell. It will fetch all dependecies for you.
This repository also have `.envrc` support.

```shell
$ nix-shell
```

> Refer to official install instructions for more info at [NixOS](https://nixos.org/download/)

If you cannot have access to `nix` in your system, you can manually install the packages in `shell.nix`
in the root of the project. Make sure you install all the dependencies under `devDeps`.

Use the following to run the development server:

```shell
$ elm-live ./src/Main.elm -p 1234
```

Open `http://localhost:1234` on your browser.

## Build Instructions

To build the web application, simple get into

```shell
$ elm build ./src/Main.elm
```

Output would be at `dist/` in the project root.

## Extra Notes

- All Images and Fonts are supposed to go in the `public` directory in root of the project.
