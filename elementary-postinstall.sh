#
#
# TODO
#
# Teamviewer, quelques wallpapers-pack ou plank themes
# elementary-plus


# Clear the Terminal
clear

# Zenity
GUI=$(zenity --list --checklist \
	--height 400 \
	--width 900 \
	--title="Script Post-Installation elementary OS 0.3 Freya" \
	--text "Sélectionner une ou plusieurs action(s) à éxécuter." \
	--column=Cochez \
	--column=Actions \
	--column=Description \
	FALSE "Mise à jour du Système" "Mise à jour de la liste des paquets et des applications déjà installées."  \
	FALSE "Accélération de la mémoire" "Installation de preload et de zRAM." \
	FALSE "Installer Ubuntu Restricted Extras" "Installation des paquets sous copyrights (mp3, avi, mpeg, TrueType, Java, Flash, Codecs)." \
	FALSE "Installer Extra Multimedia Codecs" "Installation des codecs multimédia additionnels." \
	FALSE "Installer Support pour DVD encrypté" "Installation du support pour lire les DVDs encryptés." \
	FALSE "Installer Support pour les formats d'archivage" "Installation du support pour formats d'archivage (zip,rar,7z...)" \
	FALSE "Installer GDebi" "Installs GDebi. A simple tool to install deb files." \
	FALSE "Installer Google Chrome" "Installe Google Chrome, le navigateur Google." \
	FALSE "Installer Chromium" "Installe Chromium, la version opensource de Chrome." \
	FALSE "Installer Firefox" "Installe Firefox, le navigateur libre et opensource." \
	FALSE "Installer Liferea" "Installe Liferea, un aggrégateur de flux opensource." \
	FALSE "Installer VLC" "Installe VLC, le lecteur multimédia." \
	FALSE "Installer Transmission" "Installe the Transmission, le client bitorrent." \
	FALSE "Installer Atom" "Installe Atom, un éditeur de texte du 21ème siècle." \
	FALSE "Installer Sublime Text 3" "Installe Sublime Text 3, un puissant éditeur de texte" \
	FALSE "Installer LibreOffice" "Installe LibreOffice, la suite bureautique libre." \
	FALSE "Installer elementary Tweaks" "Installe elementary Tweaks pour avoir plus d'options de configuration." \
	FALSE "Installer Vocal" "Installe vocal, application de podcasts." \
	FALSE "Installer envelope" "Installe envelope, application de gestion financière." \
	FALSE "Installer darktable" "Installe darktable, logiciel de traitement de fichier RAW." \
	FALSE "Installer rapid-photo-downloader" "Installe rapid-photo-downloader, logiciel d'importation de photos depuis supports externes." \
	FALSE "Installer Gimp et GMIC" "Installe le logiciel de retouche GIMP et son extension GMIC." \
	FALSE "Installer Inkscape" "Installe le logiciel de vectorisation Inkscape." \
	FALSE "Installer dropbox" "Installe dropbox avec les icones monochromes elementary." \
	FALSE "Installer MEGA" "Installe MEGASync pour le cloud de MEGA." \
	FALSE "Installer eVNC" "Installe evnv, l'application de contrôle à distance." \
	FALSE "Installer Taxi" "Installe taxi, l'application de protocole FTP." \
	FALSE "Installer eRadio" "Installe eradio, l'application de streaming radio." \
	FALSE "Installer spotify" "Installe Spotify, l'application de service streaming de musique." \
	FALSE "Installer steam" "Installe Steam, la plateforme en ligne de Jeux." \
	FALSE "Installer playonlinux" "Installe PlayOnLinux, le front-end de l'émulateur Wine." \
	FALSE "Installer telegram" "Installe Telegram, version desktop de l'application SMS." \
	FALSE "Installer elementary-wallpapers-extra" "Installe les fonds d'écran de Luna." \
	FALSE "Réparer les paquets cassés" "Vas réparer les paquets cassés." \
	FALSE "Nettoyage de primptemps" "Retire les paquets qui ne sont plus nécéssaires." \
	FALSE "Installer le Kernel CK" "Installe le Kernel CK, optimisé BFQ scheduler." \
	FALSE "Installer le driver NVIDIA" "Installe le driver NVIDIA 340+ (PPA mamarley)" \
	--separator=', ');

