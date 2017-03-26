# ===== FEDORA 25 INSTALLS ====== #

# For ATOM EDITR download: https://github.com/atom/atom/releases/tag/v1.15.0
# Install thunderbird e-mail client 

su -


# === RPM FUSION + CODECS

dnf -y install --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-stable.noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-stable.noarch.rpm

dnf -y install gstreamer-plugins-bad gstreamer-plugins-bad-free-extras gstreamer-plugins-bad-nonfree gstreamer-plugins-ugly gstreamer-ffmpeg

dnf -y install gstreamer1-libav gstreamer1-plugins-bad-free-extras gstreamer1-plugins-bad-freeworld gstreamer1-plugins-base-tools gstreamer1-plugins-good-extras gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-good gstreamer1-plugins-base gstreamer1

dnf -y install gstreamer gstreamer-ffmpeg gstreamer-plugins-bad gstreamer-plugins-bad-free gstreamer-plugins-bad-free-extras gstreamer-plugins-bad-nonfree gstreamer-plugins-base gstreamer-plugins-good gstreamer-plugins-ugly faad2 faac libdca wget compat-libstdc++-33 compat-libstdc++-296  xine-lib-extras-freeworld

dnf -y install gstreamer1-plugins-base gstreamer1-plugins-good gstreamer1-plugins-ugly gstreamer1-plugins-bad-free gstreamer1-plugins-bad-free gstreamer1-plugins-bad-freeworld gstreamer1-plugins-bad-free-extras ffmpeg


# === FLASH

rpm -ivh http://linuxdownload.adobe.com/adobe-release/adobe-release-x86_64-1.0-1.noarch.rpm
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-adobe-linux
dnf install flash-plugin alsa-plugins-pulseaudio libcurl -y

# === GNOME startup manager
sudo yum install gnome-tweak-tool -y

# === ATOM editor
# Download from https://github.com/atom/atom/releases/tag/v1.15.0
sudo dnf install ./atom.x86_64.rpm -y

# REDSHIFT ( good for sleep )
sudo dnf install redshift -y
sudo dnf copr enable mystro256/gnome-redshift -y
sudo dnf install gnome-shell-extension-redshift --allowerasing -y

# OpenWeather
sudo dnf install gnome-shell-extension-openweather -y

# TMUX (help terminal)
sudo dnf install tmux -y

# Install nano
dnf -y install nano -y

# Install vlc
dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm -y
dnf -y install vlc -y

#Install virtualenv
pip3 install virtualenv -y

#Install Google Chrome
cat << EOF > /etc/yum.repos.d/google-chrome.repo
[google-chrome]
name=google-chrome - \$basearch
baseurl=http://dl.google.com/linux/chrome/rpm/stable/\$basearch
enabled=1
gpgcheck=1
gpgkey=https://dl-ssl.google.com/linux/linux_signing_key.pub
EOF
dnf install google-chrome-stable -y
