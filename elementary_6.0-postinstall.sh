
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
