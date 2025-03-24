{
  pkgs ? import <nixpkgs> {
    config = { };
    overlays = [ ];
  },
  ...
}:
pkgs.mkShell {
  packages = with pkgs; [
    nodejs_18
  ];

  shellHook = ''
    npm install
  '';
}
