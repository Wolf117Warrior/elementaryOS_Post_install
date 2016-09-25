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
# zsh ?
#
# Ordre menu
# SYSTEME: upgrade, mémoire, kernel CK, NVIDIA,  intel video tearing fix, TLP, tweaks, configurator, boot-repair
# CUSTOMISATION: wallpapers luna, thèmes plank, conky-manager
# UTILITAIRES: archivage, Gdebi, atom, sublime text, deja-dup, ADB, timeshift, aptik, redshift
# BUREAUTIQUE: libreoffice, envelope
# MULTIMEDIA: restricted, codecs, dvd, VLC, vocal, lollypop, eradio, spotify, tomahawk
# INTERNET: Chrome, chromium, Firefox, Nylas N1, feedreader, transmission(+gtk3), Vivaldi, dropbox, mega, grive, evnc, taxi, telegram, corebird, hexchat
# INFOGRAPHIE: gimp, darktable, inkscape, rapid
# JEUX: steam, playonlinux, 0.A.D, FlightGear
# DIVERS: paquet cassés, nettoyage

# Clear the Terminal
clear
notify-send  --icon=dialog-error "Attention" "Le mot de passe root vous sera demandé" -t 10000

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
	FALSE "Memtest86+" "Installation de memtest86+ pour tester la RAM." \
	FALSE "Kernel Trusty Tahr BFS/BFQ" "Installe le optimisé BFQ/BFS scheduler." \
	FALSE "Driver NVIDIA" "Installe le driver NVIDIA (ppa graphics-drivers) pour GTX 7XX et +." \
	FALSE "Intel Tearing Fix" "Correction du tearing avec le driver Intel Graphics" \
	FALSE "TLP" "Installe TLP pour augmenter la durée de vie de la batterie et réduire la surchauffe." \
	FALSE "Tweaks" "Installe elementary Tweaks pour avoir plus d'options de configuration." \
	FALSE "Configurator" "Installe Configurator l'éditeur dconf pour elementary." \
	FALSE "Boot Repair" "Installe boot-repair, réparateur de GRUB." \
	FALSE "Elementary-wallpapers-extra" "Installe les fonds d'écran de Luna." \
	FALSE "Thèmes Plank" "Installe des thèmes pour Plank" \
	FALSE "Thèmes Icones" "Installe des thèmes d'icones" \
	FALSE "Thèmes GTK" "Installe des thèmes de fenêtres GTK" \
	FALSE "Conky-Manager" "Application pour gérer les fichier de conf de conky" \
	FALSE "Support formats d'archivage" "Installation du support pour formats d'archivage (zip,rar,7z...)." \
	FALSE "GDebi" "Installs GDebi. A simple tool to install deb files." \
	FALSE "Atom" "Installe Atom, un éditeur de texte du 21ème siècle." \
	FALSE "Sublime Text 3" "Installe Sublime Text 3, un puissant éditeur de texte." \
	FALSE "Deja Dup" "Installe Deja Dup,  utilitaire pour sauvegarde." \
	FALSE "ADB" "Installe ADB, outil pour téléphones sous Android." \
	FALSE "Time Shift" "Installe timeshift pour les restaurations système." \
	FALSE "Aptik" "Installe aptik pour sauvegardes de paquets, thèmes,icones..." \
	FALSE "Redshift" "Installe redshift pour adapter la luminositié de l'écran en fonction du jour..." \
	FALSE "LibreOffice" "Installe LibreOffice, la suite bureautique libre." \
	FALSE "Envelope" "Installe envelope, application de gestion financière." \
	FALSE "Ubuntu Restricted Extras" "Installation des paquets sous copyrights (mp3, avi, mpeg, TrueType, Java, Flash, Codecs)." \
	FALSE "Extra Multimedia Codecs" "Installation des codecs multimédia additionnels." \
	FALSE "Support DVD encrypté" "Installation du support pour lire les DVDs encryptés." \
	FALSE "VLC" "Installe VLC, le lecteur multimédia." \
	FALSE "Vocal" "Installe vocal, application de podcasts." \
	FALSE "Clementine" "Installe Clementine, lecteur de musique." \
	FALSE "Lollypop" "Installe lollypop, lecteur de musique." \
	FALSE "Tomahawk" "Installe tomahawk, lecteur de musique." \
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
	FALSE "eVNC" "Installe eVNC, l'application de contrôle à distance." \
	FALSE "Taxi" "Installe taxi, l'application de protocole FTP." \
	FALSE "Corebird" "Installe Corebird, client twitter." \
	FALSE "Skype" "Installe Corebird, client twitter." \
	FALSE "Telegram" "Installe Telegram, version desktop de l'application SMS." \
	FALSE "Relay" "Installe Relay, le client IRC pour elementary OS." \
	FALSE "Gimp et GMIC" "Installe le logiciel de retouche GIMP et son extension GMIC." \
	FALSE "Inkscape" "Installe le logiciel de vectorisation Inkscape." \
	FALSE "Darktable" "Installe darktable, logiciel de traitement de fichier RAW." \
	FALSE "Rapid-photo-downloader" "Installe rapid-photo-downloader, logiciel d'importation de photos depuis supports externes." \
	FALSE "Steam" "Installe Steam, la plateforme en ligne de Jeux." \
	FALSE "Playonlinux" "Installe PlayOnLinux, le front-end de l'émulateur Wine." \
	FALSE "0.A.D" "Installe 0.A.D, le jeu de stratégie en temps réel dans l'époque Antique." \
	FALSE "Wesnoth" "Installe Bataille de Wesnoth, le jeu de stratégie au tour par tour" \
	FALSE "FlightGear" "Installe FlightGear, le simulateur de vol OpenSource." \
	FALSE "Unvanquished" "Installe Unvanquished, jeux FPS contre des Aliens." \
	FALSE "War Thunder" "Installe War Thunder, simulateur de chars et avions de combat en ligne (64bits seulement!)" \
	FALSE "Réparer les paquets cassés" "Vas réparer les paquets cassés." \
	FALSE "Nettoyage de prinptemps" "Retire les paquets qui ne sont plus nécéssaires." \
	--separator=', ');

