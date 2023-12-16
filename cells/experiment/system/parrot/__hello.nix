{ pkgs, greeting ? "Hello world" }:
pkgs.writeShellApplication {
  name = "hello";
  text = ''${pkgs.hello}/bin/hello --greeting "${greeting}"'';
}
