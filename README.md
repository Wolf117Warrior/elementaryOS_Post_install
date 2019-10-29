# /!\ Attention le script n'est pas encore fonctionnel. /!\

# Script Post Installation pour elementary OS 5.0 Juno

Ce script a pour but de rendre facile l'installation d'applications tierces juste après une installation
d'elementary OS 5.0 Juno.

![Screenshot](screenshots.png)

## Utilisation

Prérequis

```bash
sudo apt -y install software-properties-common python-software-properties
```

Copier cette ligne dans un terminal

```bash
wget -O /tmp/elementary_loki-postinstall.sh https://raw.githubusercontent.com/Devil505/elementaryos-postinstall/master/elementary_loki-postinstall.sh && chmod +x /tmp/elementary_loki-postinstall.sh && /tmp/elementary_loki-postinstall.sh
```

## Source
Script largement inspiré par celui ci:
https://github.com/ylrxeidx/elementary-script
https://github.com/btd1337/elementary-script
https://github.com/Devil505/elementaryos-postinstall