# Mise à jour du Système
if [[ $GUI == *"Mise à jour du Système"* ]]
then
	clear
	echo "Mise à jour du Système..."
	echo ""
	notify-send -i system-software-update "elementary OS Post Install" "Mise à jour du système en cours" -t 5000
	sudo apt-get -y update
	sudo apt-get -y upgrade
fi

# Accélération de la mémoire
if [[ $GUI == *"Accélération de la mémoire"* ]]
then
	clear
	echo "Accélération de la mémoire..."
	echo ""
	notify-send -i system-software-update "elementary OS Post Install" "Installation de Preload" -t 5000
	sudo apt-get -y install preload
	notify-send -i system-software-update "elementary OS Post Install" "Installation de zRAM" -t 5000
	sudo apt-get -y install zram-config
fi

# Memtest86+
if [[ $GUI == *"Memtest86+"* ]]
then
	clear
	echo "Installation de Memtest86+..."
	echo ""
	notify-send -i system-software-update "elementary OS Post Install" "Installation de Memtest86+" -t 5000
	sudo apt-get -y install memtest86+
fi

# Installer Ubuntu Restricted Extras
if [[ $GUI == *"Ubuntu Restricted Extras"* ]]
then
	clear
	echo "Installation des Ubuntu Restricted Extras..."
	echo ""
	notify-send -i software-properties "elementary OS Post Install" "Installation des Ubuntu Restricted Extras" -t 5000
    echo ttf-mscorefonts-installer msttcorefonts/accepted-mscorefonts-eula select true | debconf-set-selections
	sudo apt-get -y install ubuntu-restricted-extras ttf-mscorefonts-installer ubuntu-restricted-addons
fi

# Installer Extra Multimedia Codecs
if [[ $GUI == *"Extra Multimedia Codecs"* ]]
then
	clear
	echo "Installation des Extra Multimedia Codecs..."
	echo ""
	notify-send -i multimedia-video-player "elementary OS Post Install" "Installation des codecs" -t 5000
	sudo apt-get -y install libavcodec-extra-53 gstreamer0.10-plugins-bad-multiverse
fi

# Installer le Support pour DVD encrypté
if [[ $GUI == *"Support DVD encrypté"* ]]
then
	clear
	echo "Installation du Support pour DVD encrypté..."
	echo ""
	notify-send -i media-dvd "elementary OS Post Install" "Installation de libdvdread4" -t 5000
	sudo apt-get -y install libdvdread4
	sudo /usr/share/doc/libdvdread4/install-css.sh
