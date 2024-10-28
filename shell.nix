{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  # nativeBuildInputs is usually what you want -- tools you need to run
  nativeBuildInputs = with pkgs; [
    nixpkgs-fmt
    docker
    docker-compose
    gnumake

    # go development
    go
    go-outline
    gopls
    gopkgs
    go-tools
    delve
  ];

  hardeningDisable = [ "all" ];
}
