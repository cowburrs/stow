nr() {
    sudo -v || return 1
		git -C ~/nixos add -A

    while true; do sudo -v >/dev/null 2>&1; sleep 60; done &
    local keepalive_pid=$!

    # Save old EXIT trap
    local old_exit_trap
    old_exit_trap=$(trap -p EXIT)

    # Set new trap
    trap "kill $keepalive_pid 2>/dev/null; $old_exit_trap" EXIT INT TERM

		# Sorry to all the pure purists out there, this is the best way to do your system.
    nh os test ~/nixos#burrs --impure --no-update-lock-file

    # Cleanup manually just in case
    kill "$keepalive_pid" 2>/dev/null
    trap - EXIT INT TERM
}


nrs() { # holy vibecoding motherload. sorry about this one
    sudo -v || return 1
		git -C ~/nixos add -A

    while true; do sudo -v >/dev/null 2>&1; sleep 60; done &
    local keepalive_pid=$!

    # Save old EXIT trap
    local old_exit_trap
    old_exit_trap=$(trap -p EXIT)

    # Set new trap
    trap "kill $keepalive_pid 2>/dev/null; $old_exit_trap" EXIT INT TERM

    nh os switch ~/nixos#burrs --impure --no-update-lock-file

    # Cleanup manually just in case
    kill "$keepalive_pid" 2>/dev/null
    trap - EXIT INT TERM
}


nrlaptop() {
    # sudo nixos-rebuild test --impure --flake ~/nixos#laptop
    sudo -v || return 1
		git -C ~/nixos add -A

    while true; do sudo -v >/dev/null 2>&1; sleep 60; done &
    local keepalive_pid=$!

    # Save old EXIT trap
    local old_exit_trap
    old_exit_trap=$(trap -p EXIT)

    # Set new trap
    trap "kill $keepalive_pid 2>/dev/null; $old_exit_trap" EXIT INT TERM

    nh os test ~/nixos#laptop --impure --no-update-lock-file

    # Cleanup manually just in case
    kill "$keepalive_pid" 2>/dev/null
    trap - EXIT INT TERM
}

nrslaptop() {
    # sudo nixos-rebuild switch --impure --flake ~/nixos#laptop
    sudo -v || return 1
		git -C ~/nixos add -A

    while true; do sudo -v >/dev/null 2>&1; sleep 60; done &
    local keepalive_pid=$!

    # Save old EXIT trap
    local old_exit_trap
    old_exit_trap=$(trap -p EXIT)

    # Set new trap
    trap "kill $keepalive_pid 2>/dev/null; $old_exit_trap" EXIT INT TERM

    nh os switch ~/nixos#laptop --impure --no-update-lock-file

    # Cleanup manually just in case
    kill "$keepalive_pid" 2>/dev/null
    trap - EXIT INT TERM
}

ngc() {
    nh clean all --keep 3
}

ngl() {
    nh os info
}

nhs() {
    nh search "$@"
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

dnf() {
    if [ "$1" = "install" ]; then
			~/.config/bashrc/scripts/fedora
    fi
}
