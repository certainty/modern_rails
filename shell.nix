{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    nativeBuildInputs = [ 
      pkgs.watchman
      pkgs.buildPackages.ruby_3_1 
    ];
}