fi

# Installer le Support pour les formats d'archivage
if [[ $GUI == *"Support formats d'archivage"* ]]
then
	clear
	echo "Installation du Support pour les formats d'archivage"
	echo ""
	notify-send -i file-roller "elementary OS Post Install" "Installation de zip,unrar,unace,cabextract...etc" -t 5000
	sudo apt-get -y install unace rar unrar p7zip-rar p7zip zip unzip sharutils uudeview mpack arj cabextract
fi

# Installer GDebi
if [[ $GUI == *"GDebi"* ]]
then
	clear
	echo "Installation de GDebi..."
	echo ""
	notify-send -i package "elementary OS Post Install" "Installation de GDebi" -t 5000
	sudo apt-get -y install gdebi
fi

# Installer Google Chrome Action
if [[ $GUI == *"Google Chrome"* ]]
then
	clear
	echo "Installation de Google Chrome..."
	echo ""
  	notify-send -i web-browser "elementary OS Post Install" "Installation de Google Chrome" -t 5000
    wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
    sudo sh -c 'echo "deb http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
    sudo apt-get -y install google-chrome-stable
fi

# Installer Chromium
if [[ $GUI == *"Chromium"* ]]
then
	clear
	echo "Installation de Chromium..."
	echo ""
	notify-send -i web-browser "elementary OS Post Install" "Installation de Chromium" -t 5000
	sudo apt-get -y install chromium-browser
fi

# Installer Firefox
if [[ $GUI == *"Firefox"* ]]
then
	clear
	echo "Installation de Firefox..."
	echo ""
	notify-send -i web-browser "elementary OS Post Install" "Installation de Firefox" -t 5000
	sudo apt-get -y install firefox
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
	sudo apt-get -y update
	sudo apt-get -y install feedreader
fi

# Installer VLC
if [[ $GUI == *"VLC"* ]]
then
	clear
	echo "Installation de VLC..."
	echo ""
	notify-send -i multimedia-video-player "elementary OS Post Install" "Installation de VLC" -t 5000
	sudo apt-get -y install vlc
fi

# Install Transmission Action
if [[ $GUI == *"Transmission"* ]]
then
	clear
	echo "Installing Transmission..."
	echo ""
	notify-send -i applications-filesharing "elementary OS Post Install" "Installation de Transmission" -t 5000
	sudo add-apt-repository  -y ppa:transmissionbt
	sudo apt-get -y update
	sudo apt-get  -y install transmission
fi

# Installer Atom
if [[ $GUI == *"Atom"* ]]
then
	clear
	echo "Installation de Atom..."
	echo ""
	notify-send -i accessories-text-editor "elementary OS Post Install" "Installation d'Atom" -t 5000
	sudo add-apt-repository -y ppa:webupd8team/atom
	sudo apt-get -y update
	sudo apt-get -y install atom
fi

# Installer Sublime Text 3
if [[ $GUI == *"Sublime Text 3"* ]]
then
	clear
	echo "Installation de Sublime Text 3..."
	echo ""
	notify-send -i accessories-text-editor "elementary OS Post Install" "Installation de Sublime Text 3" -t 5000
	sudo add-apt-repository -y ppa:webupd8team/sublime-text-3
	sudo apt-get -y update
	sudo apt-get -y install sublime-text-installer
fi

# Installer Deja Dup
if [[ $GUI == *"Deja Dup"* ]]
then
	clear
	echo "Installation de Deja Dup..."
	echo ""
	notify-send -i locked "elementary OS Post Install" "Installation de Deja Dup" -t 5000
	sudo apt-get -y update
	sudo apt-get -y install deja-dup
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
	sudo apt-get install android-tools-adb android-tools-fastboot
fi

# Installer timeshift
if [[ $GUI == *"Time Shift"* ]]
then
	clear
	echo "Installation de Time Shift..."
	echo ""
	notify-send -i applications-system "elementary OS Post Install" "Installation de timeshift" -t 5000
	sudo add-apt-repository -y ppa:teejee2008/ppa
	sudo apt-get -y update
	sudo apt-get -y install timeshift
