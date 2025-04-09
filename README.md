# i use arch btw

![desktop](https://github.com/blacklytning/hyprdots/blob/master/screenshots/ss_desktop.jpeg)

![fastfetch](https://github.com/blacklytning/hyprdots/blob/master/screenshots/ss_fastfetch.jpeg)

![hecker](https://github.com/blacklytning/hyprdots/blob/master/screenshots/ss_hecker.jpeg)

![htop](https://github.com/blacklytning/hyprdots/blob/master/screenshots/ss_htop.jpeg)

![impala](https://github.com/blacklytning/hyprdots/blob/master/screenshots/ss_impala.jpeg)

![tofi](https://github.com/blacklytning/hyprdots/blob/master/screenshots/ss_tofi.jpeg)

![yazi](https://github.com/blacklytning/hyprdots/blob/master/screenshots/ss_yazi.jpeg)

![neovim](https://github.com/blacklytning/hyprdots/blob/master/screenshots/ss_neovim.jpeg)

![zen](https://github.com/blacklytning/hyprdots/blob/master/screenshots/ss_zen.jpeg)

- Install packages
```
pacman -S kitty hyprland uwsm ttf-jetbrains-mono-nerd wget yazi brightnessctl waybar libreoffice-fresh impala bluetui openssh dunst mpv bat ttf-liberation ttf-nunito ttf-roboto adobe-source-han-sans-jp-fonts adobe-source-han-sans-kr-fonts ttf-indic-otf nwg-look fish tealdeer xdg-desktop-portal-hyprland 7zip aria2 neovim fastfetch nvtop htop
```

- Install yay (https://github.com/Jguer/yay)
```
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si
```
- Install aur packages
```
yay -S zen-browser-bin floorp-bin tofi swayosd hyprshot bashmount
```
- Configure tofi entries
```
/usr/share/applications
```
Move desktop entries to different location like .backup

- Install miniconda

https://www.anaconda.com/docs/getting-started/miniconda/install#macos-linux-installation

- Deactivate conda base environment on startup
```
conda config --set auto_activate_base false
```
- Set waybar to run as systemd service
```
systemctl --user enable --now waybar.service
```
- Install PostgreSQL
```
pacman -S postgresql
sudo su - postgres
initdb -D /var/lib/postgres/data
exit
sudo systemctl start postgresql.service
sudo systemctl status postgresql.service
sudo su - postgres
createuser --interactive
exit
sudo systemctl restart postgresql
```

- Install pgweb (postgres GUI)
```
yay -S pgweb-bin
```
- Set neovim as default Git editor
```
git config --global core.editor "nvim"
```
- Set up SSH keys for Git

https://docs.github.com/en/authentication/connecting-to-github-with-ssh/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent#generating-a-new-ssh-key

- SwayOSD LibInput Backend
```
sudo systemctl enable --now swayosd-libinput-backend.service
```
- Bluetooth service (https://wiki.archlinux.org/title/Bluetooth)
```
sudo systemctl enable --now bluetooth.service
```
- Update tealdeer 
```
tldr --update
```
- Install HP printer driver and add printer

```
pacman -S cups hplip
```
```
systemctl start cups
```
Go to below site and go to Administration and add printer
```
http://localhost:631
```

