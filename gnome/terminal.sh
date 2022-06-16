#!/bin/sh

PROFILE_UUID="$(gsettings get "org.gnome.Terminal.ProfilesList" default | tr -d \')"
DCONF_BASE=/org/gnome/terminal/legacy/profiles:
DCONF_BASEG=/org/gnome/terminal/legacy
 
nord0="#2E3440"
nord1="#3B4252"
nord2="#434C5E"
nord3="#4C566A"
nord4="#D8DEE9"
nord5="#E5E9F0"
nord6="#ECEFF4"
nord7="#8FBCBB"
nord8="#88C0D0"
nord9="#81A1C1"
nord11="#BF616A"
nord13="#EBCB8B"
nord14="#A3BE8C"
nord15="#B48EAD"

nord0_rgb="rgb(46,52,64)"
nord1_rgb="rgb(59,66,82)"
nord4_rgb="rgb(216,222,233)"
nord8_rgb="rgb(136,192,208)"

# Disable theme
dconf write "$DCONF_BASE/:$PROFILE_UUID/use-theme-colors" "false"
dconf write "$DCONF_BASE/:$PROFILE_UUID/use-theme-background" "false"
# Disable scrollbar
dconf write "$DCONF_BASE/:$PROFILE_UUID/scrollbar-policy" "'never'"
# Disable menubar
dconf write "$DCONF_BASEG/default-show-menubar" "false"
dconf write "$DCONF_BASEG/menu-accelerator-enabled" "false"
# Font
dconf write "$DCONF_BASE/:$PROFILE_UUID/font" "'Fira Code 11'"
dconf write "$DCONF_BASE/:$PROFILE_UUID/use-system-font" "false"
# Transparency
dconf write "$DCONF_BASE/:$PROFILE_UUID/use-theme-transparency" "true"
dconf write "$DCONF_BASE/:$PROFILE_UUID/background-transparency-percent" "40"
# Palette
dconf write "$DCONF_BASE/:$PROFILE_UUID/palette" "['$nord1', '$nord11', '$nord14', '$nord13', '$nord9', '$nord15', '$nord8', '$nord5', '$nord3', '$nord11', '$nord14', '$nord13', '$nord9', '$nord15', '$nord7', '$nord6']"
# Backgrounds
dconf write "$DCONF_BASE/:$PROFILE_UUID/background-color" "'$nord0'"
dconf write "$DCONF_BASE/:$PROFILE_UUID/foreground-color" "'$nord4'"
dconf write "$DCONF_BASE/:$PROFILE_UUID/use-transparent-background" "true"
# .
dconf write "$DCONF_BASE/:$PROFILE_UUID/bold-color" "'$nord4'"
dconf write "$DCONF_BASE/:$PROFILE_UUID/bold-color-same-as-fg" "true"
# .
dconf write "$DCONF_BASE/:$PROFILE_UUID/use-theme-colors" "false"
dconf write "$DCONF_BASE/:$PROFILE_UUID/use-theme-background" "false"
dconf write "$DCONF_BASE/:$PROFILE_UUID/use-theme-transparency" "false"
# .
dconf write "$DCONF_BASE/:$PROFILE_UUID/cursor-colors-set" "true"
dconf write "$DCONF_BASE/:$PROFILE_UUID/cursor-foreground-color" "'$nord1_rgb'"
dconf write "$DCONF_BASE/:$PROFILE_UUID/cursor-background-color" "'$nord4_rgb'"
# .
dconf write "$DCONF_BASE/:$PROFILE_UUID/highlight-colors-set" "true"
dconf write "$DCONF_BASE/:$PROFILE_UUID/highlight-foreground-color" "'$nord0_rgb'"
dconf write "$DCONF_BASE/:$PROFILE_UUID/highlight-background-color" "'$nord8_rgb'"