fi

# Installer redshift
if [[ $GUI == *"Redshift"* ]]
then
	clear
	echo "Compilation et Installation de redshift..."
	echo ""
	notify-send -i display "elementary OS Post Install" "Installation de Redshift" -t 5000
	sudo apt-get install -y autopoint intltool
  sudo apt-get install -y libdrm-dev
  sudo apt-get install -y libxcb1-dev libxcb-randr0-dev
  sudo apt-get install  -y libx11-dev libxxf86vm-dev
  sudo apt-get install -y libgeoclue-dev
  sudo apt-get install -y libglib2.0-dev
  sudo apt-get install -y python3
  wget -O /tmp/redshift-1.11.tar.gz https://github.com/jonls/redshift/archive/v1.11.tar.gz
	cd /tmp/
	tar -xf redshift-1.11.tar.gz
	cd redshift-1.11
	./bootstrap && ./configure --enable-drm --enable-vidmode --enable-randr --enable-geoclue --enable-geoclue2 --enable-gui && make -j2 distcheck
	sudo make install
	wget -O $HOME/.config/redshift.conf https://raw.githubusercontent.com/Devil505/elementaryos-postinstall/master/redshift.conf
	/usr/local/bin/redshift-gtk &
fi

# Installer aptik
if [[ $GUI == *"Aptik"* ]]
then
	clear
	echo "Installation de Aptik..."
	echo ""
	notify-send -i applications-system "elementary OS Post Install" "Installation de aptik" -t 5000
	sudo add-apt-repository -y ppa:teejee2008/ppa
	sudo apt-get -y update
	sudo apt-get -y install aptik
fi

# Installer LibreOffice
if [[ $GUI == *"LibreOffice"* ]]
then
	clear
	echo "Installation de LibreOffice..."
	echo ""
	notify-send -i applications-office "elementary OS Post Install" "Installation de Libreoffice" -t 5000
	sudo add-apt-repository -y ppa:libreoffice/libreoffice-5-0
	sudo add-apt-repository -y ppa:shimmerproject/daily
	sudo apt-get -y update
	sudo apt-get -y install libreoffice libreoffice-style-elementary
fi

# Installer elementary Tweaks
if [[ $GUI == *"Tweaks"* ]]
then
	clear
	echo "Installation de elementary Tweaks..."
	echo ""
	notify-send -i preferences-desktop "elementary OS Post Install" "Installation d'elementary Tweaks'" -t 5000
	sudo add-apt-repository -y ppa:mpstark/elementary-tweaks-daily
	sudo apt-get -y update
	sudo apt-get -y install elementary-tweaks
fi

# Installer boot-repair
if [[ $GUI == *"Boot Repair"* ]]
then
	clear
	echo "Installation de boot-repair..."
	echo ""
	notify-send -i applications-system "elementary OS Post Install" "Installation d'elementary Tweaks'" -t 5000
	sudo add-apt-repository -y ppa:yannubuntu/boot-repair
	sudo apt-get -y update
	sudo apt-get -y install boot-repair
fi

# Installer Thèmes Plank
if [[ $GUI == *"Thèmes Plank"* ]]
then
	clear
	echo "Installation des Thèmes Plank..."
	echo ""
	notify-send -i preferences-desktop "elementary OS Post Install" "Installation des thèmes pour Plank" -t 5000
	sudo add-apt-repository -y ppa:elementaryos-fr-community/ppa
	sudo apt-get -y update
	sudo apt-get -y install plank-theme-capeos
	sudo apt-get -y install plank-theme-cratos-lion
	sudo apt-get -y install plank-theme-grantheon
	sudo apt-get -y install plank-theme-korora
	sudo apt-get -y install plank-theme-pantiva
	sudo apt-get -y install plank-theme-paperterial.
	sudo apt-get -y install plank-theme-rainier
	sudo apt-add-repository -y ppa:numix/ppa
  	sudo apt-get -y update
  	sudo apt-get -y install numix-plank-theme
fi

# Installer conky-manager
if [[ $GUI == *"Conky-Manager"* ]]
then
	clear
	echo "Installation de conky-manager..."
	echo ""
	notify-send -i preferences-desktop "elementary OS Post Install" "Installation de conky-manager'" -t 5000
	sudo add-apt-repository -y ppa:teejee2008/ppa
	sudo apt-get -y update
	sudo apt-get -y install conky-manager
