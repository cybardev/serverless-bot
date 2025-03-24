{
  pkgs ? import <nixpkgs> {
    config = { };
    overlays = [ ];
  },
  ...
}:
pkgs.mkShellNoCC {
  packages = [ pkgs.nodejs_18 ];
  shellHook = ''
    npm install
    export PATH="$PATH:$PWD/node_modules/.bin"
  '';
}
