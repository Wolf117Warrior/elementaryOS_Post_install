#!/bin/bash
#################################################################################################################
#
#
#
#
#            eeeeeeeeeeeeeeeee
#         eeeeeeeeeeeeeeeeeeeeeee
#       eeeee  eeeeeeeeeeee   eeeee
#     eeee   eeeee       eee     eeee
#    eeee   eeee          eee     eeee
#   eee    eee            eee       eee
#   eee   eee            eee        eee
#   ee    eee           eeee       eeee
#   ee    eee         eeeee      eeeeee
#   ee    eee       eeeee      eeeee ee
#   eee   eeee   eeeeee      eeeee  eee
#   eee    eeeeeeeeee     eeeeee    eee
#   eeeeeeeeeeeeeeeeeeeeeeee    eeeee
#    eeeeeeee eeeeeeeeeeee      eeee
#        eeeee                 eeeee
#          eeeeeee         eeeeeee
#             eeeeeeeeeeeeeeeee
#
#
#
#
#################################################################################################################
#
# TODO
# hexchat ?
#
# Ordre menu
# SYSTEME: upgrade, mémoire, NVIDIA, ppa oibaf, TLP, tweaks, boot-repair
# CUSTOMISATION: wallpapers luna, conky-manager
# UTILITAIRES: archivage, Gdebi, atom, sublime text, deja-dup, ADB, timeshift, aptik, redshift
# BUREAUTIQUE: libreoffice, envelope
# MULTIMEDIA: restricted, codecs, dvd, VLC, vocal, lollypop, spotify, tomahawk
# INTERNET: Chrome, chromium, Firefox, Nylas N1, feedreader, transmission, Vivaldi, dropbox, mega, grive, telegram, polari, slack
# INFOGRAPHIE: gimp, darktable, inkscape, rapid photo downloader
# JEUX: steam, itch.io, 0.A.D, FlightGear
# DIVERS: paquet cassés, nettoyage

# Clear the Terminal
clear
notify-send  --icon=dialog-error "Attention" "Le mot de passe root vous sera demandé" -t 10000