fi

# Installer Configurator
if [[ $GUI == *"Installation de Configurator"* ]]
then
	clear
	echo "Installation de Configurator.."
	echo ""
	notify-send -i preferences-desktop "elementary OS Post Install" "Installation de Configurator" -t 5000
	sudo add-apt-repository -y ppa:elementaryos-fr-community/ppa
  sudo apt-get -y update
  sudo apt-get -y install Configurator
fi

# Installer Thèmes Icones
if [[ $GUI == *"Thèmes Icones"* ]]
then
	clear
	echo "Installation des Thèmes Icones..."
	echo ""
	notify-send -i preferences-desktop "elementary OS Post Install" "Installation des thèmes d'icones" -t 5000
	sudo add-apt-repository -y ppa:elementaryos-fr-community/ppa
	sudo apt-get -y update
	sudo apt-get -y install paper-icon-theme
	sudo apt-get -y install elementary-add-icon-theme
	sudo apt-get -y install elementary-enhanced
	sudo apt-get -y install plank-theme-pantiva
	sudo apt-get -y install plank-theme-paperterial.
	sudo apt-get -y install plank-theme-rainier
	sudo apt-add-repository -y ppa:numix/ppa
  sudo apt-get -y update
  sudo apt-get install -y numix-icon-theme numix-icon-theme-circle numix-icon-theme-bevel
	udo add-apt-repository -y ppa:captiva/ppa
  sudo apt-get -y update
  sudo apt-get -y install captiva-icon-theme
	sudo add-apt-repository -y ppa:cybre/elementaryplus
	sudo apt-get -y update
	sudo apt-get -y install elementaryplus

fi

# Installer Thèmes GTK
if [[ $GUI == *"Thèmes GTK"* ]]
then
	clear
	echo "Installation des Thèmes GTK..."
	echo ""
	notify-send -i preferences-desktop "elementary OS Post Install" "Installation des thèmes GTK" -t 5000
	sudo add-apt-repository -y ppa:elementaryos-fr-community/ppa
	sudo apt-get -y update
	sudo apt-get -y install paper-gtk-theme
	sudo apt-get -y install elementary-yo
	sudo apt-get -y install vertex-gtk3
	sudo apt-add-repository -y ppa:numix/ppa
  	sudo apt-get -y update
  	sudo apt-get install -y numix-gtk-theme
fi

# Installer Vocal
if [[ $GUI == *"Vocal"* ]]
then
	clear
	echo "Installation de Vocal..."
	echo ""
	notify-send -i applications-multimedia "elementary OS Post Install" "Installation de Vocal" -t 5000
	sudo add-apt-repository -y ppa:nathandyer/vocal-daily
	sudo apt-get -y update
	sudo apt-get -y install vocal
fi

# Installer Lollypop
if [[ $GUI == *"Lollypop"* ]]
then
	clear
	echo "Installation de Lollypop..."
	echo ""
	notify-send -i multimedia-audio-player "elementary OS Post Install" "Installation de Lollypop" -t 5000
	sudo add-apt-repository -y ppa:gnumdk/lollypop
	sudo apt-get -y update
	sudo apt-get -y install lollypop
fi

# Installer Tomahawk
if [[ $GUI == *"Tomahawk"* ]]
then
	clear
	echo "Installation de Tomahawk..."
	echo ""
	notify-send -i multimedia-audio-player "elementary OS Post Install" "Installation de Tomahawk" -t 5000
	sudo add-apt-repository -y ppa:tomahawk/ppa
	sudo apt-get -y update
	sudo apt-get -y install tomahawk
fi

# Installer Clementine
if [[ $GUI == *"Clementine"* ]]
then
	clear
	echo "Installation de Clementine..."
	echo ""
	notify-send -i multimedia-audio-player "elementary OS Post Install" "Installation de Clementine" -t 5000
	sudo add-apt-repository -y ppa:me-davidsansome/clementine
 	sudo apt-get -y update
  	sudo apt-get -y install clementine
fi

