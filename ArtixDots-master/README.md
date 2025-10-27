# Installing Artix Linux
First, You can login as 
-> root
-> artix
## Connecting to WIFI
```shell
#Enabling WIFI
$ rfkill unblock wifi

$ wpa_cli
$ scan
$ scan_results
$ add_network
0, 1, 2, ...
$ set_network 0 ssid "NETWORK NAME"
$ set_network 0 psk "NETWORK PASS"
$ enable_network 0
$ save config
```
## Partitioning
```shell
$ lsblk
# choose the drive you want to install the system in like /dev/sda
$ cfdisk
# make 512M with type -> EFI System
# make for example 4G swap with type -> Linux Swap
# make the rest of the size -> Linux File System (for the root partition)
```
## Mount Points
```shell
#Assume the output of $lsblk like this:
# sda |
#     -> sda1 512M
#     -> sda2 111.3G
$ mkfs.fat -F32 /dev/sda1
$ mkfs.ext4 /dev/sda2
$ mount /dev/sda2 /mnt
$ mkdir -p /mnt/boot/efi
$ mount /dev/sda1 /mnt/boot/efi
```
## Install base packages
```shell
$ basestrap /mnt base base-devel runit elogind-runit linux linux-firmware vim intel-ucode grub efibootmgr linux-headers
```
## fstab, clock, locale, hostname
```shell
$ fstabgen -U /mnt >> /mnt/etc/fstab
$ artix-chroot /mnt
$ ln -sf /usr/share/zoneinfo/Africa/Cairo /etc/localtime
$ hwclock --systohc
$ vim /etc/locale.gen #uncomment en_US.UTF-8
$ locale-gen
$ vim /etc/locale.conf
	-> LANG=en_US.UTF-8
$ vim /etc/hostname
	-> HOSTNAME
```
## Install Grub
```shell
$ grub-install --target=x86_64-efi --efi-directory=/boot/efi --bootloader-id=GRUB --removable
$ grub-mkconfig -o /boot/grub/grub.cfg
```
## Adding users
```shell
$ useradd -mG wheel abdalrahman
$ passwd abdalrahman
$ vim /etc/sudoers
	-> uncomment %wheel ALL=(ALL:ALL) ALL
```

## Installing some packages
```shell
pacman -s xf86-video-intel xorg-server networkmanager networkmanager-runit network-manager-applet git xdg-utils xdg-user-dirs
ln -s /etc/runit/sv/NetworkManager/ /run/runit/service/NetworkManager
```
## Reboot

## Connect to Internet using NetworkManager
```shell
$ nmtui
```
## Post Installation
```shell
echo "Installing xorg needed stuff.."
sudo pacman -Syu libxft libxinerama xorg-xinit libxrandr xorg-xrandr

echo "Installing some fonts.."
sudo pacman -S noto-fonts noto-fonts-emoji noto-fonts-cjk ttf-dejavu ttf-liberation ttf-jetbrains-mono ttf-hack-nerd ttf-nerd-fonts-symbols

echo "Installing my packages.."
sudo pacman -S dunst feh pulseaudio firefox mpv yt-dlp pavucontrol pamixer

echo "Installing suckless tools.."
mkdir ~/.src
cd ~/.src
git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/st
git clone https://git.suckless.org/dmenu
git clone https://git.suckless.org/slstatus
cd dwm/
echo "Installing dwm.."
sudo make clean install
cd ../st
echo "Installing st.."
sudo make clean install
cd ../slstatus
echo "Installing slstatus.."
sudo make clean install
cd ../dmenu
echo "Installing dmenu.."
sudo make clean install
cd
echo dwm >> .xinitrc
```
### Fix Screen tearing
```
--> /etc/X11/xorg.conf.d/20-intel.conf
Section "Device"
	Identifier    "Intel Graphics"
	Driver        "intel"
	Option        "AccelMethod"    "sna"
	Option        "DRI"            "3"
	Option        "TearFree"       "true"
	Option        "TripleBuffer"   "true"
EndSection
```

### sddm 
```shell
sudo pacman -S sddm sddm-runit qt5-declarative
sudo ln -s /etc/runit/sv/sddm /run/runit/service/
sudo mkdir /usr/share/xsessions

# Add a theme
yay -S catppuccin-sddm-theme-mocha

```
```
#/usr/share/xsessions/dwm.desktop
[Desktop Entry]
Encoding=UTF-8
Name=dwm
Comment=Dynamic window manager
Exec=dwm
Icon=dwm
Type=XSession
```

### Enable arch-support
```
https://wiki.artixlinux.org/Main/Repositories
```
### sxhkd & screenlock & SRS (Shutdown, Reboot, Suspend) | demnu (Only for X)
```shell
sudo pacman -S sxhkd slock xss-lock
mkdir ~/.config/sxhkd
#Auto start this command:
	xss-lock --transfer-sleep-lock -- slock
## Add your first script!
mkdir ~/.scripts
vim ~/.scripts/SRS.sh
echo -e "poweroff\nreboot\nsuspend" | dmenu | xargs loginctl
chmod +x ~/.scripts/SRS.sh

#Add your first keybinding!
#~/.config/sxhkd/sxhkdrc
super + shift + m
	~/.scripts/SRS.sh
super + shift + l
	slock
```

### File manager (thunar)
```shell
sudo pacman -S thunar gvfs gvfs-mtp thunar-volman ffmpegthumbnailer tumbler man-db lsd zathura zathura-pdf-mupdf 
```
### Archiving
```shell
sudo pacman -S bzip2 gzip xztar p7zip unrar zip unzip
```
### ScreenKey & ScreenShots & compositor (Only for X)
```shell
sudo pacman -S slop screenkey maim xclip picom
#For screenkey
screenkey -g $(slop -n -f '%g')
#for screenshot
maim -s | tee ~/Pictures/$(date +%s).png | xclip -selection clipboard -t image/png
#Auto start picom
#Add keybinding for screenshot
#Add keybinding for toggle script for screenkey
```
### Bluetooth
```shell
sudo pacman -S bluez bluez-runit bluez-utils bluez-obex blueman
sudo ln -s /etc/runit/sv/bluetoothd /run/runit/service
#autostart blueman-applet
```
### Notification
```shell
sudo pacman -S dunst
```

### Application launcher
```shell
sudo pacman -S rofi
```