# Zenity
GUI=$(zenity --list --checklist \
	--height 400 \
	--width 900 \
	--title="Script Post-Installation elementary OS 0.4 Loki" \
	--text "Sélectionner une ou plusieurs action(s) à éxécuter." \
	--column=Cochez \
	--column=Actions \
	--column=Description \
	FALSE "Mise à jour du Système" "Mise à jour de la liste des paquets et des applications déjà installées."  \
	FALSE "Accélération de la mémoire" "Installation de preload et de zRAM." \
	FALSE "Memtest86+" "Installation de memtest86+ pour tester la RAM." \
	FALSE "Kernel Xenial BFS/BFQ" "Installe le Kernel Xenial LTS optimisé BFQ/BFS scheduler." \
	FALSE "Driver NVIDIA" "Installe le driver NVIDIA (ppa graphics-drivers) pour GTX 7XX et +." \
	FALSE "Oibaf" "Installe le PPA Oibaf pour les versions git des drivers graphiques libres (xorg-server-nouveau/intel/ati)" \
	FALSE "TLP" "Installe TLP pour augmenter la durée de vie de la batterie et réduire la surchauffe." \
	FALSE "Tweaks" "Installe elementary Tweaks pour avoir plus d'options de configuration." \
	FALSE "Boot Repair" "Installe boot-repair, réparateur de GRUB." \
	FALSE "Elementary-wallpapers-extra" "Installe les fonds d'écran de Luna." \
	FALSE "elementaryplus" "Installe le thème d'icones indispensable elementary plus." \
	FALSE "Neofetch" "Le remplacant de Screenfetch" \
	FALSE "Conky-Manager" "Application pour gérer les fichier de conf de conky" \
	FALSE "Support formats d'archivage" "Installation du support pour formats d'archivage (zip,rar,7z...)." \
	FALSE "GDebi" "Installe GDebi. Outil pour installer les fichiers .deb" \
	FALSE "Atom" "Installe Atom, un éditeur de texte du 21ème siècle." \
	FALSE "Sublime Text 3" "Installe Sublime Text 3, un puissant éditeur de texte." \
	FALSE "Deja Dup" "Installe Deja Dup,  utilitaire pour sauvegarde." \
	FALSE "ADB" "Installe ADB, outil pour téléphones sous Android." \
  FALSE "Pushbullet" "Installe l'indicator Pushbullet (interactions entre PC et vos appareils Android)." \
	FALSE "Time Shift" "Installe timeshift pour les restaurations système." \
	FALSE "Aptik" "Installe aptik pour sauvegardes de paquets, thèmes,icones..." \
	FALSE "Redshift" "Installe redshift pour adapter la luminosité de l'écran en fonction du jour." \
	FALSE "udisks-indicator" "Installe udisks-indicator, indicator pour indiquer l'utilisation des disques." \
	FALSE "LibreOffice" "Installe LibreOffice, la suite bureautique libre." \
	FALSE "WPS Office" "Installe WPS Office, une autre suite bureautique compatible M$ Office." \
	FALSE "Master PDF Editor" "Éditeur de fichiers PDF." \
	FALSE "Ubuntu Restricted Extras" "Installation des paquets sous copyrights (mp3, avi, mpeg, TrueType, Java, Flash, Codecs)." \
	FALSE "Extra Multimedia Codecs" "Installation des codecs multimédia additionnels." \
	FALSE "Support DVD encrypté" "Installation du support pour lire les DVDs encryptés." \
	FALSE "VLC" "Installe VLC, le lecteur multimédia." \
	FALSE "Vocal" "Installe vocal, application de podcasts." \
	FALSE "Clementine" "Installe Clementine, lecteur de musique." \
	FALSE "Lollypop" "Installe lollypop, lecteur de musique." \
	FALSE "Tomahawk" "Installe tomahawk, lecteur de musique." \
	FALSE "Harmony" "Installe harmony, lecteur de musique en ligne" \
	FALSE "eRadio" "Installe eradio, l'application de streaming radio." \
	FALSE "Spotify" "Installe Spotify, l'application de service streaming de musique." \
	FALSE "Google Chrome" "Installe Google Chrome, le navigateur Google." \
	FALSE "Chromium" "Installe Chromium, la version opensource de Chrome." \
	FALSE "Firefox" "Installe Firefox, le navigateur libre et opensource." \
	FALSE "Nylas N1" "Installe Nylas N1, un superbe client mail." \
	FALSE "Vivaldi" "Installe Vivaldi, le nouveau navigateur (version Tech Preview)." \
	FALSE "FeedReader" "Installe FeedReader, un aggrégateur de flux opensource." \
	FALSE "Transmission" "Installe Transmission, le client bitorrent." \
	FALSE "Dropbox" "Installe dropbox avec les icones monochromes elementary." \
	FALSE "MEGA" "Installe MEGASync pour le cloud de MEGA avec les icones monochromes elementary." \
	FALSE "Grive 2" "Installe Grive 2 pour le cloud Google Drive." \
	FALSE "Skype" "Installe Skype." \
	FALSE "Telegram" "Installe Telegram, version desktop de l'application SMS." \
	FALSE "Slack" "Installe Slack, version desktop de l'application slack" \
	FALSE "Polari" "Installe le client IRC Polari." \
	FALSE "Tor messenger" "Installe le client de messagerie anonymisée" \
	FALSE "Discord" "Installe le client de messagerie pour gamers" \
	FALSE "Gimp et GMIC" "Installe le logiciel de retouche GIMP et son extension GMIC." \
	FALSE "Inkscape" "Installe le logiciel de vectorisation Inkscape." \
	FALSE "Darktable" "Installe darktable, logiciel de traitement de fichier RAW." \
	FALSE "Rapid-photo-downloader" "Installe rapid-photo-downloader, logiciel d'importation de photos depuis supports externes." \
	FALSE "Steam" "Installe Steam, la plateforme en ligne de Jeux." \
	FALSE "itch.io" "Installe itch.io, une autre plateforme de jeux." \
	FALSE "0.A.D" "Installe 0.A.D, le jeu de stratégie en temps réel dans l'époque Antique." \
	FALSE "Wesnoth" "Installe Bataille de Wesnoth, le jeu de stratégie au tour par tour" \
	FALSE "FlightGear" "Installe FlightGear, le simulateur de vol OpenSource." \
	FALSE "Unvanquished" "Installe Unvanquished, jeux FPS contre des Aliens." \
	FALSE "War Thunder" "Installe War Thunder, simulateur de chars et avions de combat en ligne (64bits seulement!)" \
	FALSE "oh-my-zsh" "Installe zsh et oh-my-zsh puis le met en place par défaut à la place de bash" \
	FALSE "Gufw" "Installe le logiciel de parefeu Gufw." \
	FALSE "ClamTK" "Installe l'antivirus ClamAV et son GUI ClamTK." \
	FALSE "Keepass X" "Installe Keepass X pour le stockage et cryptage de vos mots de passe." \
	FALSE "Fern" "Installe Fern pour cracker les mots de passe wifi" \
	FALSE "Réparer les paquets cassés" "Vas réparer les paquets cassés." \
	FALSE "Nettoyage de prinptemps" "Retire les paquets qui ne sont plus nécessaires." \
	--separator=', ');

# Mise à jour du Système
if [[ $GUI == *"Mise à jour du Système"* ]]
then
	clear
	echo "Mise à jour du Système..."
	echo ""
	notify-send -i system-software-update "elementary OS Post Install" "Mise à jour du système en cours" -t 5000
	sudo apt -y update
	sudo apt -y upgrade
fi

# Accélération de la mémoire
if [[ $GUI == *"Accélération de la mémoire"* ]]
then
	clear
	echo "Accélération de la mémoire..."
	echo ""
	notify-send -i system-software-update "elementary OS Post Install" "Installation de Preload" -t 5000
	sudo apt -y install preload
	notify-send -i system-software-update "elementary OS Post Install" "Installation de zRAM" -t 5000
	sudo apt -y install zram-config
fi

# Memtest86+
if [[ $GUI == *"Memtest86+"* ]]
then
	clear
	echo "Installation de Memtest86+..."
	echo ""
	notify-send -i system-software-update "elementary OS Post Install" "Installation de Memtest86+" -t 5000
	sudo apt -y install memtest86+
fi

# Installer Ubuntu Restricted Extras
if [[ $GUI == *"Ubuntu Restricted Extras"* ]]
then
	clear
	echo "Installation des Ubuntu Restricted Extras..."
	echo ""
	notify-send -i software-properties "elementary OS Post Install" "Installation des Ubuntu Restricted Extras" -t 5000
    echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
	sudo apt -y install ubuntu-restricted-extras ttf-mscorefonts-installer ubuntu-restricted-addons
