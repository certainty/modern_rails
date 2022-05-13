{ pkgs ? import <nixpkgs> {} }:
  pkgs.mkShell {
    buildInputs = [ 
      pkgs.watchman
      pkgs.buildPackages.ruby_3_1 
    ];
}
