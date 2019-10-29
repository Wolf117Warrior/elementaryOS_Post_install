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

# Clear the Terminal
clear
notify-send  --icon=dialog-error "Attention" "Le mot de passe root vous sera demandé" -t 10000

# Zenity
GUI=$(zenity --list --checklist \
	--height 800 \
	--width 900 \
	--title="Script de Post-Installation elementary OS 5.0 Juno" \
	--text "Sélectionner les applications et les actions à éxécuter." \
	--column=Cochez \
	--column=Titres \
	--column=Description \
	FALSE "Premières actions" "========================================================"  \
	FALSE "Mise à jour du Système" "Mise à jour de la liste des paquets et des applications déjà installées."  \
	FALSE "PPA" "Installation du paquet permettant l'ajout de ppa sur le systèmes."  \
	FALSE "Flathub" "Installation du paquet et dépôt pour l'installation des applications Flatpak"  \
	FALSE "Snap" "Installation du paquet pour l'installation des applications du Snapstore de Canonical"  \
	FALSE "Internet" "========================================================"  \
	FALSE "Google Chrome" "Le navigateur Google." \
	FALSE "Ephemeral" "Le navigateur incognito by Cassidy James Blaede." \
	FALSE "Chromium" "La version opensource de Chrome." \
	FALSE "Firefox" "Le navigateur libre et opensource." \
	FALSE "Vivaldi" "Le nouveau navigateur issue de Opera 12." \
	FALSE "Brave" "Le navigateur orienté sur la confidentialité." \
	FALSE "Min" "Le micro-navigateur propulsé par la technologie Electron." \
	FALSE "Opera" "Le navigateur Opera." \
	FALSE "Iridium browser" "Le navigateur stable et open-source, dégooglisé et sans intrusion dans votre vie privée." \
	FALSE "Microsoft Edge" "Le navigateur open-source, basé sur Chromium et développé par Microsoft ." \
	FALSE "FeedReader" "Installe FeedReader, un aggrégateur de flux opensource." \
	FALSE "Dropbox" "dropbox avec les icones monochromes elementary." \
	FALSE "Nextcloud" "Le cloud opensource et auto-héberger." \
	FALSE "VGrive" " L'application pour le cloud Google Drive et designé pour elementary OS." \
	FALSE "Tootle" " L'application elementary OS pour ce connecter sur Mastodon." \
	FALSE "InSync" " L'application pour le cloud Google Drive et OneDrive." \
	FALSE "Communication" "========================================================"  \
	FALSE "Skype" "Skype, La messagerie instantanée de Microsoft. !! Snap est requis" \
	FALSE "Telegram" "La messagerie instantané sécurisé." \
	FALSE "Slack" "La messagerie instantanée collaborative. !! Snap est requis" \
	FALSE "Polari" "Le client IRC de Gnome." \
	FALSE "Riot" "La version desktop de l'application du web du meme nom pour ce connecter au réseau Matrix.org.  !! flatpak est requis" \
	FALSE "Bureautique" "========================================================"  \
	FALSE "LibreOffice" "La suite bureautique libre." \
	FALSE "OnlyOffice" "Une autre suite bureautique compatible M$ Office." \
	FALSE "BlueMail" "Installe Nylas N1, un superbe client mail. !! Snap est requis" \
	FALSE "Thunderbird" "Installe Nylas N1, un superbe client mail." \
	FALSE "MailSpring" "Installe Nylas N1, un superbe client mail." \
	FALSE "Multimédia" "========================================================"  \
	FALSE "Ubuntu Restricted Extras" "Installation des paquets sous copyrights (mp3, avi, mpeg, TrueType, Java, Flash, Codecs)." \
	FALSE "Extra Multimedia Codecs" "Installation des codecs multimédia additionnels." \
	FALSE "Support DVD encrypté" "Installation du support pour lire les DVDs encryptés." \
	FALSE "VLC" "Installe VLC, le lecteur multimédia." \
	FALSE "Vocal" "Installe vocal, application de podcasts." \
	FALSE "Byte" "Le lecteur audio minimaliste." \
	FALSE "Lollypop" "Installe lollypop, lecteur de musique." \
	FALSE "Harmony" "Installe harmony, lecteur de musique en ligne" \
	FALSE "eRadio" "Installe eradio, l'application de streaming radio." \
	FALSE "Spotify" "Installe Spotify, l'application de service streaming de musique." \
	FALSE "Infographie" "========================================================"  \
	FALSE "Gimp et GMIC" "Installe le logiciel de retouche GIMP et son extension GMIC." \
	FALSE "Inkscape" "Installe le logiciel de vectorisation Inkscape." \
	FALSE "Darktable" "Installe darktable, logiciel de traitement de fichier RAW." \
	FALSE "Akira" "logiciel de traitement de fichier RAW." \
	FALSE "Krita" "logiciel de traitement de fichier RAW." \
	FALSE "Rapid-photo-downloader" "Installe rapid-photo-downloader, logiciel d'importation de photos depuis supports externes." \
	FALSE "Jeux vidéo" "========================================================"  \
	FALSE "Discord" "Installe le client de messagerie pour gamers. !! Flatpak requis" \
	FALSE "Steam" "Installe Steam, la plateforme en ligne de Jeux." \
	FALSE "itch.io" "Installe itch.io, une autre plateforme de jeux." \
	FALSE "GameHub" "Logiciel qui permet d'unifier les différents Store (Steam, GoG, Uplay, ...) et de faire tourner des jeux Windows" \
	FALSE "Lutris" "Logiciel qui permet d'unifier plusieurs store et de faire tourner des jeux Windows" \
	FALSE "Développement" "========================================================"  \
	FALSE "Atom" "Installe Atom, un éditeur de texte du 21ème siècle." \
	FALSE "Sublime Text 3" "Installe Sublime Text 3, un puissant éditeur de texte." \
	FALSE "Utilitaires" "========================================================"  \
	FALSE "Support formats d'archivage" "Installation du support pour formats d'archivage (zip,rar,7z...)." \
	FALSE "eddy" "Outil pour installer les fichiers .deb très facilement et inferface pour eOS" \
	FALSE "Deja Dup" "Installe Deja Dup,  utilitaire pour sauvegarde." \
	FALSE "ADB" "Installe ADB, outil pour téléphones sous Android." \
	FALSE "Time Shift" "Installe timeshift pour les restaurations système." \
	FALSE "Aptik" "Installe aptik pour sauvegardes de paquets, thèmes,icones..." \
	FALSE "udisks-indicator" "Installe udisks-indicator, indicator pour indiquer l'utilisation des disques." \
	FALSE "Torrential" "Le client torrent pour eOS." \
	FALSE "Master PDF Editor" "Éditeur de fichiers PDF." \
	FALSE "clipped" "Gestion de presse-papier." \
	FALSE "Sécurités" "========================================================"  \
	FALSE "ClamTK" "Installe l'antivirus ClamAV et son GUI ClamTK." \
	FALSE "Keepass X" "Installe Keepass X pour le stockage et cryptage de vos mots de passe." \
	FALSE "Customisation" "========================================================"  \
	FALSE "Tweaks" "Installe elementary Tweaks pour avoir plus d'options de configuration." \
	FALSE "Elementary-wallpapers-extra" "Installe les fonds d'écran de Luna." \
	FALSE "elementaryplus" "Installe le thème d'icones indispensable elementary plus." \
	FALSE "Conky-Manager" "Application pour gérer les fichier de conf de conky" \
	FALSE "Système" "========================================================"  \
	FALSE "Accélération de la mémoire" "Installation de preload et de zRAM." \
	FALSE "Memtest86+" "Installation de memtest86+ pour tester la RAM." \
	FALSE "Kernel Xenial BFS/BFQ" "Installe le Kernel Xenial LTS optimisé BFQ/BFS scheduler." \
	FALSE "Driver NVIDIA" "Installe le driver NVIDIA (ppa graphics-drivers) pour GTX 7XX et +." \
	FALSE "Oibaf" "Installe le PPA Oibaf pour les versions git des drivers graphiques libres (xorg-server-nouveau/intel/ati)" \
	FALSE "Mesa" "Installe le PPA Mesa pour les drivers graphiques Mesa." \
	FALSE "TLP" "Installe TLP pour augmenter la durée de vie de la batterie et réduire la surchauffe." \
	FALSE "Optimizer" "Gérer vos ressources système ainsi que le nettoyage." \
	FALSE "Boot Repair" "Installe boot-repair, réparateur de GRUB." \
	FALSE "Neofetch" "Le remplacant de Screenfetch" \
	FALSE "oh-my-zsh" "Installe zsh et oh-my-zsh puis le met en place par défaut à la place de bash" \
	FALSE "Réparer les paquets cassés" "Vas réparer les paquets cassés." \
	FALSE "Nettoyage de prinptemps" "Retire les paquets qui ne sont plus nécessaires." \
	--separator=', ');

