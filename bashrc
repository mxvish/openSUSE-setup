#find . -name "filename" (-delete) ex .DS_Store
#zip -r compressed_filename.zip foldername
#convert -resize 1073x175 password.png resizedpasswd.png
#x11vnc -storepasswd
#x11vnc -usepw
#/usr/bin/time $SHELL -i -c exit
#source mysql.sql 
#systemctl get-default
#sudo systemctl set-default multi-user.target(graphical.target)

function as {
    local url="https://amazon.co.jp/s?k="
    url+=${@}
    brave-browser $url
}
alias b='brave-browser'
alias c='java ~/first/cd.java'
alias ca='cat /sys/class/power_supply/BAT1/capacity'
alias cac='brave-browser docs.google.com/spreadsheets/d/1ECwWvDWYEH4iZL_Hy9V2Xqy0NOVmpsAP/'
alias cl='sudo zypper clean -a;sudo zypper cleanlocks'
alias d='brave-browser drive.google.com/drive/my-drive'
alias di='brave-browser discord.com/channels/@me'
alias g='brave-browser gakujo.shizuoka.ac.jp/portal/'
alias gi='brave-browser github.com/mxvish?tab=repositories'
alias ke='brave-browser keep.google.com'
alias l='ls -a ~/downloads'
alias m='brave-browser "https://mail.google.com/mail/u/0/h/";brave-browser "https://mail.google.com/mail/u/1/h/"' 
alias ma='brave-browser https://www.youtube.com/c/%E7%B2%BE%E7%A5%9E%E7%A7%91%E5%8C%BB-%E7%9B%8A%E7%94%B0%E8%A3%95%E4%BB%8B%E3%81%AE%E3%83%A1%E3%83%B3%E3%82%BF%E3%83%AB%E3%82%AF%E3%83%AA%E3%83%8B%E3%83%83%E3%82%AFTV/videos?view=0&sort=p&flow=grid'
alias mk='mkdir'
alias o='brave-browser onedrive.live.com'
alias op='vi ~/.bashrc;source ~/.bashrc'
alias ou='brave-browser https://outlook.office.com/mail/'   
alias p='python3 -O'
alias r='ranger'
alias re='systemctl reboot -i'
alias rs='brave-browser https://www.rakuten-sec.co.jp/ITS/V_ACT_Login.html'
alias rmr='rm -rf'
alias s='brave-browser app.slack.com/client'
alias sr='sudo zypper remove -y'
alias sz='sudo zypper install -y'
alias ss='systemctl suspend -i'
alias t='brave-browser todoist.com/app/upcoming'
alias u='sudo zypper update -y; sudo zypper dist-upgrade -y'
function us {
    local url="https://opac.lib.shizuoka.ac.jp/opac/xc/search/"
    url+=${@}
    url+="?filter[0]=place_fc%3A"HAMA""
    brave-browser $url
}
alias v='vim'
alias visa='brave-browser docs.google.com/spreadsheets/d/1iuQ-DxULNRZp0QisqnwkH33GpLA8dkec/'
alias vpn='brave-browser https://vpn.inf.shizuoka.ac.jp/dana-na/auth/url_3/welcome.cgi'
alias vr='vi ~/rpmsetup.sh'
alias w='brave-browser google.com/search?q=weather'
alias xc='xclip -sel c <'   
alias xd='xdg-open'
alias xdd='xdg-open ./'
alias xe='xrandr --output eDP-1 --brightness'
alias xh='xrandr --output HDMI-1 --brightness'
alias y='brave-browser youtube.com/playlist?list=LL'
function ys {
  local url="https://youtube.com/results?search_query="
  url+=${@}
  brave-browser $url
}

# Sample .bashrc for SuSE Linux
# Copyright (c) SuSE GmbH Nuernberg

# There are 3 different types of shells in bash: the login shell, normal shell
# and interactive shell. Login shells read ~/.profile and interactive shells
# read ~/.bashrc; in our setup, /etc/profile sources ~/.bashrc - thus all
# settings made here will also take effect in a login shell.
#
# NOTE: It is recommended to make language settings in ~/.profile rather than
# here, since multilingual X sessions would not work properly if LANG is over-
# ridden in every subshell.

# Some applications read the EDITOR variable to determine your favourite text
# editor. So uncomment the line below and enter the editor of your choice :-)
#export EDITOR=/usr/bin/vim
#export EDITOR=/usr/bin/mcedit

# For some news readers it makes sense to specify the NEWSSERVER variable here
#export NEWSSERVER=your.news.server

# If you want to use a Palm device with Linux, uncomment the two lines below.
# For some (older) Palm Pilots, you might need to set a lower baud rate
# e.g. 57600 or 38400; lowest is 9600 (very slow!)
#
#export PILOTPORT=/dev/pilot
#export PILOTRATE=115200

test -s ~/.alias && . ~/.alias || true

xrandr --output eDP-1 --brightness 0.5
xrandr --output HDMI-1 --brightness 0.5

#configure system settings-----------------------------
gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'
gsettings set org.gnome.desktop.notifications show-banners false
gsettings set org.gnome.desktop.notifications show-in-lock-screen false
xrandr --output HDMI-1 --left-of eDP-1
gsettings set org.gnome.desktop.input-sources sources "[('xkb', 'us'), ('ibus', 'mozc-jp')]"
timedatectl set-timezone Asia/Tokyo
gsettings set org.gnome.shell favorite-apps []

#configure system settings from tweaks-----------------------------
gsettings set org.gnome.desktop.interface text-scaling-factor 1.2
gsettings set org.gnome.desktop.input-sources xkb-options "['ctrl:nocaps']"
gsettings set org.gnome.desktop.search-providers disable-external true
gsettings set org.gnome.desktop.interface gtk-key-theme 'Emacs'

PROMPT_COMMAND="printf '\n';$PROMPT_COMMAND"
export PS1="\W \$"
