#edit & mv files-----------------------------
mv bashrc .bashrc
mv -f user-dirs.dirs .config/
mv profile .profile
sudo mv i3status.conf /etc/
sudo mv grub /etc/default/
mv colorrc .colorrc

mv Desktop .Desktop
mv Downloads .Downloads
mv Public .Public
rm -rf Templates Documents Music Pictures Videos LICENSE README.md openSUSE-setup
mkdir downloads

sudo zypper remove -y firefox

sudo zypper update -y
sudo zypper dist-updrade -y

#install-----------------------------
sudo zypper install curl
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo zypper addrepo --refresh https://brave-browser-rpm-release.s3.brave.com/x86_64/ brave-browser

packages=(
	brave-browser
	fcitx
	fcitx-mozc
	i3
	neofetch
	nodejs
	python-tkinter
	R-base
	ranger
	scrot)
for i in "${packages[@]}"; do sudo zypper in -y "$i"; done

mv config  .config/i3/
#curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mkdir ~/.vim ~/.vim/autoload
wget https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
mv plug.vim ~/.vim/autoload
mv vimrc .vimrc

#configure system settings-----------------------------
gsettings set org.gnome.desktop.notifications show-banners false
gsettings set org.gnome.desktop.notifications show-in-lock-screen false
xrandr --output HDMI-1 --left-of eDP-1 
#gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'mozc-jp')]"
timedatectl set-timezone Asia/Tokyo

gsettings set org.gnome.desktop.interface enable-animations false
gsettings set org.gnome.software download-updates false
gsettings set org.gnome.shell disable-user-extensions true
gsettings set org.gnome.desktop.search-providers disable-external true

sudo grub2-mkconfig -o /boot/grub2/grub.cfg

sudo zypper clean -a
sudo zypper cleanlocks

sudo reboot

"""
brave-browser
	bravepasswd from onedrive
  	remove all history & autofill form data on exit
	Don't allow sites to send notifications
	sync everything
	appearance=dark
		disable Always show bookmarks on new tab page
	enable Speedreader
	enable
		https://extensions.gnome.org/extension/1471/
	new tab page -> new tabs page shows blank page

printer
	Ctrl+P on brave browser
	Destination=see more
	Manage > Add > network printer > find network printer
	choose epson > forward > apply

	#print system dialog (> page setup > paper > paper size >) print

univ wifi eduroam
	authentication PEAP
	No CA certificate is required
	静大ID@shizuoka.ac.jp
	静大ID password

zoom
	settings
		video
			turn off~
		audio
			automatically~
			mute~
"""