fi

# Installer Extra Multimedia Codecs
if [[ $GUI == *"Extra Multimedia Codecs"* ]]
then
	clear
	echo "Installation des Extra Multimedia Codecs..."
	echo ""
	notify-send -i multimedia-video-player "elementary OS Post Install" "Installation des codecs" -t 5000
	sudo apt -y install libavcodec-extra-53 gstreamer0.10-plugins-bad-multiverse
fi

# Installer le Support pour DVD encrypté
if [[ $GUI == *"Support DVD encrypté"* ]]
then
	clear
	echo "Installation du Support pour DVD encrypté..."
	echo ""
	notify-send -i media-dvd "elementary OS Post Install" "Installation de libdvdread4" -t 5000
	sudo apt -y install libdvd-pkg
	sudo dpkg-reconfigure libdvd-pkg
fi

# Installer le Support pour les formats d'archivage
if [[ $GUI == *"Support formats d'archivage"* ]]
then
	clear
	echo "Installation du Support pour les formats d'archivage"
	echo ""
	notify-send -i file-roller "elementary OS Post Install" "Installation de zip,unrar,unace,cabextract...etc" -t 5000
	sudo apt -y install unace rar unrar p7zip-rar p7zip zip unzip sharutils uudeview mpack arj cabextract
fi

# Installer GDebi
if [[ $GUI == *"GDebi"* ]]
then
	clear
	echo "Installation de GDebi..."
	echo ""
	notify-send -i package "elementary OS Post Install" "Installation de GDebi" -t 5000
	sudo apt -y install gdebi
fi

# Installer Google Chrome Action
if [[ $GUI == *"Google Chrome"* ]]
then
	clear
	echo "Installation de Google Chrome..."
	echo ""
  	notify-send -i web-browser "elementary OS Post Install" "Installation de Google Chrome" -t 5000
	cd /tmp
	wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
	sudo dpkg -i --force-depends google-chrome-stable_current_amd64.deb
fi

# Installer Chromium
if [[ $GUI == *"Chromium"* ]]
then
	clear
	echo "Installation de Chromium..."
	echo ""
	notify-send -i web-browser "elementary OS Post Install" "Installation de Chromium" -t 5000
	sudo apt -y install chromium-browser
fi

# Installer Firefox
if [[ $GUI == *"Firefox"* ]]
then
	clear
	echo "Installation de Firefox..."
	echo ""
	notify-send -i web-browser "elementary OS Post Install" "Installation de Firefox" -t 5000
	sudo apt -y install firefox
fi

# Installer Nylas N1
if [[ $GUI == *"Nylas N1"* ]]
then
	clear
	echo "Installation de Nylas N1..."
	echo ""
	notify-send -i internet-mail "elementary OS Post Install" "Installation de Nylas N1" -t 5000
	if [[ $(uname -m) == "i686" ]]
	then
		wget -O /tmp/N1.deb https://edgehill.nylas.com/download?platform=linux-deb
		sudo dpkg -i /tmp/N1.deb
	elif [[ $(uname -m) == "x86_64" ]]
	then
		wget -O /tmp/N1.deb https://edgehill.nylas.com/download?platform=linux-deb
		sudo dpkg -i /tmp/N1.deb
	fi
fi

# Installer Vivaldi
if [[ $GUI == *"Vivaldi"* ]]
then
	clear
	echo "Installation de Vivaldi..."
	echo ""
	notify-send -i web-browser "elementary OS Post Install" "Installation de Vivaldi" -t 5000
	if [[ $(uname -m) == "i686" ]]
	then
		wget -O /tmp/vivaldi_TP4.1.0.219.50-1_i386.deb https://vivaldi.com/download/vivaldi_TP4.1.0.219.50-1_i386.deb
		sudo dpkg -i /tmp/vivaldi_TP4.1.0.219.50-1_i386.deb
	elif [[ $(uname -m) == "x86_64" ]]
	then
		wget -O /tmp/vivaldi_TP4.1.0.219.50-1_amd64.deb https://vivaldi.com/download/vivaldi_TP4.1.0.219.50-1_amd64.deb
		sudo dpkg -i /tmp/vivaldi_TP4.1.0.219.50-1_amd64.deb
	fi
fi

# Installer FeedReader
if [[ $GUI == *"FeedReader"* ]]
then
	clear
	echo "Installation de FeedReader..."
	echo ""
	notify-send -i internet-news-reader "elementary OS Post Install" "Installation de FeedReader" -t 5000
	sudo add-apt-repository -y ppa:eviltwin1/feedreader-stable
	sudo apt -y update
	sudo apt -y install feedreader
fi

# Installer VLC
if [[ $GUI == *"VLC"* ]]
then
	clear
	echo "Installation de VLC..."
	echo ""
	notify-send -i multimedia-video-player "elementary OS Post Install" "Installation de VLC" -t 5000
	sudo apt -y install vlc
fi

# Install Transmission Action
if [[ $GUI == *"Transmission"* ]]
then
	clear
	echo "Installing Transmission..."
	echo ""
	notify-send -i applications-filesharing "elementary OS Post Install" "Installation de Transmission" -t 5000
	sudo add-apt-repository  -y ppa:transmissionbt
	sudo apt -y update
	sudo apt  -y install transmission