# Installer envelope
if [[ $GUI == *"Envelope"* ]]
then
	clear
	echo "Installation de envelope..."
	echo ""
	notify-send -i applications-mathematics "elementary OS Post Install" "Installation d'envelope'" -t 5000
	sudo add-apt-repository -y ppa:nicolas-laplante/envelope-daily
	sudo apt-get -y update
	sudo apt-get -y install envelope
fi

# Installer darktable
if [[ $GUI == *"Darktable"* ]]
then
	clear
	echo "Installation de darktable..."
	echo ""
	notify-send -i applications-photography "elementary OS Post Install" "Installation de Darktable" -t 5000
	sudo add-apt-repository -y ppa:pmjdebruijn/darktable-release
	sudo apt-get -y update
	sudo apt-get -y install darktable
fi

# Installer rapid-photo-downloader
if [[ $GUI == *"Rapid-photo-downloader"* ]]
then
	clear
	echo "Installation de rapid-photo-downloader..."
	echo ""
	notify-send -i media-memory-sd "elementary OS Post Install" "Installation de rapid-photo-downloader" -t 5000
    sudo add-apt-repository -y ppa:dlynch3
    sudo apt-get -y  update
    sudo apt-get -y  install rapid-photo-downloader
fi

# Installer GIMP et GMIC
if [[ $GUI == *"Gimp et GMIC"* ]]
then
	clear
	echo "Installation de gimp et gmic..."
	echo ""
	notify-send -i applications-graphics "elementary OS Post Install" "Installation de GIMP avec GMIC" -t 5000
    sudo add-apt-repository -y ppa:otto-kesselgulasch/gimp
    sudo apt-get -y update
    sudo apt-get -y install gmic gimp-gmic
fi

# Installer Inkscape
if [[ $GUI == *"Inkscape"* ]]
then
	clear
	echo "Installation de inkscape..."
	echo ""
	notify-send -i applications-graphics "elementary OS Post Install" "Installation d'Inkscape'" -t 5000
	sudo apt-get -y install inkscape
fi

# Installer Dropbox
if [[ $GUI == *"Dropbox"* ]]
then
	clear
	echo "Installation de dropbox..."
	echo ""
	notify-send -i applications-internet "elementary OS Post Install" "Installation de Dropbox avec icones monochromes" -t 5000
	sudo apt-get -y install nautilus-dropbox
	echo "Installation des icones dropbox..."
	echo ""
    git clone https://github.com/zant95/elementary-dropbox /tmp/elementary-dropbox
    bash /tmp/elementary-dropbox/install.sh
fi

# Installer MEGA
if [[ $GUI == *"MEGA"* ]]
then
	clear
	echo "Installation de MEGASync..."
	echo ""
	notify-send -i applications-internet "elementary OS Post Install" "Installation de MeGA avec icones monochromes" -t 5000
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

# Installer Grive 2
if [[ $GUI == *"Grive 2"* ]]
then
	clear
	echo "Installation de Grive 2..."
	echo ""
	notify-send -i applications-internet  "elementary OS Post Install" "Installation de Grive 2" -t 5000
	sudo add-apt-repository -y ppa:nilarimogard/webupd8
  sudo apt-get -y update
  sudo apt-get -y install grive2
fi

# Installer evnc
if [[ $GUI == *"eVNC"* ]]
then
	clear
	echo "Installation de evnc..."
	echo ""
	notify-send -i network-vpn "elementary OS Post Install" "Installation d'eVNC" -t 5000
	sudo add-apt-repository -y ppa:elementaryos-fr-community/ppa
	sudo apt-get -y update
	sudo apt-get -y install evnc
fi

# Installer taxi
if [[ $GUI == *"Taxi"* ]]
then
	clear
	echo "Installation de taxi..."
	echo ""
	notify-send -i preferences-network-system "elementary OS Post Install" "Installation de Taxi" -t 5000
	sudo add-apt-repository -y ppa:elementaryos-fr-community/ppa
	sudo apt-get -y update
	sudo apt-get -y install taxi
fi

# Installer eradio
if [[ $GUI == *"eRadio"* ]]
then
	clear
	echo "Installation de eradio..."
	echo ""
	notify-send -i multimedia-audio-player "elementary OS Post Install" "Installation d'eRadio'" -t 5000
	sudo add-apt-repository -y ppa:elementaryos-fr-community/ppa
	sudo apt-get -y update
	sudo apt-get -y install eradio
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
	sudo apt-get -y update
	sudo apt-get -y install spotify-client