############################################################################################################
#
#  Premières actions
#
############################################################################################################

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

# Ajout du paquet pour les PPA
if [[ $GUI == *"PPA"* ]]
then
	clear
	echo "Installation du paquet pour les PPA..."
	echo ""
	notify-send -i system-software-update "elementary OS Post Install" "Installation du paquet pour les PPA" -t 5000
	sudo apt -y install software-properties-common
fi

# Mise en place de Flatpak
if [[ $GUI == *"Flathub"* ]]
then
	clear
	echo "Installation du paquet pour les Flatpak..."
	echo ""
	notify-send -i system-software-update "elementary OS Post Install" "Installation du paquet pour les Flatpak" -t 5000
	sudo add-apt-repository -y ppa:alexlarsson/flatpak
	sudo apt -y install flatpak
	flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
fi

# Ajout du paquet pour les Snap
if [[ $GUI == *"Snap"* ]]
then
	clear
	echo "Installation du paquet pour les Snap..."
	echo ""
	notify-send -i system-software-update "elementary OS Post Install" "Installation du paquet pour les Snap" -t 5000
	sudo apt -y install snapd
fi

############################################################################################################
#
#  INTERNET
#
############################################################################################################

# Installer Google Chrome Action #
if [[ $GUI == *"Google Chrome"* ]]
then
	clear
	echo "Installation de Google Chrome..."
	echo ""
  	notify-send -i web-browser "elementary OS Post Install" "Installation de Google Chrome" -t 5000
	cd /tmp
	sudo sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'
	wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
	sudo apt-get update
	sudo apt-get install google-chrome-stable
