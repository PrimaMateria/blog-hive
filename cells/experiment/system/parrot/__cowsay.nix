{ pkgs, art ? "default" }:
pkgs.writeShellApplication {
  name = "cowsay";
  text = ''${pkgs.cowsay}/bin/cowsay -f "${art}" "$@"'';
}