fi

# Installer Atom
if [[ $GUI == *"Atom"* ]]
then
	clear
	echo "Installation de Atom..."
	echo ""
	notify-send -i accessories-text-editor "elementary OS Post Install" "Installation d'Atom" -t 5000
	sudo add-apt-repository -y ppa:webupd8team/atom
	sudo apt -y update
	sudo apt -y install atom
	apm install atom-beautify emmet file-icons git-control git-time-machine highlight-selected minimap minimap-find-and-replace minimap-highlight-selected pigments rest-client todo-show w3c-validation
fi

# Installer Sublime Text 3
if [[ $GUI == *"Sublime Text 3"* ]]
then
	clear
	echo "Installation de Sublime Text 3..."
	echo ""
	notify-send -i accessories-text-editor "elementary OS Post Install" "Installation de Sublime Text 3" -t 5000
	sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
	sudo apt -y update
	sudo apt -y install sublime-text-installer
fi

# Installer Deja Dup
if [[ $GUI == *"Deja Dup"* ]]
then
	clear
	echo "Installation de Deja Dup..."
	echo ""
	notify-send -i locked "elementary OS Post Install" "Installation de Deja Dup" -t 5000
	sudo apt -y update
	sudo apt -y install deja-dup
fi

# Installer ADB
if [[ $GUI == *"ADB"* ]]
then
	clear
	echo "Installation du SDK Android..."
	echo ""
	notify-send -i applications-office "elementary OS Post Install" "Installation du SDK Android" -t 5000
	sudo wget -O /etc/udev/rules.d/51-android.rules https://raw.githubusercontent.com/NicolasBernaerts/ubuntu-scripts/master/android/51-android.rules
	sudo chmod a+r /etc/udev/rules .d/51-android.rules
	sudo service udev restart
	sudo apt install android-tools-adb android-tools-fastboot
fi

# Installer timeshift
if [[ $GUI == *"Time Shift"* ]]
then
	clear
	echo "Installation de Time Shift..."
	echo ""
	notify-send -i applications-system "elementary OS Post Install" "Installation de timeshift" -t 5000
	sudo add-apt-repository -y ppa:teejee2008/ppa
	sudo apt -y update
	sudo apt -y install timeshift
fi

# Installer redshift
if [[ $GUI == *"Redshift"* ]]
then
	clear
	echo "Compilation et Installation de redshift..."
	echo ""
	notify-send -i display "elementary OS Post Install" "Installation de Redshift" -t 5000
	sudo apt install -y redshift-gtk
	wget -O $HOME/.config/redshift.conf https://raw.githubusercontent.com/Devil505/elementaryos-postinstall/master/redshift.conf
fi

# Installer aptik
if [[ $GUI == *"Aptik"* ]]
then
	clear
	echo "Installation de Aptik..."
	echo ""
	notify-send -i applications-system "elementary OS Post Install" "Installation de aptik" -t 5000
	sudo add-apt-repository -y ppa:teejee2008/ppa
	sudo apt -y update
	sudo apt -y install aptik
fi

# Installer LibreOffice
if [[ $GUI == *"LibreOffice"* ]]
then
	clear
	echo "Installation de LibreOffice..."
	echo ""
	notify-send -i applications-office "elementary OS Post Install" "Installation de Libreoffice" -t 5000
	sudo add-apt-repository -y ppa:libreoffice/ppa
	sudo add-apt-repository -y ppa:shimmerproject/daily
	sudo apt -y update
	sudo apt -y install libreoffice libreoffice-style-elementary
fi

# Installer Master PDF Editor
if [[ $GUI == *"Master PDF Editor"* ]]
then
	clear
	echo "Installation de Master PDF Editor..."
	echo ""
	notify-send -i applications-office "elementary OS Post Install" "Installation de Master PDF Editor" -t 5000
	cd /tmp
	wget -c http://get.code-industry.net/public/master-pdf-editor-3.7.10_amd64.deb
	sudo dpkg -i master-pdf-editor-3.7.10_amd64.deb
fi

# Installer elementary Tweaks
if [[ $GUI == *"Tweaks"* ]]
then
	clear
	echo "Installation de elementary Tweaks..."
	echo ""
	notify-send -i preferences-desktop "elementary OS Post Install" "Installation d'elementary Tweaks'" -t 5000
	sudo add-apt-repository -y  ppa:philip.scott/elementary-tweaks
	sudo apt -y update
	sudo apt -y install elementary-tweaks
fi

# Installer boot-repair
if [[ $GUI == *"Boot Repair"* ]]
then
	clear
	echo "Installation de boot-repair..."
	echo ""
	notify-send -i applications-system "elementary OS Post Install" "Installation d'elementary Tweaks'" -t 5000
	sudo add-apt-repository -y ppa:yannubuntu/boot-repair
	sudo apt -y update
	sudo apt -y install boot-repair
fi


# Installer conky-manager
if [[ $GUI == *"Conky-Manager"* ]]
then
	clear
	echo "Installation de conky-manager..."
	echo ""
	notify-send -i preferences-desktop "elementary OS Post Install" "Installation de conky-manager'" -t 5000
	sudo add-apt-repository -y ppa:teejee2008/ppa
	sudo apt -y update
	sudo apt -y install conky-manager
fi