fi

# Installer Ephemeral #
if [[ $GUI == *"Ephemeral"* ]]
then
	clear
	echo "Installation de Ephemeral..."
	echo ""
	notify-send -i web-browser "elementary OS Post Install" "Installation de Ephemeral" -t 5000
	sudo apt -y install com.github.cassidyjames.ephemeral
fi


# Installer Chromium #
if [[ $GUI == *"Chromium"* ]]
then
	clear
	echo "Installation de Chromium..."
	echo ""
	notify-send -i web-browser "elementary OS Post Install" "Installation de Chromium" -t 5000
	sudo apt -y install chromium-browser chromium-browser-l10n
fi

# Installer Firefox #
if [[ $GUI == *"Firefox"* ]]
then
	clear
	echo "Installation de Firefox..."
	echo ""
	notify-send -i web-browser "elementary OS Post Install" "Installation de Firefox" -t 5000
	sudo apt -y install firefox firefox-locale-fr
fi

# Installer Vivaldi #
if [[ $GUI == *"Vivaldi"* ]]
then
	clear
	echo "Installation de Vivaldi..."
	echo ""
	notify-send -i web-browser "elementary OS Post Install" "Installation de Vivaldi" -t 5000
	sudo sh -c 'echo "deb http://repo.vivaldi.com/stable/deb/ stable main" > /etc/apt/sources.list.d/vivaldi_browser.list'
	wget -q -O - https://repo.vivaldi.com/stable/linux_signing_key.pub | sudo apt-key add -
	sudo apt -y update
	sudo apt -y install vivaldi-stable
fi

# Installer Brave #
if [[ $GUI == *"Brave"* ]]
then
	clear
	echo "Installation de Brave..."
	echo ""
	notify-send -i web-browser "elementary OS Post Install" "Installation de Brave" -t 5000
	sudo apt -y install apt-transport-https curl
	curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
	source /etc/os-release
	echo "deb https://brave-browser-apt-release.s3.brave.com/ bionic main" | sudo tee /etc/apt/sources.list.d/brave-browser.list
	sudo apt -y update
	sudo apt -y install brave-browser
fi

# Installer Min #
if [[ $GUI == *"Min"* ]]
then
	clear
	echo "Installation de Min..."
	notify-send -i web-browser "elementary OS Post Install" "Installation de Min" -t 5000
	cd /tmp
	wget https://github.com/minbrowser/min/releases/download/v1.11.1/min_1.11.1_amd64.deb
	sudo dpkg -i min_1.11.1_amd64.deb
fi

# Installer Opera #
if [[ $GUI == *"Opera"* ]]
then
	clear
	echo "Installation de Opera..."
	notify-send -i web-browser "elementary OS Post Install" "Installation de Opera" -t 5000
	sudo sh -c 'deb https://deb.opera.com/opera-stable/ stable non-free" > /etc/apt/sources.list.d/opera_browser.list'
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys A5C7FF72
	sudo apt-get update
	sudo apt install -y opera-stable
fi

