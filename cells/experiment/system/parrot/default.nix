{ inputs, config }:
let
  inherit (inputs) nixpkgs;
  cfg = config.experiment.system.parrot;
in
{
  config = {
    environment.systemPackages = [
      (nixpkgs.callPackage ./__hello.nix { inherit (cfg) greeting; })
      (nixpkgs.callPackage ./__cowsay.nix { inherit (cfg) art; })
    ];
  };
}

