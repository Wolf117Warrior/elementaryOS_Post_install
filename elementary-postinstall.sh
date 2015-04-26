#
#
# TODO
# rajout du dépot communautaire elementaryos-fr
#
# darktable, suite photo
#
#
#


# Clear the Terminal
clear

# Zenity
GUI=$(zenity --list --checklist \
	--height 400 \
	--width 900 \
	--title="Script Post-Installation elementary OS 0.3 Freya" \
	--text "Sélectionner ou plusieurs actions à éxécuter." \
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


	FALSE "Réparer les paquets cassés" "Vas réparer les paquets cassés." \
	FALSE "Nettoyage de primptemps" "Retire les paquets qui ne sont plus nécéssaires." \
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
	sudo apt-get -y install ubuntu-restricted-extras
fi

# Installer Extra Multimedia Codecs
if [[ $GUI == *"Installer Extra Multimedia Codecs"* ]]
then
	clear
	echo "Installation des Extra Multimedia Codecs..."
	echo ""
	sudo apt-get -y install libavcodec-extra-53
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
	sudo apt-get -y install zip unzip p7zip p7zip-rar rar unrar
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
	if [[ $(uname -m) == "i686" ]]
	then
		wget -O /tmp/google-chrome-stable_current_i386.deb https://dl.google.com/linux/direct/google-chrome-stable_current_i386.deb
		sudo dpkg -i /tmp/google-chrome-stable_current_i386.deb
	elif [[ $(uname -m) == "x86_64" ]]
	then
		wget -O /tmp/google-chrome-stable_current_amd64.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
		sudo dpkg -i /tmp/google-chrome-stable_current_amd64.deb
	fi
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

# Notification
clear
notify-send -i utilities-terminal elementary-script "Toutes les tâches ont été effactuées avec succès!"