# Installer neofetch
if [[ $GUI == *"Neofetch"* ]]
then
	clear
	echo "Installation de neofetch..."
	echo ""
	notify-send -i preferences-desktop "elementary OS Post Install" "Installation de neofetch'" -t 5000
	sudo add-apt-repository -y ppa:dawidd0811/neofetch
	sudo apt -y update
	sudo apt -y install neofetch
fi

# Installer Vocal
if [[ $GUI == *"Vocal"* ]]
then
	clear
	echo "Installation de Vocal..."
	echo ""
	notify-send -i applications-multimedia "elementary OS Post Install" "Installation de Vocal" -t 5000
	sudo add-apt-repository -y ppa:nathandyer/vocal-daily
	sudo apt -y update
	sudo apt -y install vocal
fi

# Installer Lollypop
if [[ $GUI == *"Lollypop"* ]]
then
	clear
	echo "Installation de Lollypop..."
	echo ""
	notify-send -i multimedia-audio-player "elementary OS Post Install" "Installation de Lollypop" -t 5000
	sudo add-apt-repository -y ppa:gnumdk/lollypop
	sudo apt -y update
	sudo apt -y install lollypop
fi

# Installer Tomahawk
if [[ $GUI == *"Tomahawk"* ]]
then
	clear
	echo "Installation de Tomahawk..."
	echo ""
	notify-send -i multimedia-audio-player "elementary OS Post Install" "Installation de Tomahawk" -t 5000
	sudo add-apt-repository -y ppa:tomahawk/ppa
	sudo apt -y update
	sudo apt -y install tomahawk
fi

# Installer Harmony
if [[ $GUI == *"Harmony"* ]]
then
	clear
	echo "Installation de Harmony..."
	echo ""
	notify-send -i multimedia-audio-player "elementary OS Post Install" "Installation de Harmony" -t 5000
	cd /tmp
	wget https://github.com/vincelwt/harmony/releases/download/v0.4.2/harmony-0.4.2-amd64.deb
	sudo apt install libappindicator1 libindicator7
	sudo dpkg -i harmony*.deb
	sudo apt -yf install
fi

# Installer Clementine
if [[ $GUI == *"Clementine"* ]]
then
	clear
	echo "Installation de Clementine..."
	echo ""
	notify-send -i multimedia-audio-player "elementary OS Post Install" "Installation de Clementine" -t 5000
	sudo add-apt-repository -y ppa:me-davidsansome/clementine
 	sudo apt -y update
  	sudo apt -y install clementine
fi

# Installer darktable
if [[ $GUI == *"Darktable"* ]]
then
	clear
	echo "Installation de darktable..."
	echo ""
	notify-send -i applications-photography "elementary OS Post Install" "Installation de Darktable" -t 5000
	sudo add-apt-repository -y ppa:pmjdebruijn/darktable-release
	sudo apt -y update
	sudo apt -y install darktable
fi

# Installer rapid-photo-downloader
if [[ $GUI == *"Rapid-photo-downloader"* ]]
then
	clear
	echo "Installation de rapid-photo-downloader..."
	echo ""
	notify-send -i media-memory-sd "elementary OS Post Install" "Installation de rapid-photo-downloader" -t 5000
	sudo apt -y install python3-pip python3-pyqt5 gir1.2-gudev-1.0 gir1.2-udisks-2.0 gir1.2-gexiv2-0.10 libimage-exiftool-perl libgphoto2-dev python3-distutils-extra
	cd /tmp
	wget https://launchpad.net/rapid/pyqt/0.9.0a4/+download/install.py
	wget https://launchpad.net/rapid/pyqt/0.9.0a4/+download/rapid-photo-downloader-0.9.0a4.tar.gz
	python3 -m pip install --user --upgrade pip
    python3 -m pip install --user --upgrade setuptools
	python3 install.py rapid-photo-downloader-0.9.0a4.tar.gz
	notify-send -i media-memory-sd "elementary OS Post Install" "L'executable de rapid-photo-downloader est dans .local/bin !!!" -t 5000
fi

# Installer GIMP et GMIC
if [[ $GUI == *"Gimp et GMIC"* ]]
then
	clear
	echo "Installation de gimp et gmic..."
	echo ""
	notify-send -i applications-graphics "elementary OS Post Install" "Installation de GIMP avec GMIC" -t 5000
    sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp
    sudo apt -y update
    sudo apt -y install gmic gimp
fi

# Installer Inkscape
if [[ $GUI == *"Inkscape"* ]]
then
	clear
	echo "Installation de inkscape..."
	echo ""
	notify-send -i applications-graphics "elementary OS Post Install" "Installation d'Inkscape'" -t 5000
	sudo apt -y install inkscape
fi

# Installer Dropbox
if [[ $GUI == *"Dropbox"* ]]
then
	clear
	echo "Installation de dropbox..."
	echo ""
	notify-send -i applications-internet "elementary OS Post Install" "Installation de Dropbox avec icones monochromes" -t 5000
	sudo apt -y install git
	git clone https://github.com/zant95/elementary-dropbox /tmp/elementary-dropbox
	bash /tmp/elementary-dropbox/install.sh -y
fi