# Mise à jour du Système
if [[ $GUI == *"Mise à jour du Système"* ]]
then
	clear
	echo "Mise à jour du Système..."
	echo ""
	sudo apt-get -y update
	sudo apt-get -y upgrade
fi

# Accélération de la mémoire
if [[ $GUI == *"Accélération de la mémoire"* ]]
then
	clear
	echo "Accélération de la mémoire..."
	echo ""
	sudo apt-get -y install preload
	sudo apt-get -y install zram-config
fi

# Installer Ubuntu Restricted Extras
if [[ $GUI == *"Installer Ubuntu Restricted Extras"* ]]
then
	clear
	echo "Installation des Ubuntu Restricted Extras..."
	echo ""
    echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
	sudo apt-get -y install ubuntu-restricted-extras ttf-mscorefonts-installer ubuntu-restricted-addons
fi

# Installer Extra Multimedia Codecs
if [[ $GUI == *"Installer Extra Multimedia Codecs"* ]]
then
	clear
	echo "Installation des Extra Multimedia Codecs..."
	echo ""
	sudo apt-get -y install libavcodec-extra-53 gstreamer0.10-plugins-bad-multiverse
fi

# Installer le Support pour DVD encrypté
if [[ $GUI == *"Installer Support pour DVD encrypté"* ]]
then
	clear
	echo "Installation du Support pour DVD encrypté..."
	echo ""
	sudo apt-get -y install libdvdread4
	sudo /usr/share/doc/libdvdread4/install-css.sh
fi

# Installer le Support pour les formats d'archivage
if [[ $GUI == *"Installer Support pour les formats d'archivage"* ]]
then
	clear
	echo "Installation du Support pour les formats d'archivage"
	echo ""
	sudo apt-get -y install unace rar unrar p7zip-rar p7zip zip unzip sharutils uudeview mpack arj cabextract
fi

# Installer GDebi
if [[ $GUI == *"Installer GDebi"* ]]
then
	clear
	echo "Installation de GDebi..."
	echo ""
	sudo apt-get -y install gdebi
fi

# Installer Google Chrome Action
if [[ $GUI == *"Installer Google Chrome"* ]]
then
	clear
	echo "Installation de Google Chrome..."
	echo ""
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
    sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
    sudo apt-get -y install google-chrome-stable
fi

# Installer Chromium
if [[ $GUI == *"Installer Chromium"* ]]
then
	clear
	echo "Installation de Chromium..."
	echo ""
	sudo apt-get -y install chromium-browser
fi

# Installze Firefox
if [[ $GUI == *"Installer Firefox"* ]]
then
	clear
	echo "Installation de Firefox..."
	echo ""
	sudo apt-get -y install firefox
fi

# Installer Liferea
if [[ $GUI == *"Installer Liferea"* ]]
then
	clear
	echo "Installation de Liferea..."
	echo ""
	sudo apt-get -y install liferea
fi

# Installer VLC
if [[ $GUI == *"Installer VLC"* ]]
then
	clear
	echo "Installation de VLC..."
	echo ""
	sudo apt-get -y install vlc
fi

# Install Transmission Action
if [[ $GUI == *"Installer Transmission"* ]]
then
	clear
	echo "Installing Transmission..."
	echo ""
	sudo apt-get -y install transmission
fi

# Installer Atom
if [[ $GUI == *"Installer Atom"* ]]
then
	clear
	echo "Installation de Atom..."
	echo ""
	sudo add-apt-repository -y ppa:webupd8team/atom
	sudo apt-get -y update
	sudo apt-get -y install atom
fi

