{
  pkgs ? import <nixpkgs> {
    config = { };
    overlays = [ ];
  },
  ...
}:
pkgs.mkShellNoCC {
  packages = with pkgs; [
    nodejs_18
  ];

  shellHook = ''
    npm install
  '';
}
