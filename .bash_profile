#
# ~/.bash_profile
#

# Launch Hyprland on Startup
[[ -f ~/.bashrc ]] && . ~/.bashrc

if uwsm check may-start; then
    clear && exec uwsm start hyprland.desktop > /dev/null 2>&1
fi

# Set default editor as Neovim
# export EDITOR=nvim

# Remove default CTRL+D behavior
set -o ignoreeof


. "$HOME/.local/share/../bin/env"
