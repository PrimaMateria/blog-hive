{ inputs, cell }:
let
  inherit (inputs) nixpkgs;
  inherit (cell) bee;
in
{
  experiment = {
    inherit bee;

    users.users.foo = {
      isNormalUser = true;
      initialPassword = "foo";
    };

    environment.systemPackages = with nixpkgs; [ hello ];
    system.stateVersion = "23.11";
  };
}