# Installer MEGA
if [[ $GUI == *"MEGA"* ]]
then
	clear
	echo "Installation de MEGASync..."
	echo ""
	notify-send -i applications-internet "elementary OS Post Install" "Installation de MeGA avec icones monochromes" -t 5000
	sudo apt -y install git
	wget -q -O - https://mega.nz/linux/MEGAsync/xUbuntu_16.04/Release.key | sudo apt-key add -
		wget -O /tmp/megasync-xUbuntu_16.04_amd64.deb https://mega.nz/linux/MEGAsync/xUbuntu_16.04/amd64/megasync-xUbuntu_16.04_amd64.deb
		sudo dpkg -i /tmp/megasync-xUbuntu_16.04_amd64.deb
    git clone https://github.com/cybre/megasync-elementary /tmp/megasync-elementary
    bash /tmp/megasync-elementary/install.sh
fi

# Installer Grive 2
if [[ $GUI == *"Grive 2"* ]]
then
	clear
	echo "Installation de Grive 2..."
	echo ""
	notify-send -i applications-internet  "elementary OS Post Install" "Installation de Grive 2" -t 5000
	sudo add-apt-repository -y ppa:nilarimogard/webupd8
  sudo apt -y update
  sudo apt -y install grive2
fi

# Installer spotify
if [[ $GUI == *"Spotify"* ]]
then
	clear
	echo "Installation de spotify..."
	echo ""
	notify-send -i multimedia-audio-player "elementary OS Post Install" "Installation de Spotify" -t 5000
	sudo add-apt-repository -y "deb http://repository.spotify.com stable non-free"
	sudo apt-key -y adv --keyserver keyserver.ubuntu.com --recv-keys 94558F59
	sudo apt -y update
	sudo apt -y install spotify-client
fi

# Installer steam
if [[ $GUI == *"Steam"* ]]
then
	clear
	echo "Installation de steam..."
	echo ""
	notify-send -i applications-arcade "elementary OS Post Install" "Installation de Steam" -t 5000
	sudo apt -y update
	sudo apt -y install steam
fi

# Installer icth.io
if [[ $GUI == *"itch.io"* ]]
then
	clear
	echo "Installation d'itch.io..."
	echo ""
	notify-send -i applications-arcade "elementary OS Post Install" "Installation d'itch.io" -t 5000
	wget -q -O - https://dl.itch.ovh/archive.key | sudo apt-key add -
	sudo sh -c  'echo "deb https://dl.bintray.com/itchio/deb xenial main" >> /etc/apt/sources.list.d/itchio.list'
	sudo apt -y update
	sudo apt -y install itch
fi

# Installer 0.A.D
if [[ $GUI == *"0.A.D"* ]]
then
	clear
	echo "Installation de playonlinux..."
	echo ""
	notify-send -i applications-arcade "elementary OS Post Install" "Installation de 0.A.D" -t 5000
	sudo add-apt-repository -y ppa:wfg/0ad
	sudo apt -y update
	sudo apt -y install 0ad 0ad-data
fi

# Installer Wesnoth
if [[ $GUI == *"Wesnoth"* ]]
then
	clear
	echo "Installation de Wesnoth..."
	echo ""
	notify-send -i applications-arcade "elementary OS Post Install" "Installation de Wesnoth" -t 5000
	sudo add-apt-repository -y ppa:vincent-c/wesnoth
	sudo apt -y update
	sudo apt -y install wesnoth
fi

# Installer FlightGear
if [[ $GUI == *"FlightGear"* ]]
then
	clear
	echo "Installation de FlightGear..."
	echo ""
	notify-send -i applications-arcade "elementary OS Post Install" "Installation de FlightGear" -t 5000
	sudo add-apt-repository -y ppa:saiarcot895/flightgear
	sudo apt -y update
	sudo apt -y install fgrun flightgear flightgear-data simgear
fi

# Installer Unvanquished
if [[ $GUI == *"Unvanquished"* ]]
then
	clear
	echo "Installation de Unvanquished..."
	echo ""
	notify-send -i applications-arcade "elementary OS Post Install" "Installation de Unvanquished" -t 5000
	wget -q -O - http://archive.getdeb.net/getdeb-archive.key | sudo apt-key add -
	sudo sh -c 'echo "deb http://archive.getdeb.net/ubuntu xenial-getdeb games" >> /etc/apt/sources.list.d/getdeb.list'
	sudo apt -y update
	sudo apt -y install unvanquished
fi

# Installer War Thunder
if [[ $GUI == *"War Thunder"* ]]
then
	clear
	echo "Installation de War Thunder..."
	echo ""
	notify-send -i applications-arcade "elementary OS Post Install" "War Thunder sera installé dans le dossier warthunder sur votre HOME" -t 15000
	mkdir $HOME/warthunder
	wget http://aws-yup1.gaijinent.com/wt_launcher_linux_0.9.3.26.tar.gz
	tar -xf wt_launcher_linux_0.9.3.26.tar.gz $HOME/warthunder
	cd $HOME/warthunder
	notify-send -i applications-arcade "elementary OS Post Install" "Création d'un raccourci pour War Thunder!" -t 5000
	cd /tmp
	wget -O /tmp/warthunder.desktop https://raw.githubusercontent.com/Devil505/elementaryos-postinstall/master/warthunder.desktop
	chmod +x /tmp/warthunder.desktop
	sudo cp /tmp/warthunder.desktop /usr/share/applications/warthunder.desktop
fi

