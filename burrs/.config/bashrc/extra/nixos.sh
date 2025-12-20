nr() {
git -C ~/nixos add -A
sudo nixos-rebuild test --impure --flake ~/nixos#burrs
}

nrs() {
git -C ~/nixos add -A
sudo nixos-rebuild switch --impure --flake ~/nixos#burrs
}

nrlaptop() {
git -C ~/nixos add -A
sudo nixos-rebuild test --impure --flake ~/nixos#laptop
}

nrslaptop() {
git -C ~/nixos add -A
sudo nixos-rebuild switch --impure --flake ~/nixos#laptop
}

ngc() {
nix-env --delete-generations +3
nix-collect-garbage -d
}
