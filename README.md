# First to Ubuntu 20.04
```bash
sudo apt-get update && sudo apt-get dist-upgrade
sudo apt install ubuntu-restricted-extras
sudo apt install rar unrar p7zip-full p7zip-rar
sudo apt install curl -y
```

# Install Common tools
```bash
sudo snap install vlc
sudo snap install chromium
sudo snap install code --classic
sudo snap install webstorm --classic
sudo snap install intellij-idea-community --classic


# sudo snap remove webstorm
```

# Install NVM
```bash
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.profile
source ~/.bashrc

nvm list
nvm ls-remote
nvm install node
nvm install 14.18.1

```

# Install Google Chrome
```bash
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
```

# Software for developement
```bash

sudo snap install postman
sudo snap install kdevelop
sudo snap install beekeeper-studio
sudo snap install phpstorm --classic
sudo snap install pycharm-community --classic
sudo snap install pycharm-professional --classic
sudo snap install intellij-idea-ultimate --classic


sudo snap install openjdk
sudo snap install deno
sudo snap install node --classic

sudo snap install dbgate
sudo snap install postbird
sudo snap install squirrelsql

```

https://snapcraft.io/pycharm-community
https://www.tecmint.com/things-to-do-after-installing-ubuntu-20-04/
https://www.tecmint.com/linux-web-browsers/
https://tecadmin.net/how-to-install-nvm-on-ubuntu-20-04/

