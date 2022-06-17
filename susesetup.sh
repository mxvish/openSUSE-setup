#edit & mv files-----------------------------
mv bashrc .bashrc
mv -f user-dirs.dirs .config/
mv profile .profile
mv Xmodmap .Xmodmap
mv Xresources .Xresources
xrdb .Xresources
sudo mv custom.conf /etc/gdm/
sudo mv grub /etc/default/
mv colorrc .colorrc

mv Desktop .Desktop
mv Downloads .Downloads
mv Public .Public
rm -rf Templates Documents Music Pictures Videos
mkdir downloads

#remove-----------------------------
sudo zypper remove -y gnome-calendar
sudo zypper remove -y gnome-contacts
sudo zypper remove -y firefox
sudo zypper remove -y gedit
sudo zypper remove -y gnome-maps
sudo zypper remove -y gnome-photos
sudo zypper remove -y gnome-tour
sudo zypper remove -y gnome-weather
sudo zypper remove -y rhythmbox
sudo zypper remove -y cheese
sudo zypper remove -y gnome-calculator polari quadrapassel swell-foop
sudo zypper remove -y gnome-clocks gnome-chess gnome-mahjongg gnome-mines gnome-music gnome-sudoku gnome-tweaks lightsoff iagno

sudo zypper update -y
sudo zypper dist-updrade -y

#install-----------------------------
sudo zypper install curl
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo zypper addrepo --refresh https://brave-browser-rpm-release.s3.brave.com/x86_64/ brave-browser
sudo zypper install -y brave-browser

sudo zypper install -y chrome-gnome-shell
sudo zypper install -y fcitx fcitx-mozc
sudo zypper install -y i3
sudo zypper install -y neofetch

sudo zypper install -y python-tkinter
sudo zypper install -y R-core
sudo zypper install -y ranger
sudo zypper install -y w3m

git clone https://github.com/mxvish/w3m-keymap.git
sudo mv w3m-keymap/keymap ~/.w3m
sudo rm -r w3m-keymap

#mkdir ~/.vim ~/.vim/autoload
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

sudo zypper install -y nodejs
mv vimrc .vimrc

#configure system settings-----------------------------
gsettings set org.gnome.desktop.notifications show-banners false
gsettings set org.gnome.desktop.notifications show-in-lock-screen false
xrandr --output HDMI-1 --left-of eDP-1 
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'mozc-jp')]"
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
settings
	search 
		turn off
	keyboard
		view and customize ~
			navigation
 				switch windows directly=alt+tab
		custom shortcuts
			open terminal

	battery settings
		balanced ->	power saver
	keyboard shortcuts
		settings
		hide all normal windows
		close window

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

desk changer
	profiles -> location URI
		remove item /usr/share/*
		add folder ./pictures/wallpaper
	daemon 30 min interval

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
