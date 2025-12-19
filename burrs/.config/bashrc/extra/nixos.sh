nr() {
git -C ~/nixos add -A
sudo nixos-rebuild test --impure --flake ~/nixos#burrs
}

nrs() {
git -C ~/nixos add -A
sudo nixos-rebuild switch --impure --flake ~/nixos#burrs
}