# Installer telegram
if [[ $GUI == *"Telegram"* ]]
then
	clear
	echo "Installation de telegram..."
	echo ""
	notify-send -i applications-chat "elementary OS Post Install" "Installation de Telegram" -t 5000
	sudo add-apt-repository -y ppa:atareao/telegram
	sudo apt -y update
	sudo apt -y install telegram
	sudo chmod +x /opt/telegram
	sudo chown -R $whoami:$whoami /opt/telegram
fi

# Installer slack
if [[ $GUI == *"Slack"* ]]
then
	clear
	echo "Installation de slack..."
	echo ""
	notify-send -i applications-chat "elementary OS Post Install" "Installation de SLack" -t 5000
	cd /tmp
	wget https://slack-ssb-updates.global.ssl.fastly.net/linux_releases/slack-desktop-2.1.2-amd64.deb
	sudo dpkg -i --force-depends slack-desktop-2.1.2-amd64.deb
fi

# Installer Polari
if [[ $GUI == *"Polari"* ]]
then
	clear
	echo "Installation de Polari..."
	echo ""
	sudo apt -y update
	sudo apt -y install polari
fi

# Installer Tor Messenger
if [[ $GUI == *"Tor Messenger"* ]]
then
	clear
	echo "Installation de Tor Messenger..."
	echo ""
	notify-send -i applications-chat "elementary OS Post Install" "Installation de Tor Messenger" -t 5000
	cd /tmp
	wget -O /tmp/tor-messenger-linux64-0.3.0b1_en-US.tar.xz https://dist.torproject.org/tormessenger/0.3.0b1/tor-messenger-linux64-0.3.0b1_en-US.tar.xz
	tar xvf tor-messenger-*.tar.xz
	sudo mv tor-messenger/ /opt/
	/opt/tor-messenger/Browser/start-tor-messenger &
fi

# Installer elementary-wallpapers-extra
if [[ $GUI == *"Elementary-wallpapers-extra"* ]]
then
	clear
	echo "Installation de elementary-wallpapers-extra..."
	echo ""
	notify-send -i preferences-desktop-wallpaper "elementary OS Post Install" "Installation des fonds d'écran de Luna" -t 5000
	sudo apt -y install elementary-wallpapers-extra
fi

# Installer le driver NVIDIA
if [[ $GUI == *"Driver NVIDIA"* ]]
then
	clear
	echo "Installation du driver NVIDIA..."
	echo ""
	notify-send -i display "elementary OS Post Install" "Installation du driver NVIDIA" -t 5000
	sudo add-apt-repository -y ppa:graphics-drivers/ppa
	sudo apt -y update
	sudo apt -y install nvidia-settings nvidia-378 software-properties-gtk
	echo "Pensez à rebooter..."
	echo ""
fi

# Oibaf
if [[ $GUI == *"Oibaf"* ]]
then
	clear
	echo "Installation du PPA Oibaf..."
	echo ""
	notify-send -i display "elementary OS Post Install" "Installation des derniers drivers graphiques libres" -t 5000
	sudo add-apt-repository -y ppa:oibaf/graphics-drivers
	sudo apt -y update
	sudo apt -y dist-upgrade
	echo "Pensez à rebooter..."
	echo ""
fi

# Installer TLP
if [[ $GUI == *"TLP"* ]]
then
	clear
	echo "Installation de TLP..."
	echo ""
	notify-send -i battery-full-charging "elementary OS Post Install" "Installation de TLP" -t 5000
	sudo add-apt-repository -y ppa:linrunner/tlp
	sudo apt -y update
	sudo apt -y install tlp tlp-rdw tp-smapi-dkms acpi-call-dkms
	sudo tlp start
	echo ""
fi

# Installer Skype
if [[ $GUI == *"Skype"* ]]
then
	clear
	echo "Installation de Skype..."
	echo ""
	notify-send -i applications-chat "elementary OS Post Install" "Installation de Skype" -t 5000
	if [[ $(uname -m) == "x86_64" ]]
	then
		wget -O /tmp/skypeforlinux-64-alpha.deb https://go.skype.com/skypeforlinux-64-alpha.deb
		sudo dpkg -i /tmp/skypeforlinux-64-alpha.deb
	fi
fi

# Installer elementaryplus
if [[ $GUI == *"elementaryplus"* ]]
then
	clear
	echo "Installation dutThème d'icones elementaryplus..."
	echo ""
	notify-send -i preferences-desktop "elementary OS Post Install" "Installation de elementaryplus" -t 5000
	sudo add-apt-repository -y ppa:cybre/elementaryplus
	sudo apt-get -y update
	sudo apt-get -y install elementaryplus
fi

# Installer le Kernel Xenial BFS/BFQ
if [[ $GUI == *"Kernel Xenial BFS/BFQ"* ]]
then
	clear
	echo "Installation du kernel Xenial BFS/BFQ..."
	echo ""
	notify-send -i applications-system "elementary OS Post Install" "Installation du kernel optimisé BFS/BFQ" -t 5000
	sudo add-apt-repository -y ppa:nick-athens30/xenial-ck
	sudo apt-get -y update
	sudo apt-get -y install linux-bb
	echo "Pensez à rebooter pour profiter de ce kernel..."
	echo ""
fi

# Installer Pushbullet
if [[ $GUI == *"Installation de Pushbullet"* ]]
then
	clear
	echo "Installation de l'indicator Pushbullet..."
	echo ""
	notify-send -i applications-office "elementary OS Post Install" "Installation de l'indicator Pushbullet" -t 5000
	sudo add-apt-repository -y ppa:atareao/pushbullet
    notify-send -i applications-system "Installez Pushbullet sur vos appareil Android !" -t 5000
	sudo apt-get -y update
	sudo apt-get -y install pushbullet-indicator
