#
# ~/.bash_profile
#

# Launch Hyprland on Startup
[[ -f ~/.bashrc ]] && . ~/.bashrc

if uwsm check may-start; then
    exec uwsm start hyprland.desktop
fi

# Set default editor as Neovim
export EDITOR=nvim

# Remove default CTRL+D behavior and set to exit fish
set -o ignoreeof