fi

# Installer steam
if [[ $GUI == *"Steam"* ]]
then
	clear
	echo "Installation de steam..."
	echo ""
	notify-send -i applications-arcade "elementary OS Post Install" "Installation de Steam" -t 5000
	sudo apt-get -y update
	sudo apt-get -y install steam-launcher
fi

# Installer playonlinux
if [[ $GUI == *"Playonlinux"* ]]
then
	clear
	echo "Installation de playonlinux..."
	echo ""
	notify-send -i applications-arcade "elementary OS Post Install" "Installation de PlayOnLinux" -t 5000
	wget -q "http://deb.playonlinux.com/public.gpg" -O- | sudo apt-key add -
  	sudo wget http://deb.playonlinux.com/playonlinux_trusty.list -O /etc/apt/sources.list.d/playonlinux.list
	sudo apt-get -y update
	sudo apt-get -y install playonlinux
fi

# Installer 0.A.D
if [[ $GUI == *"0.A.D"* ]]
then
	clear
	echo "Installation de playonlinux..."
	echo ""
	notify-send -i applications-arcade "elementary OS Post Install" "Installation de 0.A.D" -t 5000
	sudo add-apt-repository -y ppa:wfg/0ad
	sudo apt-get -y update
	sudo apt-get -y install 0ad 0ad-data
fi

# Installer Wesnoth
if [[ $GUI == *"Wesnoth"* ]]
then
	clear
	echo "Installation de Wesnoth..."
	echo ""
	notify-send -i applications-arcade "elementary OS Post Install" "Installation de Wesnoth" -t 5000
	sudo add-apt-repository -y ppa:vincent-c/wesnoth
	sudo apt-get -y update
	sudo apt-get -y install wesnoth
fi

# Installer FlightGear
if [[ $GUI == *"FlightGear"* ]]
then
	clear
	echo "Installation de FlightGear..."
	echo ""
	notify-send -i applications-arcade "elementary OS Post Install" "Installation de FlightGear" -t 5000
	sudo add-apt-repository -y ppa:saiarcot895/flightgear
	sudo apt-get -y update
	sudo apt-get -y install fgrun fgx flightgear flightgear-data simgear
	sudo apt-get -y install flightgear-data-aircrafts-747-8
	sudo apt-get -y install flightgear-data-aircrafts-a10
	sudo apt-get -y install flightgear-data-aircrafts-a380
	sudo apt-get -y install flightgear-data-aircrafts-b707
	sudo apt-get -y install flightgear-data-aircrafts-b747-400
	sudo apt-get -y install flightgear-data-aircrafts-dc3
	sudo apt-get -y install flightgear-data-aircrafts-dr400-dauphin
	sudo apt-get -y install flightgear-data-aircrafts-ec130
	sudo apt-get -y install flightgear-data-aircrafts-p51d
	sudo apt-get -y install flightgear-data-aircrafts-tu154b
fi

# Installer Unvanquished
if [[ $GUI == *"Unvanquished"* ]]
then
	clear
	echo "Installation de Unvanquished..."
	echo ""
	notify-send -i applications-arcade "elementary OS Post Install" "Installation de Unvanquished" -t 5000
	wget -q "http://debs.unvanquished.net/unvanquished-archive-key.gpg.asc" -O- | sudo apt-key add -
	sudo sh -c 'echo deb http://debs.unvanquished.net trusty main > /etc/apt/sources.list.d/unvanquished.list'
	sudo apt-get -y update
	sudo apt-get -y install unvanquished
fi

# Installer War Thunder
if [[ $GUI == *"War Thunder"* ]]
then
	clear
	echo "Installation de War Thunder..."
	echo ""
	notify-send -i applications-arcade "elementary OS Post Install" "War Thunder sera installé dans le dossier warthunder sur votre HOME" -t 15000
	mkdir $HOME/warthunder
	wget http://yup1.gaijinent.com/updater_1.0.7.tar.gz
	tar -xf updater_1.0.7.tar.gz ./updater ./updater.blk -C $HOME/warthunder
	cd $HOME/warthunder
	notify-send -i applications-arcade "elementary OS Post Install" "Téléchargement de War Thunder, cela va prendre du temps!" -t 15000
	./updater
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
	sudo apt-get -y update
	sudo apt-get -y install telegram
	sudo chmod +x /opt/telegram
	sudo chown -R $whoami:$whoami /opt/telegram