# Installer Sublime Text 3
if [[ $GUI == *"Installer Sublime Text 3"* ]]
then
	clear
	echo "Installation de Sublime Text 3..."
	echo ""
	sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
	sudo apt-get -y update
	sudo apt-get -y install sublime-text-installer
fi

# Installer LibreOffice
if [[ $GUI == *"Installer LibreOffice"* ]]
then
	clear
	echo "Installation de LibreOffice..."
	echo ""
	sudo apt-get -y install libreoffice
fi

# Installer elementary Tweaks
if [[ $GUI == *"Installer elementary Tweaks"* ]]
then
	clear
	echo "Installation de elementary Tweaks..."
	echo ""
	sudo add-apt-repository -y ppa:elementaryos-fr-community/ppa
	sudo apt-get -y update
	sudo apt-get -y install elementary-tweaks
fi

# Installer Vocal
if [[ $GUI == *"Installer Vocal"* ]]
then
	clear
	echo "Installation de Vocal..."
	echo ""
	sudo add-apt-repository -y ppa:elementaryos-fr-community/ppa
	sudo apt-get -y update
	sudo apt-get -y install vocal
fi

# Installer envelope
if [[ $GUI == *"Installer envelope"* ]]
then
	clear
	echo "Installation de envelope..."
	echo ""
	sudo add-apt-repository -y ppa:elementaryos-fr-community/ppa
	sudo apt-get -y update
	sudo apt-get -y install envelope
fi

# Installer darktable
if [[ $GUI == *"Installer darktable"* ]]
then
	clear
	echo "Installation de darktable..."
	echo ""
	sudo add-apt-repository -y ppa:pmjdebruijn/darktable-release
	sudo apt-get -y update
	sudo apt-get -y install darktable
fi

# Installer rapid-photo-downloader
if [[ $GUI == *"Installer rapid-photo-downloader"* ]]
then
	clear
	echo "Installation de rapid-photo-downloader..."
	echo ""
    sudo add-apt-repository -y ppa:dlynch3
    sudo apt-get -y  update
    sudo apt-get -y  install rapid-photo-downloader
fi

# Installer GIMP et GMIC
if [[ $GUI == *"Installer gimp et gmic"* ]]
then
	clear
	echo "Installation de gimp et gmic..."
	echo ""
    sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp
    sudo apt-get -y update
    sudo apt-get -y install gmic gimp-gmic
fi

# Installer Inkscape
if [[ $GUI == *"Installer inkscape"* ]]
then
	clear
	echo "Installation de inkscape..."
	echo ""
	sudo apt-get -y install inkscape
fi

# Installer Dropbox
if [[ $GUI == *"Installer dropbox"* ]]
then
	clear
	echo "Installation de dropbox..."
	echo ""
	sudo apt-get -y install nautilus-dropbox
	echo "Installation des icones dropbox..."
	echo ""
    git clone https://github.com/zant95/elementary-dropbox /tmp/elementary-dropbox
    bash /tmp/elementary-dropbox/install.sh
fi

# Installer MEGA
if [[ $GUI == *"Installer MEGA"* ]]
then
	clear
	echo "Installation de MEGASync..."
	echo ""
	wget -q -O - https://mega.nz/linux/MEGAsync/xUbuntu_14.04/Release.key | sudo apt-key add -
	if [[ $(uname -m) == "i686" ]]
	then
		wget -O /tmp/megasync_2.0.0_i386.deb https://mega.co.nz/linux/MEGAsync/xUbuntu_14.04/i386/megasync_2.0.0_i386.deb
		sudo dpkg -i /tmp/megasync_2.0.0_i386.deb
	elif [[ $(uname -m) == "x86_64" ]]
	then
		wget -O /tmp/megasync_2.0.0_amd64.deb https://mega.co.nz/linux/MEGAsync/xUbuntu_14.04/amd64/megasync_2.0.0_amd64.deb
		sudo dpkg -i /tmp/megasync_2.0.0_amd64.deb
	fi
	echo ""
    git clone https://github.com/cybre/megasync-elementary /tmp/megasync-elementary
    bash /tmp/megasync-elementary/install.sh