# Installer Iridium browser #
if [[ $GUI == *"Iridium browser"* ]]
then
	clear
	echo "Installation de Iridium browser..."
	notify-send -i web-browser "elementary OS Post Install" "Installation de Iridium browser" -t 5000
	cd /tmp
	wget -qO - https://downloads.iridiumbrowser.de/ubuntu/iridium-release-sign-01.pub|sudo apt-key add -
	sudo sh -c 'deb https://downloads.iridiumbrowser.de/deb/ stable main" > /etc/apt/sources.list.d/iridium_browser.list'
	sudo apt-get update
	sudo apt install -y iridium-browser
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

# Installer InSync
if [[ $GUI == *"InSync"* ]]
then
	clear
	echo "Installation de InSync..."
	echo ""
	notify-send -i applications-internet "elementary OS Post Install" "Installation de InSync" -t 5000
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys ACCAF35C
	echo 'deb http://apt.insync.io/ubuntu bionic non-free contrib' > /etc/apt/sources.list.d/insync.list
	sudo apt update
	sudo apt -y install insync
fi

# Installer Nextcloud #
if [[ $GUI == *"Nextcloud"* ]]
then
	clear
	echo "Installation de Nextcloud ..."
	echo ""
	notify-send -i applications-internet  "elementary OS Post Install" "Installation de Nextcloud " -t 5000
	sudo add-apt-repository -y ppa:nextcloud-devs/client
	sudo apt update
    sudo apt -y install nextcloud-client
fi

# Installer Google Drive #
if [[ $GUI == *"VGrive"* ]]
then
	clear
	echo "Installation de VGrive ..."
	echo ""
	notify-send -i applications-internet  "elementary OS Post Install" "Installation de VGrive " -t 5000
    sudo apt -y install com.github.bcedu.vgrive
fi


# Installer tootle #
if [[ $GUI == *"Tootle"* ]]
then
	clear
	echo "Installation de Tootle ..."
	echo ""
	notify-send -i applications-internet  "elementary OS Post Install" "Installation de Tootle " -t 5000
    sudo apt -y install com.github.bleakgrey.tootle
fi

##################
#
# COMMUNICATION
#
##################

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
	notify-send -i applications-chat "elementary OS Post Install" "Installation de Slack" -t 5000
	sudo snap install slack

fi

# Installer Skype
if [[ $GUI == *"Skype"* ]]
then
	clear
	echo "Installation de Skype..."
	echo ""
	notify-send -i applications-chat "elementary OS Post Install" "Installation de Skype" -t 5000
	sudo snap install skype --classic

fi

# Installer Polari
if [[ $GUI == *"Polari"* ]]
then
	clear
	echo "Installation de Polari..."
	echo ""
	sudo apt -y install polari
fi

# Installer Riot
if [[ $GUI == *"Riot"* ]]
then
	clear
	echo "Installation de Riot..."
	echo ""
	flatpak install flathub im.riot.Riot -y
fi

##################
#
# BUREAUTIQUE
#
##################

# Installer LibreOffice
if [[ $GUI == *"LibreOffice"* ]]
then
	clear
	echo "Installation de LibreOffice..."
	echo ""
	notify-send -i applications-office "elementary OS Post Install" "Installation de Libreoffice" -t 5000
	sudo add-apt-repository -y ppa:libreoffice/ppa
	sudo apt -y update
	sudo apt -y install libreoffice libreoffice-l10n-fr
fi

# Installer OnlyOffice
if [[ $GUI == *"OnlyOffice"* ]]
then
	clear
	echo "Installation de OnlyOffice..."
	echo ""
	notify-send -i applications-office "elementary OS Post Install" "Installation de OnlyOffice" -t 5000
	sudo snap install onlyoffice-desktopeditors
fi

# Installer BlueMail
if [[ $GUI == *"BlueMail"* ]]
then
	clear
	echo "Installation de BlueMail..."
	echo ""
	notify-send -i applications-office "elementary OS Post Install" "Installation de BlueMail" -t 5000
	sudo snap install bluemail
fi

# Installer Thunderbird
if [[ $GUI == *"Thunderbird"* ]]
then
	clear
	echo "Installation de Thunderbird..."
	echo ""
	notify-send -i applications-office "elementary OS Post Install" "Installation de Thunderbird" -t 5000
	sudo apt -y install thunderbird thunderbird-locale-fr
fi

# Installer Mailspring
if [[ $GUI == *"Mailspring"* ]]
then
	clear
	echo "Installation de Mailspring..."
	echo ""
	notify-send -i internet-mail "elementary OS Post Install" "Installation de Mailspring" -t 5000
	sudo snap install mailspring
fi

##################
#
#  MULTIMEDIA
#
##################
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

