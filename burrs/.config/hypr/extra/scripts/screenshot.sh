#!/usr/bin/env bash


hyprctl keyword 'windowrule[discord]:enable false'
hyprctl keyword 'windowrule[notifications]:enable false'
pgrep -f ".hyprshot-wrapped" || hyprshot -m region --clipboard-only --freeze
hyprctl keyword 'windowrule[discord]:enable true'
hyprctl keyword 'windowrule[notifications]:enable true'