fi

# Installer Corebird
if [[ $GUI == *"Corebird"* ]]
then
	clear
	echo "Installation de Corebird..."
	echo ""
	notify-send -i applications-chat "elementary OS Post Install" "Installation de Corebird" -t 5000
	sudo add-apt-repository -y ppa:elementaryos-fr-community/ppa
	sudo apt-get -y update
	sudo apt-get -y install corebird
fi

# Installer Relay
if [[ $GUI == *"Relay"* ]]
then
	clear
	echo "Installation de Relay..."
	echo ""
	notify-send -i applications-chat "elementary OS Post Install" "Installation de Relay" -t 5000
	sudo add-apt-repository -y ppa:agronick/relay
	sudo apt-get -y update
	sudo apt-get -y install relay
fi

# Installer elementary-wallpapers-extra
if [[ $GUI == *"Elementary-wallpapers-extra"* ]]
then
	clear
	echo "Installation de elementary-wallpapers-extra..."
	echo ""
	notify-send -i preferences-desktop-wallpaper "elementary OS Post Install" "Installation des fonds d'écran de Luna" -t 5000
	sudo apt-get -y install elementary-wallpapers-extra
fi

# Fix Broken Packages Action
if [[ $GUI == *"Réparer les paquets cassés"* ]]
then
	clear
	echo "Réparation des paquets cassés..."
	echo ""
	notify-send -i package "elementary OS Post Install" "Réparation des paquets cassés" -t 5000
	sudo apt-get install -f -y
fi

# Nettoyage de primptemps
if [[ $GUI == *"Nettoyage de prinptemps"* ]]
then
	clear
	echo "Nettoyage de prinptemps en cours..."
	echo ""
	notify-send -i user-trash-full "elementary OS Post Install" "Nettoyage des paquets inutiles" -t 5000
	sudo apt-get autoremove -y
  sudo apt-get clean -y
  sudo apt-get autoclean -y
fi

# Installer le Kernel Trusty Tahr BFS/BFQ
if [[ $GUI == *"Kernel Trusty Tahr BFS/BFQ"* ]]
then
	clear
	echo "Installation du kernel Trusty Tahr BFS/BFQ..."
	echo ""
	notify-send -i applications-system "elementary OS Post Install" "Installation du kernel Trusty Tahr BFS/BFQ" -t 5000
	sudo add-apt-repository -y ppa:nick-athens30/trusty4-ck
	sudo apt-get -y update
	sudo apt-get -y install linux-bb
	echo "Pensez à rebooter pour profiter de ce kernel..."
	echo ""
fi

# Installer le driver NVIDIA
if [[ $GUI == *"Driver NVIDIA"* ]]
then
	clear
	echo "Installation du driver NVIDIA..."
	echo ""
	notify-send -i display "elementary OS Post Install" "Installation du driver NVIDIA" -t 5000
	sudo add-apt-repository -y ppa:graphics-drivers/ppa
	sudo apt-get -y update
	sudo apt-get -y install nvidia-settings nvidia-367
	echo "Pensez à rebooter..."
	echo ""
fi

# Intel Tearing Fix
if [[ $GUI == *"Intel Tearing Fix"* ]]
then
	clear
	echo "Correctif Intel Tearing..."
	echo ""
	notify-send -i display "elementary OS Post Install" "Correctif Intel Tearing..." -t 5000
	sudo apt-get -y install mesa-utils
	sudo mkdir /etc/X11/xorg.conf.d/
	echo -e 'Section "Device"\n Identifier "Intel Graphics"\n Driver "Intel"\n Option "AccelMethod" "sna"\n Option "TearFree" "true"\nEndSection' | sudo tee /etc/X11/xorg.conf.d/20-intel.conf
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
	sudo apt-get -y update
	sudo apt-get -y install tlp tlp-rdw
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

# Notification
clear
notify-send -i dialog-ok "Et voilà !" "Toutes les tâches ont été effectuées avec succès!" -t 5000
