{ inputs, cell }:
let
  inherit (inputs) nixpkgs;
  inherit (cell) bee system;
in
{
  inherit bee;

  imports = [
    system.common
    system.parrot
    {
      experiment.system.parrot = {
        art = "elephant";
        greeting = "Hello home!";
      };
    }
  ];
}
