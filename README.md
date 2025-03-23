- Install packages
```
pacman -S kitty hyprland uwsm ttf-jetbrains-mono-nerd wget yazi brightnessctl waybar libreoffice-fresh impala openssh dunst mpv bat ttf-liberation ttf-nunito ttf-roboto adobe-source-han-sans-jp-fonts adobe-source-han-sans-kr-fonts ttf-indic-otf nwg-look fish tealdeer xdg-desktop-portal-hyprland 7zip
```

- Install yay (https://github.com/Jguer/yay)
```
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay.git && cd yay && makepkg -si

```
- Install aur packages
```
yay -S zen-browser-bin tofi swayosd hyprshot bashmount
```
- Configure tofi entries
```
/usr/share/applications
```
Move desktop entries to different location like .backup

- Install miniconda
```
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm ~/miniconda3/miniconda.sh
```
```
source ~/miniconda3/bin/activate
```
```
conda init --all
```
- Set waybar to run as systemd service
```
systemctl --user enable --now waybar.service
```
- Install PostgreSQL
```
pacman -s postgresql
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
- SwayOSD LibInput Backend
```
sudo systemctl enable --now swayosd-libinput-backend.service
```
- Update tealdeer 
```
tldr --update
```
- Deactivate conda base environment on startup
```
conda config --set auto_activate_base false
```
