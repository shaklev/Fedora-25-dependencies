# ===== FEDORA 25 INSTALLS ====== #

# For ATOM EDITR download: https://github.com/atom/atom/releases/tag/v1.15.0
# Install thunderbird e-mail client 

su -



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

