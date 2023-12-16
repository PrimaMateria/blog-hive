{ inputs, cell }:
let
  inherit (inputs.nixpkgs) lib;
in
{
  experiment.system.parrot = {
    greeting = lib.mkOption {
      type = lib.types.str;
      description = "hello message";
      default = "Hello world";
    };
    art = lib.mkOption {
      type = lib.types.str;
      description = "cowsay art - one of items listed by cowsay -l";
      default = "default";
    };
  };
}