fi

# Installer evnc
if [[ $GUI == *"Installer evnc"* ]]
then
	clear
	echo "Installation de evnc..."
	echo ""
	sudo add-apt-repository -y ppa:elementaryos-fr-community/ppa
	sudo apt-get -y update
	sudo apt-get -y install evnc
fi

# Installer taxi
if [[ $GUI == *"Installer taxi"* ]]
then
	clear
	echo "Installation de taxi..."
	echo ""
	sudo add-apt-repository -y ppa:elementaryos-fr-community/ppa
	sudo apt-get -y update
	sudo apt-get -y install taxi
fi

# Installer eradio
if [[ $GUI == *"Installer eradio"* ]]
then
	clear
	echo "Installation de eradio..."
	echo ""
	sudo add-apt-repository -y ppa:elementaryos-fr-community/ppa
	sudo apt-get -y update
	sudo apt-get -y install eradio
fi

# Installer spotify
if [[ $GUI == *"Installer spotify"* ]]
then
	clear
	echo "Installation de spotify..."
	echo ""
	sudo add-apt-repository -y "deb http://repository.spotify.com stable non-free"
	sudo apt-key -y adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
	sudo apt-get -y update
	sudo apt-get -y install spotify-client
fi

# Installer steam
if [[ $GUI == *"Installer steam"* ]]
then
	clear
	echo "Installation de steam..."
	echo ""
	sudo apt-get -y update
	sudo apt-get -y install steam-launcher
fi

# Installer playonlinux
if [[ $GUI == *"Installer playonlinux"* ]]
then
	clear
	echo "Installation de playonlinux..."
	echo ""
	sudo apt-get -y update
	sudo apt-get -y install playonlinux
fi

# Installer telegram
if [[ $GUI == *"Installer telegram"* ]]
then
	clear
	echo "Installation de telegram..."
	echo ""
	sudo add-apt-repository -y ppa:atareao/telegram
	sudo apt-get -y update
	sudo apt-get -y install telegram
fi

# Installer elementary-wallpapers-extra
if [[ $GUI == *"Installer elementary-wallpapers-extra"* ]]
then
	clear
	echo "Installation de elementary-wallpapers-extra..."
	echo ""
	sudo apt-get -y install elementary-wallpapers-extra
fi

# Fix Broken Packages Action
if [[ $GUI == *"Fix Broken Packages"* ]]
then
	clear
	echo "Fixing the broken packages..."
	echo ""
	sudo apt-get -y -f install
fi

# Nettoyage de primptemps
if [[ $GUI == *"Nettoyage de primptemps"* ]]
then
	clear
	echo "Nettoyage de primptemps en cours..."
	echo ""
	sudo apt-get -y autoremove
	sudo apt-get -y autoclean
fi

# Installer le Kernel CK
if [[ $GUI == *"Installer le Kernel CK"* ]]
then
	clear
	echo "Installation du kernel CK..."
	echo ""
	sudo add-apt-repository -y ppa:nick-athens30/trusty-ck
	sudo apt-get -y update
	sudo apt-get -y install linux-image-generic-ck linux-headers-generic-ck
	echo "Pensez à rebooter pour profiter de ce kernel..."
	echo ""
fi

# Installer le Kernel CK
if [[ $GUI == *"Installer le driver NVIDIA"* ]]
then
	clear
	echo "Installation du driver NVIDIA..."
	echo ""
	sudo add-apt-repository -y ppa:mamarley/nvidia
	sudo apt-get -y update
	sudo apt-get -y install nvidia-settings nvidia-340
	echo "Pensez à rebooter..."
	echo ""
fi

# Notification
clear
notify-send -i utilities-terminal elementary-script "Toutes les tâches ont été effactuées avec succès!".
