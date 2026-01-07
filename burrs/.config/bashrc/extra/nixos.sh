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
# nix-env --delete-generations +3
sudo nix-collect-garbage -d
}

nlg() {
sudo nix-env -p /nix/var/nix/profiles/system --list-generations
}

yay() {
    if [ "$1" = "-S" ]; then
        shift              # remove the -S
        nix-shell -p "$@"   # pass the rest as packages to nix-shell
    fi
}

apt() {
    if [ "$1" = "install" ]; then
        shift              # remove the -S
        nix-shell -p "$@"   # pass the rest as packages to nix-shell
    fi
}