# Installer Byte
if [[ $GUI == *"Byte"* ]]
then
	clear
	echo "Installation de Byte..."
	echo ""
	notify-send -i multimedia-audio-player "elementary OS Post Install" "Installation de Byte" -t 5000
	sudo apt -y install com.github.alainm23.byte
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

##################
#
#  INFOGRAPHIE
#
##################

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

# Installer Krita
if [[ $GUI == *"Krita"* ]]
then
	clear
	echo "Installation de Krita..."
	echo ""
	notify-send -i applications-graphics "elementary OS Post Install" "Installation de Krita" -t 5000
    sudo add-apt-repository -y ppa:kritalime/ppa
    sudo apt -y update
    sudo apt -y install krita
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


##################
#
#  JEUX
#
##################

# Installer steam
if [[ $GUI == *"Steam"* ]]
then
	clear
	echo "Installation de steam..."
	echo ""
	notify-send -i applications-arcade "elementary OS Post Install" "Installation de Steam" -t 5000
	sudo apt -y install steam
fi

# Installer Lutris
if [[ $GUI == *"Lutris"* ]]
then
	clear
	echo "Installation de Lutris..."
	echo ""
	notify-send -i applications-arcade "elementary OS Post Install" "Installation de Lutris" -t 5000
	sudo add-apt-repository ppa:lutris-team/lutris -y
	sudo apt -y update
	sudo apt -y install lutris
fi

# Installer GameHub
if [[ $GUI == *"GameHub"* ]]
then
	clear
	echo "Installation de GameHub..."
	echo ""
	notify-send -i applications-arcade "elementary OS Post Install" "Installation de GameHub" -t 5000
	sudo add-apt-repository ppa:tkashkin/gamehub -y
	sudo apt -y update
	sudo apt -y install com.github.tkashkin.gamehub
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



# Installer Discord
if [[ $GUI == *"Discord"* ]]
then
	clear
	echo "Installation de Discord..."
	echo ""
	notify-send -i applications-chat "elementary OS Post Install" "Installation de Discord" -t 5000
	flatpak install flathub com.discordapp.Discord -y
fi

##################
#
#  DEV
#
##################

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

##################
#
#  UTILITAIRES
#
##################



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

# Install Torrential
if [[ $GUI == *"Torrential"* ]]
then
	clear
	echo "Installing Torrential..."
	echo ""
	notify-send -i applications-filesharing "elementary OS Post Install" "Installation de Torrential" -t 5000
	sudo apt -y install com.github.davidmhewitt.torrential
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

# Installer eddy
if [[ $GUI == *"eddy"* ]]
then
	clear
	echo "Installation de eddy..."
	echo ""
	notify-send -i package "elementary OS Post Install" "Installation de eddy" -t 5000
	sudo apt -y install com.github.donadigo.eddy
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

# Installer clipped
if [[ $GUI == *"clipped"* ]]
then
	clear
	echo "Installation de clipped..."
	echo ""
	notify-send -i edit-find "elementary OS Post Install" "Installation de clipped'" -t 5000
	sudo apt -y install com.github.davidmhewitt.clipped
fi

##################
#
#  SECURITE
#
##################

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


##################
#
#  CUSTOMISATION
#
##################


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

##################
#
#  SYSTEME
#
##################



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



# Installer Optimizer
if [[ $GUI == *"Optimizer"* ]]
then
	clear
	echo "Installation de Optimizer..."
	echo ""
	notify-send -i applications-system "elementary OS Post Install" "Installation de Optimizer'" -t 5000
	sudo apt -y install com.github.hannesschulze.optimizer
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
# Installer le driver NVIDIA
if [[ $GUI == *"Driver NVIDIA"* ]]
then
	clear
	echo "Installation du driver NVIDIA..."
	echo ""
	notify-send -i display "elementary OS Post Install" "Installation du driver NVIDIA" -t 5000
	sudo add-apt-repository -y ppa:graphics-drivers/ppa
	sudo apt -y update
	sudo apt -y install nvidia-settings nvidia-384 software-properties-gtk
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

# Mesa
if [[ $GUI == *"Mesa"* ]]
then
	clear
	echo "Installation de Mesa..."
	echo ""
	notify-send -i display "elementary OS Post Install" "Installation des derniers drivers graphiques Mesa" -t 5000
	sudo add-apt-repository ppa:ubuntu-x-swat/updates
	sudo apt -y update
	echo "Pensez à rebooter..."
	echo ""
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

########################
#
# ACTIONS DE FIN DE SCRIPT
#
########################
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

# Notification
clear
notify-send -i dialog-ok "Et voilà !" "Toutes les tâches ont été effectuées avec succès!" -t 5000
