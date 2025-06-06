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
sudo pacman -S --needed - < packages.txt
```

- Install yay (https://github.com/Jguer/yay)
```
sudo pacman -S --needed git base-devel && git clone https://aur.archlinux.org/yay-bin.git && cd yay-bin && makepkg -si
```
- Install aur packages
```
yay -S zen-browser-bin floorp-bin tofi swayosd hyprshot bashmount tdf ttf-whatsapp-emoji
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

- Signing commits 

https://docs.github.com/en/authentication/managing-commit-signature-verification/telling-git-about-your-signing-key

```
git config --global commit.gpgsign true
```
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
yay -S hplip-plugin
```
```
sudo systemctl enable --now cups
```
Go to below site and go to Administration and add printer
```
http://localhost:631
```
- Install kernel headers to compile kernel modules for Nvidia if needed

Error:
```
 ==> ERROR: module not found: `nvidia'
 ==> ERROR: module not found: `nvidia_modeset'
 ==> ERROR: module not found: `nvidia_uvm'
 ==> ERROR: module not found: `nvidia_drm'

```
Fix:
```
  sudo pacman -S linux-lts-headers linux-zen-headers
```
- Enable TRIM for ssd
```
sudo systemctl enable fstrim.timer
```
- Enable colours and more parallel downloads in pacman (/etc/pacman.conf)

Uncomment Color and change ParallelDownloads manually

- Start power-profiles-daemon service
```
sudo systemctl enable --now power-profiles-daemon.service
```

- Skip waiting for network on boot

> graphical.target is queued for start waiting for 60s
```
sudo systemctl disable systemd-networkd-wait-online.service
```
- Setup yazi as file chooser in zen-browser
```
yay -S xdg-desktop-portal-termfilechooser-hunkyburrito-git
```
In zen-browser go to ```about:config``` 

Set ```widget.use-xdg-desktop-portal.file-picker``` to ```1```

Then 
```
systemctl --user restart xdg-desktop-portal.service
```