fi

# Installer zsh
if [[ $GUI == *"Installation d'oh-my-zsh"* ]]
then
	clear
	echo "Installation de zsh et d'oh-my-zsh..."
	echo ""
	notify-send -i package "elementary OS Post Install" "Installation de zsh et d'oh-my-zsh" -t 5000
	sudo apt -y install zsh git
	cd /tmp
	curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
	chsh -s /bin/zsh
fi

# Fix Broken Packages Action
if [[ $GUI == *"Réparer les paquets cassés"* ]]
then
	clear
	echo "Réparation des paquets cassés..."
	echo ""
	notify-send -i package "elementary OS Post Install" "Réparation des paquets cassés" -t 5000
	sudo apt -y -f install
fi

# Nettoyage de primptemps
if [[ $GUI == *"Nettoyage de prinptemps"* ]]
then
	clear
	echo "Nettoyage de prinptemps en cours..."
	echo ""
	notify-send -i user-trash-full "elementary OS Post Install" "Nettoyage des paquets inutiles" -t 5000
	sudo apt -y autoremove
	sudo apt -y autoclean
fi

# Installer udisks-indicator
if [[ $GUI == *"udisks-indicator"* ]]
then
	clear
	echo "Installation de udisks-indicator..."
	echo ""
	notify-send -i drive-harddisk-symbolic "elementary OS Post Install" "Installation de udisks-indicator" -t 5000
	cd /tmp
	wget https://raw.githubusercontent.com/SergKolo/udisks-indicator/master/udisks-indicator
	sudo chmod +x udisks-indicator
	sudo mv udisks-indicator /usr/bin/
	wget https://raw.githubusercontent.com/SergKolo/udisks-indicator/master/udisks-indicator.desktop
	sudo mv udisks-indicator.desktop /usr/share/applications/
	echo "Pensez à rajouter udisks-indicator aux applications au démarrage!"
fi

# Installer eradio
if [[ $GUI == *"eRadio"* ]]
then
	clear
	echo "Installation de eradio..."
	echo ""
	notify-send -i multimedia-audio-player "elementary OS Post Install" "Installation d'eRadio'" -t 5000
	sudo add-apt-repository -y ppa:dreamdevel/stable
	sudo apt-get -y update
	sudo apt-get -y install eradio
fi

# Installer clamTK
if [[ $GUI == *"clamTK"* ]]
then
	clear
	echo "Installation de clamTK..."
	echo ""
	notify-send -i edit-find "elementary OS Post Install" "Installation de clamTK'" -t 5000
	sudo apt -y install clamtk
fi

# Installer Gufw
if [[ $GUI == *"Gufw"* ]]
then
	clear
	echo "Installation de Gufw..."
	echo ""
	notify-send -i network-vpn "elementary OS Post Install" "Installation de Gufw" -t 5000
	sudo apt -y install gufw
fi

# Installer Keepass X
if [[ $GUI == *"Keepass X"* ]]
then
	clear
	echo "Installation de Keepass X..."
	echo ""
	notify-send -i network-vpn "elementary OS Post Install" "Installation de Keepass X" -t 5000
	sudo add-apt-repository -y ppa:eugenesan/ppa
	sudo apt -y update
	sudo apt -y install keepassx
fi

# Installer Fern
if [[ $GUI == *"Fern"* ]]
then
	clear
	echo "Installation de Fern..."
	echo ""
	notify-send -i network-vpn "elementary OS Post Install" "Installation de Fern Wifi Cracker" -t 5000
	sudo apt -y install macchanger aircrack-ng subversion python-qt4 python-scapy xterm
	cd /tmp
	wget https://github.com/savio-code/downloads/raw/master/Fern_Open_Source_2.2_all.deb
	sudo dpkg -i --force-depends Fern_Open_Source_2.2_all.deb
	sudo /opt/Fern-Wifi-Cracker/execute.py
fi

# Installer WPAS Office
if [[ $GUI == *"WPS Office"* ]]
then
	clear
	echo "Installation de WPS Office..."
	echo ""
	notify-send -i applications-office "elementary OS Post Install" "Installation de Fern Wifi Cracker" -t 5000
	cd /tmp
	wget http://kdl.cc.ksosoft.com/wps-community/download/a21/wps-office_10.1.0.5672~a21_i386.deb
	wget http://kdl.cc.ksosoft.com/wps-community/download/fonts/wps-office-fonts_1.0_all.deb
	sudo dpkg -i --force-depends wps-office_10.1.0.5672~a21_i386.deb
	sudo dpkg -i --force-depends wps-office-fonts_1.0_all.deb
fi

# Installer Discord
if [[ $GUI == *"Discord"* ]]
then
	clear
	echo "Installation de Discord..."
	echo ""
	notify-send -i applications-chat "elementary OS Post Install" "Installation de Fern Wifi Cracker" -t 5000
	cd /tmp
	wget https://dl.discordapp.net/apps/linux/0.0.1/discord-0.0.1.deb
	sudo dpkg -i --force-depends discord-0.0.1.deb
fi

# Notification
clear
notify-send -i dialog-ok "Et voilà !" "Toutes les tâches ont été effectuées avec succès!" -t 5000
