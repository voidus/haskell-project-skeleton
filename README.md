# Haskell-Project-Skeleton

This is an opinionated haskell project starter. I plan to update it when my
preferences for tooling/configuration and my comfort with heavier tooling
evolves. I mostly use this for experiments, so it might lack things that are
important for you.

I found myself rewriting this a few times, so I thought I'd bundle it up.
Feel free to use however you see fit.

Feedback and suggestions are always appreciated.

## How to use

I suggest cloning and throwing away the history:

```sh
PROJECT_NAME=<your project name goes here>
git clone --depth=1 https://github.com/voidus/haskell-project-skeleton.git ${PROJECT_NAME}
cd $PROJECT_NAME && rm -rf .git
git init . && git add . && git commit -m'Initial commit"
```

If you are using this for a serious project, you might also want to [pin the
nixpkgs version](https://nixos.wiki/wiki/FAQ/Pinning_Nixpkgs) by replacing `pkgs
= import <nixpkgs> {};` in shell.nix with

```nix
pkgs = import (builtins.fetchTarball {
  # Descriptive name to make the store path easier to identify
  name = "nixos-unstable-2018-09-12";
  # Commit hash for nixos-unstable as of 2018-09-12
  url = "https://github.com/nixos/nixpkgs/archive/ca2ba44cab47767c8127d1c8633e2b581644eb8f.tar.gz";
  # Hash obtained using `nix-prefetch-url --unpack <url>`
  sha256 = "1jg7g6cfpw8qvma0y19kwyp549k1qyf11a5sg6hvn6awvmkny47v";
}) {}
```

## What's included

- Dev environment
    - [direnv](https://direnv.net/) to automatically load dev tools
    - [nix](https://nixos.wiki/wiki/Nix) to deterministally manage dev
        environments
- Compilation tools
    - [cabal-install](https://cabal.readthedocs.io/en/stable/index.html) to
        manage dependencies and build
- Libraries and stuff
    - [Relude](https://github.com/kowainik/relude) to replace Prelude
    - [Hspec](https://hspec.github.io/) for unit tests
- Developer tools
    - [ghcid](https://github.com/ndmitchell/ghcid) for rapid feedback
        - It's set up with `--reverse-errors`, so it shows the first error last.
            This takes a little getting used to, but it avoids having to scroll
            up in the terminal running ghcid.
    - [hlint](https://github.com/ndmitchell/hlint) to get hints on how to
        improve the code
    - [ormolu](https://github.com/tweag/ormolu) for automatic formatting

## Similar projects

- [utdemir/hs-nix-template](https://github.com/utdemir/hs-nix-template) seems to
    be a bit more sophisticated
