let
  pkgs = import <nixpkgs> {};
  compiler = "ghc8101";
in

  pkgs.mkShell {
    buildInputs = with pkgs.haskell.packages.${compiler}; [
      cabal-install
      ghc

      ghcid
      hlint
      ormolu
    ];
  }
