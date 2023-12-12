{ inputs, cell }:
let
  inherit (inputs) nixpkgs;
  inherit (cell) bee;
in
{
  inherit bee;

  users.users.foo = {
    isNormalUser = true;
    initialPassword = "foo";
  };

  environment.systemPackages = with nixpkgs; [ cowsay ];
  system.stateVersion = "23.11";
}
